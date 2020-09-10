package study.spring.wellcom.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.wellcom.model.Bbs_board;
import study.spring.wellcom.service.Bbs_boardService;

/** bbs_board 데이터 관리 기능을 제공하기 위한 Service 계층에 대한 구현체 */
@Slf4j
@Service
public class Bbs_boardServiceImpl implements Bbs_boardService {

	/** MyBatis 세션 객체 주입 설정 */
	@Autowired
	SqlSession sqlSession;

	/**
	 * 게시판 상세 조회
	 * 
	 * @param Bbs_board 조회할 게시판의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	@Override
	public Bbs_board getBbs_boardItem(Bbs_board input) throws Exception {
		Bbs_board result = null;

		try {
			result = sqlSession.selectOne("Bbs_boardMapper.selectItem", input);

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
	 * 게시판 목록 조회
	 * 
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	@Override
	public List<Bbs_board> getBbs_boardList(Bbs_board input) throws Exception {
		List<Bbs_board> result = null;

		try {
			result = sqlSession.selectList("Bbs_boardMapper.selectList", input);

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
	 * 게시판 목록 조회
	 * 
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	@Override
	public List<Bbs_board> getBbs_boardList1(Bbs_board input) throws Exception {
		List<Bbs_board> result = null;

		try {
			result = sqlSession.selectList("Bbs_boardMapper.selectList1", input);

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
	 * 게시판 목록 조회
	 * 
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	@Override
	public List<Bbs_board> getBbs_boardList2(Bbs_board input) throws Exception {
		List<Bbs_board> result = null;

		try {
			result = sqlSession.selectList("Bbs_boardMapper.selectList2", input);

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
	 * 게시판 목록 조회
	 * 
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	@Override
	public List<Bbs_board> getBbs_boardList3(Bbs_board input) throws Exception {
		List<Bbs_board> result = null;

		try {
			result = sqlSession.selectList("Bbs_boardMapper.selectList3", input);

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
	 * 게시판 목록 조회
	 * 
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	@Override
	public List<Bbs_board> getBbs_boardList4(Bbs_board input) throws Exception {
		List<Bbs_board> result = null;

		try {
			result = sqlSession.selectList("Bbs_boardMapper.selectList4", input);

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
	 * 게시판 목록 조회
	 * 
	 * @return 조회 결과에 대한 컬렉션
	 * @throws Exception
	 */
	@Override
	public List<Bbs_board> getBbs_boardList5(Bbs_board input) throws Exception {
		List<Bbs_board> result = null;

		try {
			result = sqlSession.selectList("Bbs_boardMapper.selectList5", input);

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
	 * 게시판 데이터 등록하기
	 * 
	 * @param Bbs_board 저장할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int addBbs_board(Bbs_board input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("Bbs_boardMapper.insertItem", input);

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

	/**
	 * 게시판 데이터 삭제하기
	 * 
	 * @param Bbs_board 삭제할 게시판의 일련번호를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int deleteBbs_board(Bbs_board input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.delete("Bbs_boardMapper.deleteItem", input);

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

	/**
	 * 게시판 데이터 수정하기
	 * 
	 * @param Bbs_board 수정할 정보를 담고 있는 Beans
	 * @return int
	 * @throws Exception
	 */

	@Override
	public int editBbs_board(Bbs_board input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.update("Bbs_boardMapper.updateItem", input);

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

	/**
	 * 게시판 데이터가 저장되어 있는 갯수 조회
	 * 
	 * @return int
	 * @throws Exception
	 */

	@Override
	public int getBbs_boardCount(Bbs_board input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("Bbs_boardMapper.selectCountAll", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int getBbs_boardCountType1(Bbs_board input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("Bbs_boardMapper.selectCountType1", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}
	
	public int getBbs_boardCountType2(Bbs_board input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("Bbs_boardMapper.selectCountType2", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}
	
	public int getBbs_boardCountType3(Bbs_board input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("Bbs_boardMapper.selectCountType3", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}
	
	public int getBbs_boardCountType4(Bbs_board input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("Bbs_boardMapper.selectCountType4", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}
	
	public int getBbs_boardCountType5(Bbs_board input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("Bbs_boardMapper.selectCountType5", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public void getBbs_boardHitCnt(Bbs_board input) throws Exception {
		
		try {
			sqlSession.update("Bbs_boardMapper.hitCnt", input);
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회수 증가 로직에 오류가 있습니다.");
		}
		
	}

}
