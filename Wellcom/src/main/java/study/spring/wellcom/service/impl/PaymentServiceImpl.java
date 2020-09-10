package study.spring.wellcom.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.wellcom.model.Payment;
import study.spring.wellcom.service.PaymentService;

/** 데이터 관리 기능을 제공하기 위한 Service계층에 대한 구현체 */
@Slf4j
@Service // --> import org.springframework.stereotype.Service;
public class PaymentServiceImpl implements PaymentService {
	
	/** MyBatis 세션 객체 주입 설정 */
	@Autowired
	SqlSession sqlSession;
	
	/***
	 * 데이터 상세 조회
	 * @param Payment 조회할 학과의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public Payment getPaymentItem(Payment input) throws Exception {
		
		Payment result = null;
		
		try {
			result = sqlSession.selectOne("PaymentMapper.selectItem", input);
			
			if(result == null) {
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

	
	/**
     * 데이터 목록 조회
     * @return 조회 결과에 대한 컬렉션
     * @throws Exception
     */
	
	@Override
	public List<Payment> getPaymentList(Payment input) throws Exception {
		List<Payment> result = null;
		
		 try {
	            result = sqlSession.selectList("PaymentMapper.selectList", input);

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

	
	/**
     * 학과 데이터가 저장되어 있는 갯수 조회
     * @return int
     * @throws Exception
     */
	@Override
	public int getPaymentCount(Payment input) throws Exception {
		int result = 0;
        
        try {
            result = sqlSession.selectOne("PaymentMapper.selectCountAll", input);
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        }
        
        return result;
	}


    /**
     * 학과 데이터 등록하기
     * @param Department 저장할 정보를 담고 있는 Beans
     * @return int
     * @throws Exception
     */
	@Override
	public int addPayment(Payment input) throws Exception {
		int result = 0;

        try {
            result = sqlSession.insert("PaymentMapper.insertItem", input);

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


	@Override
	public int editPayment(Payment input) throws Exception {
		int result = 0;

        try {
            result = sqlSession.update("PaymentMapper.updateItem", input);

            if (result == 0) {
                throw new NullPointerException("result=0");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("수정된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 수정에 실패했습니다.");
        }

        return result;
    }


	@Override
	public int deletePayment(Payment input) throws Exception {
		int result = 0;

        try {
            result = sqlSession.delete("PaymentMapper.deleteItem", input);

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

	
	
	
	
	

	

