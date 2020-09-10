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
import study.spring.wellcom.model.Members;

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
public class MembersTest {

	/** MyBatis의 SQL세션 주입 설정*/
	// import org.springframkwork.beans.factory.annotation.Autowired;
	
	@Autowired
	private SqlSession sqlSession;
	
	/** 단일행 조회 테스트 */
	@Test
	public void testA() {
		//import study.spirng.simplespring.model.Members;
		
		Members input = new Members();
		input.setMembers_id(1);
		sqlSession.selectOne("MembersMapper.selectItem", input);
	}
	
//	/** 다중행 조회 테스트 */
//	@Test
//	public void testB() {
//		//import study.spirng.simplespring.model.Members;
//		
//		Members input = new Members();
//		input.setUser_id("e");
//		sqlSession.selectList("MembersMapper.selectList", input);
//	}
	
	
//	
//	/** 데이터 저장 테스트 */
//	@Test
//	public void testC() {
//		Members input = new Members();
//		input.setAdmin_permission(2);
//		input.setUser_id("mem3");
//		input.setUser_name("오정규");
//		input.setUser_email("mem3@gmail.com");
//		input.setUser_pw("mem3123!@#");
//		input.setUser_tel("123123123");
//		input.setBirthdate("2020-08-23");
//		input.setPostcode(6611);
//		input.setAddr1("서울 서초구 서초대로 77길 55");
//		input.setAddr2("에이프로스퀘어 3층");
//		input.setReg_date("2020-08-30");
//		input.setPoint(10000);
//		input.setIs_out(2);
//		
//		sqlSession.insert("MembersMapper.insertItem", input);
//	}
	
	
//	
//	/** 데이터 삭제 테스트 */
//	@Test 
//	public void testD() {
//		Members input = new Members();
//		input.setMembers_id(20);
//	
//		sqlSession.delete("MembersMapper.deleteItem", input);
//	}
	
//	/** 데이터 수정 테스트 */
//	@Test 
//	public void testE() {
//		Members input = new Members();
//		input.setMembers_id(7);
//		input.setAdmin_permission(2);
//		input.setUser_id("agamemnw2222on");
//		input.setUser_name("오정규");
//		input.setUser_email("mem3@gmail.com");
//		input.setUser_pw("mem3123!@#");
//		input.setUser_tel("123123123");
//		input.setBirthdate("2020-08-23");
//		input.setPostcode(6611);
//		input.setAddr1("서울 서초구 서초대로 77길 55");
//		input.setAddr2("에이프로스퀘어 3층");
//		input.setReg_date("2020-08-30");
//		input.setPoint(10000);
//		input.setIs_out(2);
//	
//		sqlSession.update("MembersMapper.updateItem", input);
//	}
//	
//	
	/* 전체 데이터 수 조회 */
	@Test
	public void testF() {
		int count = sqlSession.selectOne("MembersMapper.selectCountAll", null);
		log.debug("전체 데이터 수: "+ count);
	}
	
	/** 조건에 따른 데이터 수 조회 */
	@Test
	public void testG() {
		// import study.spring.wellcom.model.Members;
		Members input = new Members();
		input.setUser_name("mem");
		int count = sqlSession.selectOne("MembersMapper.selectCountAll", input);
		log.debug("mem을 포함하는 아이디를 갖는 유저 수: " + count);
	}
	
	
	
}
