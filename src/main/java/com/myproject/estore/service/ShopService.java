package com.myproject.estore.service;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.myproject.estore.dto.Auth;
import com.myproject.estore.dto.AuthEntity;
import com.myproject.estore.dto.OrderDTO;
import com.myproject.estore.dto.ProductDTO;
import com.myproject.estore.dto.Role;
import com.myproject.estore.dto.Shop;
import com.myproject.estore.mapper.ShopMapper;
import com.myproject.estore.repository.AuthRepository;
import com.myproject.estore.repository.ShopRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ShopService {
	private final ShopRepository sRepository;
	private final AuthRepository aRepository;
	
	@Autowired
	private PasswordEncoder pwEncoder;
	
	@Autowired
	private ShopMapper sMapper;
	
	
	//shop product list
	public List<ProductDTO> shopPList(String sid) {
		return sMapper.sPList(sid);
	}
	
	//shop order list
	public List<OrderDTO> shopOList(String sid){
		return sMapper.sOList(sid);
	}
	
	//shop 오늘의 주문 수
	public int newOrderCount(String sid) {
		return sMapper.newOcount(sid);
	}
	
	
	public Shop EmailCheck(String email){
		Shop shop = sRepository.findByemail(email);
		return shop;
	}
	
	@Transactional
	public void save (Shop shop, Auth auth) {		
		//암호화 전
		String rawpassword = shop.getPassword();		
		//암호화 후
		String encodepassword = pwEncoder.encode(rawpassword);
		
		shop.setPassword(encodepassword);
		System.out.println("encodepassword : "+shop.getPassword());
		
		//set은 AuthDTO인 Auth테이블에 해놓기
		auth.setRole(Role.MANAGER);
		AuthEntity authEntity = auth.toEntity();
		
		aRepository.save(authEntity);
		sRepository.save(shop);
	}

}
