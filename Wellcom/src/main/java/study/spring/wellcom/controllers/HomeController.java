package study.spring.wellcom.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import study.spring.wellcom.helper.PageData;
import study.spring.wellcom.model.Bbs_board;
import study.spring.wellcom.model.Product;
import study.spring.wellcom.service.ProductService;

/**
 * Handles requests for the application home page.
 */

@Slf4j
@Controller
public class HomeController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = { "/", "/index.do" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String home(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "page", defaultValue = "0") int nowPage) {
		log.debug("Locale: " + locale.getLanguage()); // 언어코드 (ko)
		log.debug("Locale: " + locale.getCountry()); // 국가코드 (KO)
		log.debug("Locale: " + locale.getDisplayLanguage()); // 언어이름 (한국어)
		log.debug("Locale: " + locale.getDisplayCountry()); // 국가이름 (대한민국)

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		
		/** 페이지 구현에 필요한 변수값 생성 */
		// 전체 상품 수
		int totalCount = 0;
		// 단품 상품 한번에 보여질 노출 될 갯수
		int listCount = 9;
		// 선택에 보여질 그룹갯수(노출하지 않으므로 1로 지정)
		int groupCount = 1;
		// 조립상품 정보를 담을 객체
		List<Product> setItem = null;
		// 단품상품 정보를 담을 객체
		List<Product> item = null;
		// 출력 요소를 제어하기위한 객체
		PageData pageData = null;
		Product input = new Product();
		try {
			// 전체 상품의 수 조회
			totalCount = productService.getProductItemCount(null);
			// 출력갯수 구분 계산
			pageData = new PageData(nowPage, totalCount, listCount, groupCount);
			// 목록 출력갯수 정의를 static 변수에 할당
			Product.setOffset(pageData.getOffset());
			Product.setListCount(pageData.getListCount());
			
			item = productService.getProductList(input);
			
			System.out.println(item);
			System.out.println(pageData);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("pageData", pageData);
		model.addAttribute("item", item);
		return "index";
	}

	
	/*
	 * @RequestMapping(value = "/inc/head.do", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String head(Model model, HttpServletRequest
	 * request, HttpServletResponse response, Locale locale) { return "/inc/head"; }
	 * 
	 * @RequestMapping(value = "/inc/header.do", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String header(Model model, HttpServletRequest
	 * request, HttpServletResponse response, Locale locale) { return "/inc/header";
	 * }
	 * 
	 * @RequestMapping(value = "/inc/footer.do", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String footer(Model model, HttpServletRequest
	 * request, HttpServletResponse response, Locale locale) { return "/inc/footer";
	 * }
	 */
}
