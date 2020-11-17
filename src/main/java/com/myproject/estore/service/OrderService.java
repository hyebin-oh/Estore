package com.myproject.estore.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.estore.dto.OrderDTO;
import com.myproject.estore.mapper.OrderMapper;

@Service
public class OrderService {
	
	@Autowired
	private OrderMapper oMapper;
	
	@Transactional
	public int getNum() {
		oMapper.putNum();
		return oMapper.getNum();
	}
	
	public int orderSuccess(OrderDTO order) {
		return oMapper.oSuccess(order);
	}

}
