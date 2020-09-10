package study.spring.wellcom.dao;

import org.apache.ibatis.session.SqlSession;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.slf4j.Slf4j;
import study.spring.wellcom.model.Payment;

/** Lombok의 Log4j 객체 */
//import lombok.extern.slf4j.Slf4j;
@Slf4j

/** JUnit에 의한 테스트 클래스로 정의 */
//import org.junit.runner.RunWith;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)

/** Spring의 설정 파일들을 읽어들이도록 설정함.(**은 '모든'이라는 의미로 사용함) */
//import org.springframework.test.context.ContextConfiguration;
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*-context.xml"})

/** 웹 어플리케이션임을 명시 */
//import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration

/** 메서드 이름 순서로 실행하도록 설정 (설정하지 않을 경우 무작위 순서로 실행됨.) */
//import org.junit.FixMethodOrder;
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class PaymentTest {
	
	/** MyBatis의 SQL세션 주입 설정*/
	// import org.springframkwork.beans.factory.annotation.Autowired;
	
	@Autowired
	private SqlSession sqlSession;
	
	/** 단일행 조회 테스트 */
	@Test
	public void testA() {
		//import study.spirng.wellcom.model.Payment;
		
		Payment input = new Payment();
		input.setPayment_id(1);
		sqlSession.selectOne("PaymentMapper.selectItem", input);
	}

	/** 다중행 조회 테스트 */
	@Test
	public void testB() {
		// import study.spring.wellcom.model.Payment;
		Payment input = new Payment();
		input.setMembers_id(3);
		sqlSession.selectList("PaymentMapper.selectList", input);
	}
	
//	/** 데이터 저장 테스트 */
//	@Test
//	public void testC() {
//		// import study.spring.wellcom.model.Payment;
//		Payment input = new Payment();
//		input.setMembers_id(19);
//		input.setPayment_type("card");
//		input.setPayment_inc("신한은행");
//		input.setPayment_number("151525235234234");
//		input.setDate("12/2020");
//		sqlSession.insert("PaymentMapper.insertItem", input);
//	}
	
//	/** 데이터 삭제 테스트 */
//	@Test
//	public void testD() {
//		// import study.spring.wellcom.model.Payment;
//		Payment input = new Payment();
//		input.setPayment_id(8);
//		sqlSession.delete("PaymentMapper.deleteItem", input);
//	}
	
	
	/** 데이터 수정 테스트 */
	@Test
	public void testE() {
		// import study.spring.wellcom.model.Payment;
		Payment input = new Payment();
		input.setPayment_id(9);
		input.setMembers_id(19);
		input.setPayment_type("card");
		input.setPayment_inc("신한은행");
		input.setPayment_number("1111111111111111");
		input.setDate("12/2020");
		sqlSession.update("PaymentMapper.updateItem", input);
	}
	
	
	/** 전체 데이터 수 조회 */
	@Test
	public void testF() {
		int count = sqlSession.selectOne("PaymentMapper.selectCountAll", null);
		log.debug("전체 데이터 수: " + count);
	}
	
	/** 조건에 따른 데이터 수 조회 */
	@Test
	public void testG() {
		// import study.spring.wellcom.model.payment;
		Payment input = new Payment();
		input.setPayment_inc("농협");
		int count = sqlSession.selectOne("PaymentMapper.selectCountAll", input);
		log.debug("농협은행 카드 소지한 회원 수: " + count);
	}
	
	
}
