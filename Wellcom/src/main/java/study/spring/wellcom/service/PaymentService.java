package study.spring.wellcom.service;

import java.util.List;

import study.spring.wellcom.model.Payment;

/** 데이터 관리 기능을 제공하기 위한 Service계층. */
public interface PaymentService {
	/** 
	 * 데이터 상세 조회
	 * @param Payment 조회할 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */

	public Payment getPaymentItem(Payment input) throws Exception;
	
	/**
     * 데이터 목록 조회
     * @return 조회 결과에 대한 컬렉션
     * @throws Exception
     */
    public List<Payment> getPaymentList(Payment input) throws Exception;
	
    /**
     * 데이터가 저장되어 있는 갯수 조회
     * @return int
     * @throws Exception
     */
    public int getPaymentCount(Payment input) throws Exception;

    /**
     * 데이터 등록하기
     * @param Department 저장할 정보를 담고 있는 Beans
     * @return int
     * @throws Exception
     */
    public int addPayment(Payment input) throws Exception;
	
    /**
	 * 데이터 수정하기
	 * @param 수정할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 * 
	 */
	public int editPayment(Payment input) throws Exception;
	
	/**
	 * 데이터 삭제하기
	 * @param Payment삭제할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 * 
	 */
	public int deletePayment(Payment input) throws Exception;
	
}

