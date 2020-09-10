package study.spring.wellcom.model;

import lombok.Data;

/** 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class NoMemberLogin {
	private int no_member_id;
	private String no_user_name;
	private String no_user_pw;

}
