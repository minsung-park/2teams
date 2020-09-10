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
import study.spring.wellcom.model.Product;
import study.spring.wellcom.service.ProductService;

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

public class ProductTest {
	/** MyBatis의 SQL세션 주입 설정 */
	//import org.springframework.beans.factory.annotation.Autowired;
	@Autowired
	private SqlSession sqlSession;
	
	
//	/** 단일행 조회 테스트 */
//	@Test
//	public void testA() {
//		//import study.spring.simplespring.model.Product;
//		Product input = new Product(); 
//		input.setId(10);
//		sqlSession.selectOne("ProductMapper.selectItem", input);
//	}
//	
//	/** 중첩조건 조회 테스트 */
//	@Test
//	public void testB() {
//		Product input = new Product();
//		input.setCategory("cpu");
//		input.setBrand("intel");
//		sqlSession.selectList("ProductMapper.selectList", input);
//	}
//	
//	/** 데이터 저장 테스트 */
//	@Test
//	public void testC() {
//		Product input = new Product();
//		input.setCategory("테스트");
//		input.setBrand("test");
//		input.setName("테스트제품");
//		input.setDescription("테스트 / 테스트 / 테스트");
//		input.setPrice(999999);
//		input.setThumb("DB 저장경로/URL경로");
//		input.setImg("DB 저장경로/URL경로");
//		sqlSession.insert("ProductMapper.insertItem", input);
//	}
//	
//	/** 데이터 삭제 테스트 */
//	@Test
//	public void testD() {
//		Product input = new Product();
//		input.setId(35);
//		sqlSession.delete("ProductMapper.deleteItem", input);
//	}
//	
//	/** 데이터 갱신 테스트 */
//	@Test
//	public void testE() {
//		Product input = new Product();
//		input.setId(34);
//		input.setName("갱신테스트");
//		input.setPrice(999999);
//		sqlSession.update("ProductMapper.updateItem", input);
//	}
//	
//	/** 전체 데이터 수 조회 */
//	@Test
//	public void testF() {
//		int count = sqlSession.selectOne("ProductMapper.selectCountAll", null);
//		log.debug("전체 데이터의 수: " + count);
//	}
//	
//	/** 조건에 따른 데이터 수 조회 */
//	@Test
//	public void testG() {
//		Product input = new Product();
//		input.setBrand("intel");
//		log.debug("'특정단어'를 포함하는 값을 갖는 데이터");
//		sqlSession.selectOne("ProductMapper.selectWordAll", input);
//	}
//	
//	/** Join을 활용한 데이터 수 조회 */
//	@Test
//	public void testH() {
//		ProfessorProduct input = new ProfessorProduct();
//		input.setDname("공학");
//		sqlSession.selectList("ProfessorProductMapper.selectJoin", input);
//	}
//	@Test
//	public void testAS() {
//		Product input = new Product();
//		input.setCategory("vga");
//		sqlSession.selectList("ProductMapper.selectWordOverlap", null);
//		sqlSession.selectList("ProductMapper.selectWordOverlap", input);
//	}
//	
//	@Test
//	public void test() {
//		Product input = new Product();
//		input.setId(2);
//		sqlSession.selectOne("ProductMapper.selectTest", input);
//	}
}
