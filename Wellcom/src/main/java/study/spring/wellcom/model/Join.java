package study.spring.wellcom.model;

import lombok.Data;

/** 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Join {
	private int members_id;
	private String user_id;
	private String user_name;
	private String user_email;
	private String user_pw;
	private String user_tel;
	private String birthdate;
	private int postcode;
	private String addr1;
	private String addr2;
	private String reg_date;
}
