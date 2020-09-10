package study.spring.wellcom.service;

import java.util.List;
import java.util.Map;

import study.spring.wellcom.model.Product;

/** product 데이터 관리 기능을 제공하기 위한 Service 계층 */
public interface ProductService {
	/**
	 * product 단일 데이터 조회
	 * @param product 조회활 게시판의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	public Product getProductItem(Product input) throws Exception;
	
	/**
	 * product 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	public List<Product> getProductList(Product input) throws Exception;

	/**
	 * product 데이터 등록하기
	 * @param product 저장할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int addProduct(Product input) throws Exception;
	
	/**
	 * product 데이터 삭제하기
	 * @param product 삭제할 상품의 일련번호를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int deleteProduct(Product input) throws Exception;
	
	
	/**
	 * product 데이터 수정하기
	 * @param product 수정할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int editProduct(Product input) throws Exception;
	
	/**
	 * product페이지 checkbox 상태유지를 위한 데이터 조회
	 * @param checkbox 상태정보를 담고있는 Map
	 * @return 조회결과를 담은 컬렉션(List)
	 * @throws Exception
	 */
	public List<Product> getProductChecked(Map<String, Object> item) throws Exception;
	
	/**
	 * 체크박스 상태에따른 자료출력
	 * @param item
	 * @return
	 * @throws Exception
	 */
	public List<Product> getProductList(Map<String, Object> item) throws Exception;
	
	// 상품 리뷰에 대한 조회
	public List<Product> getProductReview(Product input) throws Exception;
	
	// 조립 상품에 대한 정보 조회
	public List<Product> getProductAssemble(Product input) throws Exception;

	public int getProductItemCount(Product input) throws Exception;
	
//	/** 사용함?
//	 * product 데이터가 저장되어 있는 갯수 조회
//	 * @return int
//	 * @throws Exception
//	 */
//	public int getProductCount(Product input) throws Exception;
}
