package study.spring.wellcom.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.wellcom.model.Cart;
import study.spring.wellcom.service.CartService;

@Slf4j
@Service
public class CartServiceImpl implements CartService {

	/** MYBatis 세션 객체 주입 설정 */
	@Autowired
	SqlSession sqlSession;

	// 01. 장바구니 목록
	@Override
	public List<Cart> listCart(int userId) throws Exception {
		List<Cart> result = null;
		try {
			result = sqlSession.selectList("CartMapper.listCart", userId);

			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}

		return result;
	}

	// 03. 상품추가
	@Override
	public int addCart(Cart cart) throws Exception {
		int result = 0;
		try {
			Cart option = cart;
			sqlSession.insert("CartMapper.insertOption", option);
			cart.setUser_select_id(option.getUser_select_id());
			result = sqlSession.insert("CartMapper.insertItem", cart);
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		return result;
	}

	// 05. 상품삭제
	@Override
	public int deleteCart(Cart cart) throws Exception {
		int result = 0;
		try {
			result = sqlSession.delete("CartMapper.deleteItem", cart.getCart_id());
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("삭제된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());

			throw new Exception("데이터 삭제에 실패했습니다.");
		}
		return result;
	}

}
