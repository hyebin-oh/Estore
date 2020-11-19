package com.myproject.estore.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewDTO {
	private int rnum;
	private int pnum;
	private String title;
	private String content;
	private String email;
	private int rate;
	private Date create_date;
}
