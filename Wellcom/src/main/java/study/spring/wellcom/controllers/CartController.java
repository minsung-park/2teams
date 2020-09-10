package study.spring.wellcom.controllers;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;
import study.spring.wellcom.model.Cart;
import study.spring.wellcom.service.CartService;

@Slf4j
@Controller
public class CartController {

	/** Service 패턴 구현체 주입 */
	@Autowired
	CartService cartService;

	@Autowired
	SqlSession sqlSession;

	@RequestMapping(value = "/jsp/cart.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String cart(Model model, HttpServletResponse response, @RequestParam(value = "members_id") int members_id) {
		// 조회 결과를 저장할 객체 선언
		List<Cart> output = null;

		try {
			// 데이터 조회
			output = cartService.listCart(members_id);

		} catch (Exception e) {
			e.printStackTrace();
		}

		// View 처리
		model.addAttribute("output", output);

		return "/jsp/cart";
	}

	@RequestMapping(value = "/jsp/addCart.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void addCart(Model model, HttpSession session, HttpServletResponse response,
			@RequestParam(value = "product_id") int product_id,
			@RequestParam(value = "user_select_id") int userselect_id,
			@RequestParam(value = "product_amount") int product_amount) {
		// 저장할 값들을 Beans에 담는다.
		int members_id = (int) session.getAttribute("members_id");

		Cart input = new Cart();
		input.setMembers_id(members_id);
		input.setProduct_id(product_id);
		input.setProduct_amount(product_amount);

		try {
			// 데이터 저장 --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			cartService.addCart(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 저장 결과를 확인하기 위해서 데이터 저장시 생성된 PK값을 상세 페이지로 전달해야 한다.

		/*
		 * String redirectUrl = contextPath + "/cart/detail.do?deptno=" +
		 * input.getDeptno();
		 * 
		 * try { response.sendRedirect(redirectUrl); } catch (Exception e) {
		 * e.printStackTrace(); }
		 */
	}

	/** 삭제 처리 구현 */
	@RequestMapping(value = "/jsp/deleteCart.do", method = RequestMethod.GET)
	public String deleteOk(Model model, HttpSession session, HttpServletResponse response,
			@RequestParam(value = "cart_id") int[] delCartId) {

		// 데이터 삭제에 필요한 조건값을 Beans에 저장하기

		Cart input = new Cart();
		for (int cart_id : delCartId) {
			input.setCart_id(cart_id);

			try {
				// 데이터 삭제
				cartService.deleteCart(input);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		/*
		 * // 확인할 대상이 삭제된 상태이므로 목록 페이지로 이동 try { response.sendRedirect(contextPath +
		 * "/department/list.do"); } catch (IOException e) { e.printStackTrace(); }
		 */
		return "redirect:/jsp/cart";
	}

	@RequestMapping(value = "/jsp/payment.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String payment(Model model, HttpSession session, HttpServletRequest request,
			HttpServletResponse response/*
										 * ,
										 * 
										 * @RequestParam(value = "cart_id") int[] cart_id
										 */) {

		return "/jsp/payment";
	}

	@RequestMapping(value = "/jsp/optionPop.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String optionPop(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "cart_id") List<String> cart_id) {

		return "/jsp/optionPop";
	}

	@RequestMapping(value = "/jsp/delivery_address.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String delivery_address(Model model, HttpSession session, HttpServletRequest request,
			HttpServletResponse response, Locale locale) {
		return "/jsp/delivery_address";
	}
}
