package study.spring.wellcom.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import lombok.extern.slf4j.Slf4j;
import study.spring.wellcom.helper.PageData;
import study.spring.wellcom.helper.RegexHelper;
import study.spring.wellcom.helper.WebHelper;
import study.spring.wellcom.model.Bbs_board;
import study.spring.wellcom.model.Members;
import study.spring.wellcom.model.UploadItem;
import study.spring.wellcom.service.Bbs_boardService;

@Slf4j
@Controller
public class boardController {
	/** Service 패턴 구현체 주입 */
	@Autowired
	Bbs_boardService bbs_boardService;
	
	/** WebHelper 주입 */
	@Autowired
	WebHelper webHelper;

	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;

	/** 목록 페이지 */
	@RequestMapping(value = "/jsp/board_list.do", method = RequestMethod.GET)
	public String board_list(Model model, HttpServletResponse response, 
			@RequestParam(value = "type") int type,
			/* @RequestParam(value = "user_name") String user_name, */
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage,
			@RequestParam(value = "keyword", required=false) String keyword) {

		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int pageCount = 5; // 한 그룹당 표시할 페이지 번호
		

		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		Bbs_board input = new Bbs_board();
		input.setHead(keyword);
		input.setContent(keyword);
		/* input.setType(type); */

		List<Bbs_board> output = null; // 조회 결과가 저장될 객체
		PageData pageData = null; // 페이지 번호를 계산한 결과가 저장될 객체

		try {
			// 타입별 게시글 수 조회
			if(type == 1) {
			totalCount = bbs_boardService.getBbs_boardCountType1(input);
			} else if(type == 2) {
			totalCount = bbs_boardService.getBbs_boardCountType2(input);
			} else if(type == 3) {
			totalCount = bbs_boardService.getBbs_boardCountType3(input);
			} else if(type == 4) {
			totalCount = bbs_boardService.getBbs_boardCountType4(input);
			} else if(type == 5) {
			totalCount = bbs_boardService.getBbs_boardCountType5(input);
			}
			// 페이지 번호 계산 --> 계산 결과는 로그로 출력된다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);

			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			Bbs_board.setOffset(pageData.getOffset());
			Bbs_board.setListCount(pageData.getListCount());

			// 데이터 조회하기
			if(type == 1) {
				output = bbs_boardService.getBbs_boardList1(input);
			} else if(type == 2) {
				output = bbs_boardService.getBbs_boardList2(input);
			} else if(type == 3) {
				output = bbs_boardService.getBbs_boardList3(input);
			} else if(type == 4) {
				output = bbs_boardService.getBbs_boardList4(input);
			} else if(type == 5) {
				output = bbs_boardService.getBbs_boardList5(input);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// View 처리
		model.addAttribute("output", output);
		model.addAttribute("type", type);
		/* model.addAttribute("user_name",user_name); */
		model.addAttribute("keyword",keyword);
		model.addAttribute("pageData", pageData);
		
		return "jsp/board_list";
	}

	/** 작성 폼 페이지 */
	@RequestMapping(value = "/jsp/board_write.do", method = RequestMethod.GET)
	public String board_write(Model model, HttpServletResponse response, @RequestParam(value = "type") int type) {
		model.addAttribute("type", type);

		return "jsp/board_write";
	}

	/**
	 * 작성 폼에 대한 action 페이지
	 * 
	 * @return
	 */
	@RequestMapping(value = "/jsp/board_write_ok.do", method = RequestMethod.POST)
	public void board_write_ok(Model model, HttpServletResponse response, @RequestParam(value = "head") String head,
			@RequestParam(value = "content") String content, @RequestParam(value = "type") int type,
			@RequestParam(required=false) MultipartFile photo) {
		
		/**1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		try {
			item = webHelper.saveMultipartFile(photo);
		} catch (NullPointerException e) {
			e.printStackTrace();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	
		
		// 저장할 값들을 Beans에 담는다.
		Bbs_board input = new Bbs_board();

		input.setHead(head);
		input.setContent(content);
		input.setType(type);

		try {
			// 데이터 저장 --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK 값이 저장된다.
			bbs_boardService.addBbs_board(input);
		} catch (Exception e) {
			e.printStackTrace();
		}

		/* return "jsp/board_read.do?bbs_board_id=" + input.getBbs_board_id(); */

		// 저장 결과를 확인하기 위해서 데이터 저장시 생성된 PK 값을 상세 페이지로 전달해야 한다.
		model.addAttribute("item",item);
		String redirectUrl = contextPath + "/jsp/board_read.do?bbs_board_id=" + input.getBbs_board_id();

		try {
			response.sendRedirect(redirectUrl);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	/** 상세 페이지 */
	@RequestMapping(value = "/jsp/board_read.do", method = RequestMethod.GET)
	public ModelAndView board_read(Model model, HttpServletResponse response,
			@RequestParam(value = "bbs_board_id") int bbs_board_id,
			@RequestParam(required=false) MultipartFile photo) {
		
		/**1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		try {
			item = webHelper.saveMultipartFile(photo);
		} catch (NullPointerException e) {
			e.printStackTrace();
			
		} catch(Exception e) {
			e.printStackTrace();
		}

		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		Bbs_board input = new Bbs_board();
		input.setBbs_board_id(bbs_board_id);
		try {
			bbs_boardService.getBbs_boardHitCnt(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 조회 결과를 저장할 객체 선언
		Bbs_board output = null;
		
		try {
			// 데이터 조회
			output = bbs_boardService.getBbs_boardItem(input);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		// View 처리
		model.addAttribute("output", output);
		model.addAttribute("item",item);

		return new ModelAndView("jsp/board_read");
	}

	/** 삭제 처리 구현 */
	@RequestMapping(value = "/jsp/board_delete_ok.do", method = RequestMethod.GET)
	public void board_delete_ok(Model model, HttpServletResponse response,
			@RequestParam(value = "bbs_board_id") int bbs_board_id, @RequestParam(value = "type") int type) {

		// 데이터 삭제에 필요한 조건값을 Beans에 저장하기
		Bbs_board input = new Bbs_board();
		input.setBbs_board_id(bbs_board_id);
		input.setType(type);
		int outType = input.getType();
		try {
			// 데이터 삭제
			bbs_boardService.deleteBbs_board(input);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 확인할 대상이 삭제된 상태이므로 목록 페이지로 이동
		String redirectUrl = contextPath + "/jsp/board_list.do?&type=" + outType;
		try {
			response.sendRedirect(redirectUrl);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/** 수정 폼 페이지 */
	@RequestMapping(value = "/jsp/board_edit.do", method = RequestMethod.GET)
	public String board_edit(Model model, HttpServletResponse response,
			@RequestParam(value = "bbs_board_id") int bbs_board_id,
			@RequestParam(value = "type") int type) {

		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		Bbs_board input = new Bbs_board();
		input.setBbs_board_id(bbs_board_id);

		// 수정할 데이터의 원본 조회하기
		Bbs_board output = null;

		try {
			output = bbs_boardService.getBbs_boardItem(input);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// View 처리
		model.addAttribute("output", output);
		model.addAttribute("type", type);

		return "jsp/board_edit";
	}

	/** 수정 폼에 대한 action 페이지 */
	@RequestMapping(value = "/jsp/board_edit_ok.do", method = RequestMethod.POST)
	public void board_edit_ok(Model model, HttpServletResponse response,
			@RequestParam(value = "bbs_board_id") int bbs_board_id, @RequestParam(value = "head") String head,
			@RequestParam(value = "content") String content) {

		// 수정할 값들을 Beans에 담는다.
		Bbs_board input = new Bbs_board();
		input.setBbs_board_id(bbs_board_id);
		input.setHead(head);
		input.setContent(content);

		try {
			// 데이터 수정
			bbs_boardService.editBbs_board(input);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 수정한 대상을 상세페이지에 알려주기 위해서 PK 값을 전달해야 한다.
		String redirectUrl = contextPath + "/jsp/board_read.do?&bbs_board_id=" + input.getBbs_board_id();
		try {
			response.sendRedirect(redirectUrl);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/** 게시판 상위 커뮤니티 구현 */
	@RequestMapping(value = "/jsp/board.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String board(Model model, HttpServletRequest request, HttpServletResponse response) {

		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		// Bbs_board input = new Bbs_board();
		// input.setType(type);

		// 조회 결과가 저장될 객체
		List<Bbs_board> output1 = null;
		List<Bbs_board> output2 = null;
		List<Bbs_board> output3 = null;
		List<Bbs_board> output4 = null;
		List<Bbs_board> output5 = null;

		try {
			// 데이터 조회하기
			output1 = bbs_boardService.getBbs_boardList1(null);
			output2 = bbs_boardService.getBbs_boardList2(null);
			output3 = bbs_boardService.getBbs_boardList3(null);
			output4 = bbs_boardService.getBbs_boardList4(null);
			output5 = bbs_boardService.getBbs_boardList5(null);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// View 처리
		model.addAttribute("output1", output1);
		model.addAttribute("output2", output2);
		model.addAttribute("output3", output3);
		model.addAttribute("output4", output4);
		model.addAttribute("output5", output5);
		/* model.addAttribute("type", type); */

		return "jsp/board";
	}

}
