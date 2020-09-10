package study.spring.wellcom.dao;

import java.sql.Timestamp;
import java.util.List;

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
import study.spring.wellcom.model.Bbs_board;
import study.spring.wellcom.service.Bbs_boardService;


/** Lombok의 Log4j 객체 */
// import lombok.extern.slf4j.Slf4j;
@Slf4j
/** JUnit에 의한 테스트 클래스로 정의 */
// import org.junit.runner.RunWith;
// import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
/** Spring의 설정 파일들을 읽어들이도록 설정 (**은 `모든` 이라는 의미) */
// import org.springframework.test.context.ContextConfiguration;
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*-context.xml" })
/** 웹 어플리케이션임을 명시 */
// import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
/** 메서드 이름순서로 실행하도록 설정 (설정하지 않을 경우 무작위 순서로 실행됨) */
// import org.junit.FixMethodOrder;
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class Bbs_boardTest {

    /** MyBatis의 SQL세션 주입 설정 */
    // import org.springframework.beans.factory.annotation.Autowired;
    @Autowired
    private Bbs_boardService Bbs_boardService;

    /** 단일행 조회 테스트 */
	/*
	 * @Test public void testA() { // import study.spring.wellcom.model.Bbs_board;
	 * Bbs_board input = new Bbs_board(); input.setId(1); Bbs_board output = null;
	 * 
	 * try { output = Bbs_boardService.getBbs_boardItem(input);
	 * log.debug(output.toString()); } catch (Exception e) {
	 * log.error(e.getLocalizedMessage()); e.printStackTrace(); } }
	 */
    
    /** 다중행 조회 테스트 */
	/*
	 * @Test public void testB() { Bbs_board input = new Bbs_board();
	 * input.setHit(1);
	 * 
	 * List<Bbs_board>output = null;
	 * 
	 * try { output=Bbs_boardService.getBbs_boardList(input);
	 * 
	 * for(Bbs_board item : output) { log.debug(item.toString()); } } catch
	 * (Exception e) { log.error(e.getLocalizedMessage()); e.printStackTrace(); } }
	 */
    
    /** 데이터 저장 테스트 */
	
	/*
	 * @Test public void testC() { Bbs_board input = new Bbs_board();
	 * input.setMembers_id(1); input.setType("notice");
	 * input.setHead("(주)웰컴 이용 안내");
	 * input.setContent("(주)웰컴을 이용해주시는 고객님들께 감사 말씀 드리며 많은 이용 부탁 드립니다.");
	 * input.setHit(1); input.setReg_date("2020-08-27");
	 * 
	 * int output = 0;
	 * 
	 * try { output = Bbs_boardService.addBbs_board(input); log.debug("저장된 데이터 수 : "
	 * + output); log.debug("생성된 PK 값 : " + input.getId()); } catch(Exception e) {
	 * log.error(e.getLocalizedMessage()); e.printStackTrace(); }
	 * 
	 * }
	 */
	 
    
    /** 데이터 삭제 테스트 */
	/*
	 * @Test public void testD() { Bbs_board input = new Bbs_board();
	 * input.setId(14);
	 * 
	 * int output = 0;
	 * 
	 * try { output = Bbs_boardService.deleteBbs_board(input);
	 * log.debug("삭제된 데이터 수 : " + output); } catch(Exception e) {
	 * log.error(e.getLocalizedMessage()); e.printStackTrace(); } }
	 */
    
    /** 데이터 수정 테스트 */
	/*
	 * @Test public void testE() { Bbs_board input = new Bbs_board();
	 * input.setId(13); input.setHead("(주)웰컴입니다. 언제나 최선을 다하는 (주)웰컴이 되겠습니다."); input.
	 * setContent("(주)웰컴은 언제나 최선을 다하는 (주)웰컴이 되겠습니다. 여러분들에게 받은 사랑을 보답할 수 있게 노력하겠습니다."
	 * );
	 * 
	 * int output = 0;
	 * 
	 * try { output = Bbs_boardService.editBbs_board(input);
	 * log.debug("수정된 데이터 수 : " + output); } catch(Exception e) {
	 * log.error(e.getLocalizedMessage()); e.printStackTrace(); } }
	 */
    
    /** 전체 데이터 수 조회 */
	/*
	 * @Test public void testF() { int count = 0;
	 * 
	 * try { count = Bbs_boardService.getBbs_boardCount(null);
	 * log.debug("전체 데이터 수 : " + count); } catch (Exception e) {
	 * log.error(e.getLocalizedMessage()); e.printStackTrace(); } }
	 */
    
    /** 조건에 따른 데이터 수 조회 */
	/*
	 * @Test public void testG() { int count = 0;
	 * 
	 * Bbs_board input = new Bbs_board(); input.setHead("dkslkls");
	 * input.setContent("게시판");
	 * 
	 * try { count = Bbs_boardService.getBbs_boardCount(input);
	 * log.debug("(주)웰컴을 포함하는 게시판 갯수 : " + count); } catch(Exception e) {
	 * log.error(e.getLocalizedMessage()); e.printStackTrace(); } }
	 */
  
}