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
import study.spring.wellcom.model.Join;

/** Lombok의 Log4j 객체 */
//import lombok.extern.slf4j.slf4j;
@Slf4j
/** JUnit에 의한 테스트 클래스로 정의 */
//import org.junit.runner.RunWith;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
/** Spring의 설정 파일들을 읽어들이도록 설정 (**은 `모든` 이라는 의미) */
//import org.springframework.test.context.ContextConfiguration;
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*-context.xml" })
/** 웹 어플리케이션임을 명시 */
//import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
/** 메서드 이름순서로 실행하도록 설정 (설정하지 않을 경우 무작위 순서로 실행됨) */
//import org.junit.FixMethodOrder;
@FixMethodOrder(MethodSorters.NAME_ASCENDING)

public class JoinTest {

	/** MyBatis의 SQL세션 주입 설정 */
	// import org.springframework.beans.factory.annotation.Autowired;
	@Autowired
	private SqlSession sqlSession;

	
	/** 데이터 저장 테스트 */
	@Test
	public void testC() {
		Join input = new Join();
		input.setUser_id("testMem3");
		input.setUser_pw("123!@#");
		input.setUser_name("이재용");
		input.setUser_email("mem3@gmail.com");
		input.setUser_tel("01012345678");
		input.setBirthdate("2020-03-03");
		input.setPostcode(33551);
		input.setAddr1("서울 서초구 서초동 서초대로 11길 11");
		input.setAddr2("큐브큐브큐브스테이크");
		input.setReg_date("2020-09-06 00:00:00");
		sqlSession.insert("JoinMapper.insertItem", input);
	}
//
//	/** 데이터 삭제 테스트 */
//	@Test
//	public void testD() {
//		MembersLogin input = new MembersLogin();
//		input.setDeptno(203);
//		input.setDeptno(204);
//		input.setDeptno(205);
//		input.setDeptno(206);
//		sqlSession.delete("DepartmentMapper.deleteItem", input);
//	}
//
//	/** 데이터 수정 테스트 */
//	@Test
//	public void testE() {
//		MembersLogin input = new MembersLogin();
//		input.setDeptno(204);
//		input.setDname("수정학과");
//		input.setLoc("5호관");
//		sqlSession.update("DepartmentMapper.updateItem", input);
//
//	}
//
//	/** 조건에 따른 데이터 수 조회 */
//	@Test
//	public void testG() {
//		MembersLogin input = new MembersLogin();
//		input.setDname("공학");
//		int count = sqlSession.selectOne("DepartmentMapper.selectCountAll", input);
//		log.debug("공학을 포함하는 학과이름을 갖는 데이터 수 : " + count);
//
//	}
}
