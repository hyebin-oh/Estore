package com.myproject.estore.dto;

import java.util.List;

import lombok.Builder;
import lombok.Data;

@Data
public class aShopDTO {
	private int count;
	private List<Shop> list;
	private String pageHtml;
	
	private List<OrderDTO> olist;
	
	@Builder
	public aShopDTO(int count, List<Shop> list, String pageHtml) {
		this.count=count;
		this.list=list;
		this.pageHtml=pageHtml;
	}
	
}
