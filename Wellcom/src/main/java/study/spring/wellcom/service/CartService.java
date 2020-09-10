package study.spring.wellcom.service;

import java.util.List;

import study.spring.wellcom.model.Cart;

public interface CartService {

	// 01. 장바구니 목록
	public List<Cart> listCart(int userId) throws Exception;

	// 03. 상품추가
	public int addCart(Cart cart) throws Exception;

	// 05. 상품삭제
	public int deleteCart(Cart cart) throws Exception;

}
