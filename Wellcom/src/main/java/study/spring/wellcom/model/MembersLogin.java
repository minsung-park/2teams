package study.spring.wellcom.model;

import lombok.Data;

/** 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class MembersLogin {
	private int members_id;
	private String user_id;
	private String user_pw;

}
