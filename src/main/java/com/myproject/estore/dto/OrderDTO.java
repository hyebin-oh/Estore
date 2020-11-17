package com.myproject.estore.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderDTO {

	private Long onum;
	private String ordernum;
	private String sid;
	private String pname;
	private String pcount;
	private String price;
	private String userid;
	private String name;
	private String address;
	private String phone;
	private String pay;
	private Date create_date;
	private String orderstate;
}
