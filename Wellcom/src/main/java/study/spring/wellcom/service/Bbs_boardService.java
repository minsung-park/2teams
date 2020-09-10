package study.spring.wellcom.service;

import java.util.List;

import study.spring.wellcom.model.Bbs_board;

/** bbs_board 데이터 관리 기능을 제공하기 위한 Service 계층 */
public interface Bbs_boardService {
	/**
	 * bbs_board 데이터 상세 조회
	 * @param Bbs_board 조회활 게시판의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	public Bbs_board getBbs_boardItem(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	public List<Bbs_board> getBbs_boardList(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	public List<Bbs_board> getBbs_boardList1(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	public List<Bbs_board> getBbs_boardList2(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	public List<Bbs_board> getBbs_boardList3(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	public List<Bbs_board> getBbs_boardList4(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 데이터 목록 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	public List<Bbs_board> getBbs_boardList5(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 데이터 타입 조회
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	
	public int addBbs_board(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 데이터 삭제하기
	 * @param Bbs_board 삭제할 게시판의 일련번호를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int deleteBbs_board(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 데이터 수정하기
	 * @param Bbs_board 수정할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	public int editBbs_board(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 데이터가 저장되어 있는 갯수 조회
	 * @return int
	 * @throws Exception
	 */
	public int getBbs_boardCount(Bbs_board input) throws Exception;

	/**
	 * bbs_board 타입에 따른 갯수 조회
	 * @return int
	 * @throws Exception
	 */
	public int getBbs_boardCountType1(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 타입에 따른 갯수 조회
	 * @return int
	 * @throws Exception
	 */
	public int getBbs_boardCountType2(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 타입에 따른 갯수 조회
	 * @return int
	 * @throws Exception
	 */
	public int getBbs_boardCountType3(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 타입에 따른 갯수 조회
	 * @return int
	 * @throws Exception
	 */
	public int getBbs_boardCountType4(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 타입에 따른 갯수 조회
	 * @return int
	 * @throws Exception
	 */
	public int getBbs_boardCountType5(Bbs_board input) throws Exception;
	
	/**
	 * bbs_board 게시글 조회수 증가
	 * @throws Exception
	 */
	 public void getBbs_boardHitCnt(Bbs_board input) throws Exception;
		
	
}