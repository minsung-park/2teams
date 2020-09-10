package study.spring.wellcom.controllers;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import study.spring.wellcom.model.Bbs_board;
import study.spring.wellcom.service.MypageService;

@Slf4j
@Controller
public class MypageController {
	/** Service 패턴 구현체 주입 */
	@Autowired
	MypageService mypageService;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value = "/jsp/account.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String account(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/account";
	}
	
	@RequestMapping(value = "/jsp/user_order.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String user_order(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/user_order";
	}
	
	@RequestMapping(value = "/jsp/user_order2.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String user_order2(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		// 
		return "/jsp/user_order2";
	}
	
	@RequestMapping(value = "/jsp/user_info.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String user_info(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/user_info";
	}
	
	@RequestMapping(value = "/jsp/user_wallet.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String user_wallet(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/user_wallet";
	}
	
	@RequestMapping(value = "/jsp/user_wallet_manage.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String user_wallet_manage(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/user_wallet_manage";
	}
	
	@RequestMapping(value = "/jsp/user_wallet_none.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String user_wallet_none(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/user_wallet_none";
	}

	//등록을 눌렀을때 주소를 받아서 처리를 해줘야함

		
	@RequestMapping(value = "/jsp/review.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String review(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/review";
	}
		
	@RequestMapping(value = "/jsp/customer_service.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String customer_service(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/customer_service";
	}
	
	@RequestMapping(value = "/jsp/customer_service_read.do", method = { RequestMethod.GET})
	public String customer_service_read(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) throws Exception {
		// todo 
		System.out.println("customer_service_read.do : ");
		Bbs_board input = new Bbs_board();
		List<Bbs_board> list = mypageService.getBbs_boardList(input);
		model.addAttribute("list", list);
		
		return "/jsp/customer_service_read";
	}
		
	@RequestMapping(value = "/jsp/customer_service_write.do", method = { RequestMethod.GET})
	public String customer_service_write(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/customer_service_write";
	}
		
	@RequestMapping(value = "/jsp/customer_service_write.do", method = { RequestMethod.POST })
	public String customer_service_write(Model model, HttpServletRequest request, HttpServletResponse response,
	@RequestParam(value = "head") String head, @RequestParam(value = "content") String content
) {
		System.out.println("this ");
		System.out.println("head" + head + "content" + content);
		
		
		Bbs_board csBoard = new Bbs_board();
		
		csBoard.setHead(head);
		csBoard.setContent(content);
		try {
			// 데이터 저장 --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK 값이 저장된다.
			mypageService.addBbs_board(csBoard);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/jsp/customer_service_write";
	}
	
}