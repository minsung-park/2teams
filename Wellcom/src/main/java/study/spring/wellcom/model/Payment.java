package study.spring.wellcom.model;

import lombok.Data;

/** 테이블 구조에 맞춘 Java Beans생성 */

@Data
public class Payment {
	private int payment_id;
	private int members_id;
	private String payment_type;
	private String payment_inc;
	private String payment_number;
	private String date;
	
	
	

}
