package study.spring.wellcom.model;

import lombok.Data;

@Data
public class Cart {
	private int cart_id;
	private int members_id;
	private int no_member_id;
	private int product_id;
	private int product_amount;
	private String name;
	private int price;
	private String thumb;
	private int user_select_id;
	private int vga_choose;
	private String vga_name;
	private int vga_price;
	private int ram_choose;
	private String ram_name;
	private int ram_price;
	private int pow_choose;
	private String pow_name;
	private int pow_price;
	private int storage_choose;
	private String storage_name;
	private int storage_price;
}
