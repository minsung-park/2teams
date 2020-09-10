package study.spring.wellcom.model;

import lombok.Data;

@Data
public class Product {
	private int id;
	private String category;
	private String brand;
	private String name;
	private String description;
	private int price;
	private String thumb;
	private String img;
	private int view_count;
	private int option_id;

	// 상품 리뷰를 불러오기 위한 컬럼
	private String content;
	private String user_name;
	private String reg_date;

	// 출력 갯수 컨트롤을 위한 static 변수
	private static int offset;
	private static int listCount;

	public static int getOffset() {
		return offset;
	}

	public static void setOffset(int offset) {
		Product.offset = offset;
	}

	public static int getListCount() {
		return listCount;
	}

	public static void setListCount(int listCount) {
		Product.listCount = listCount;
	}
}
