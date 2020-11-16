package com.myproject.estore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.estore.dto.CartDTO;
import com.myproject.estore.mapper.CartMapper;

@Service
public class CartService {
	
	@Autowired
	private CartMapper cMapper;
	//추가하기
	public int cartInsert(CartDTO cart) {
		return cMapper.cInsert(cart);
		
	}
	
	//리스트
	public List<CartDTO> cartList(String userid){
		return cMapper.cList(userid);
		
	}
	
	public int cartCount(String userid) {
		return 0;
	}
	
	//삭제
	public int cartDelete(Long cnum) {
		return 0;
		
	}

}
