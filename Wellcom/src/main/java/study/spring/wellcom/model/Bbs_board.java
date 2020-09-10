package study.spring.wellcom.model;

import lombok.Data;

/** bbs_board 구조에 맞춘 Java Beans 생성 */
@Data
// new Bbs_board()
public class Bbs_board {
	private int bbs_board_id;
	private int members_id;
	private int type;
	private String head;
	private String content;
	private int hit;
	private String reg_date;
	private String edit_date;
	
	private String user_name;
	
	/** 페이지 구현이 필요한 경우 아래 속성들을 추가한다. (static) */
    private static int offset;		// LIMIT 절에서 사용할 검색 시작 위치
    private static int listCount;	// LIMIT 절에서 사용할 검색할 데이터 수
    
	public static int getOffset() {
		return offset;
	}
	
	public static void setOffset(int offset) {
		Bbs_board.offset = offset;
	}
	
	public static int getListCount() {
		return listCount;
	}
	
	public static void setListCount(int listCount) {
		Bbs_board.listCount = listCount;
	}
    
}