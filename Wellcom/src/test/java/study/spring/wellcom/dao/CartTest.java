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
import study.spring.wellcom.model.Cart;

/** Lombok의 Log4j 객체 */
//import lombok.extern.slf4j.Slf4j;
@Slf4j

/** JUnit에 의한 테스트 클래스로 정의 */
//import org.junit.runner.RunWith;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)

/** Spring의 설정 파일들을 읽어들이도록 설정함.(**은 '모든'이라는 의미로 사용함) */
//import org.springframework.test.context.ContextConfiguration;
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*-context.xml" })

/** 웹 어플리케이션임을 명시 */
//import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration

/** 메서드 이름 순서로 실행하도록 설정 (설정하지 않을 경우 무작위 순서로 실행됨.) */
//import org.junit.FixMethodOrder;
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class CartTest {
	/** MyBatis의 SQL세션 주입 설정 */
	// import org.springframework.beans.factory.annotation.Autowired;
	@Autowired
	private SqlSession sqlSession;

	@Test
	public void testA() {
		Cart input = new Cart();
		input.setMembers_id(3);
		sqlSession.selectList("CartMapper.listCart", input);
	}

	@Test
	public void testB() {
		Cart input = new Cart();
		input.setMembers_id(3);
		input.setNo_member_id(0);
		input.setProduct_id(12);
		input.setProduct_amount(5);

		Cart option = new Cart();
		option.setProduct_id(input.getProduct_id());
		option.setVga_choose(1);
		option.setRam_choose(1);
		option.setPow_choose(1);
		option.setStorage_choose(1);

		sqlSession.insert("CartMapper.insertOption", option);
		input.setUser_select_id(option.getUser_select_id());

		sqlSession.insert("CartMapper.insertItem", input);

	}

	/** 데이터 삭제 테스트 */
	@Test
	public void testC() {
		Cart input = new Cart();
		input.setCart_id(5);
		sqlSession.delete("CartMapper.deleteItem", input);
	}
}
