package study.spring.wellcom.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.wellcom.model.Product;
import study.spring.wellcom.service.ProductService;

/** bbs_board 데이터 관리 기능을 제공하기 위한 Service 계층에 대한 구현체 */
@Slf4j
@Service
public class ProductServiceImpl implements ProductService {

	/** MyBatis 세션 객체 주입 설정 */
	@Autowired
	SqlSession sqlSession;

	/**
	 * 상품 상세 조회
	 * 
	 * @param Product 조회할 상품의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	// 단일 항목 조회
	@Override
	public Product getProductItem(Product input) throws Exception {
		Product result = null;

		try {
			result = sqlSession.selectOne("ProductMapper.selectItem", input);
			sqlSession.selectOne("ProductMapper.viewCountIncrease", input);
			if (result == null) {
				throw new NullPointerException("result = null");
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

	// 상품 리뷰 목록 조회
	@Override
	public List<Product> getProductReview(Product input) throws Exception {
		List<Product> result = null;

		try {
			result = sqlSession.selectList("ProductMapper.selectReview", input);

			if (result == null) {
				throw new NullPointerException("result = null");
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

	// 상품 추가(관리자만)
	@Override
	public int addProduct(Product input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	// 상품 삭제(관리자만 // 사용여부 Y, N 로 구분하여 데이터 삭제는 하지 않고, 비활성화시키는 방향으로진행)
	@Override
	public int deleteProduct(Product input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	// 상품 수정(관리자만)
	@Override
	public int editProduct(Product input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	// checkbox 상태에따라 상품리스트를 가져오기위한 구현체
	@Override
	public List<Product> getProductList(Map<String, Object> item) throws Exception {
		List<Product> result = null;

		try {
			result = sqlSession.selectList("ProductMapper.selectIn", item);

			if (result == null) {
				throw new NullPointerException("result = null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			System.out.println(e.getMessage());
			e.printStackTrace();
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	// 체크박스 상태유지를 위한 구현체
	@Override
	public List<Product> getProductChecked(Map<String, Object> item) throws Exception {
		List<Product> result = null;
		
		try {
			result = sqlSession.selectList("ProductMapper.selectBox", item);

			if (result == null) {
				throw new NullPointerException("result = null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			System.out.println(e.getMessage());
			e.printStackTrace();
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}
	
	// 사이드바 접근을 위한 구현체
	@Override
	public List<Product> getProductList(Product input) throws Exception {
		List<Product> result = null;

		try {
			result = sqlSession.selectList("ProductMapper.selectCategory", input);

			if (result == null) {
				throw new NullPointerException("result = null");
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

	// 조립 상품에 대한 정보 조회
	@Override
	public List<Product> getProductAssemble(Product input) throws Exception{
		List<Product> result = null;

		try {
			result = sqlSession.selectList("ProductMapper.selectItemAssemble", input);
			sqlSession.selectOne("ProductMapper.viewCountIncrease", input);
			if (result == null) {
				throw new NullPointerException("result = null");
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
	// index 페이지 노출상품 출력을 위한 정보조회
	@Override
	public int getProductItemCount(Product input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.selectOne("ProductMapper.selectPopular", input);
			
		} catch (NullPointerException e) {
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}
}
