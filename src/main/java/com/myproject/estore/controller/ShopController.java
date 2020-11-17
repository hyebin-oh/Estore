package com.myproject.estore.controller;

import java.security.Principal;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myproject.estore.dto.Auth;
import com.myproject.estore.dto.AuthEntity;
import com.myproject.estore.dto.OrderDTO;
import com.myproject.estore.dto.ProductDTO;
import com.myproject.estore.dto.Shop;
import com.myproject.estore.service.ShopService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/shop/")
@RequiredArgsConstructor
public class ShopController {
	private final ShopService sService;
	private final PasswordEncoder pwEncoder;
	
	//mypage
	//마이페이지로
	@GetMapping("mypage")
	public String mypage(Principal principal, Model model) {
		String sid = principal.getName();
		int newOcount = sService.newOrderCount(sid);
		model.addAttribute("count", newOcount);
		return "/shop/sMypage";
	}
	
	
	//Myproduct List
	@GetMapping("sProduct")
	public String sPList(Principal principal, Model model) {
		String sid = principal.getName();
		List<ProductDTO> sPList = sService.shopPList(sid);
		model.addAttribute("list", sPList);
		
		return "/shop/shopProductList";
	}
	
	//shop newOrder
	@GetMapping("sOrderList")
	public String sOList(Principal principal, Model model) {
		String sid= principal.getName();
		List<OrderDTO> sOlist = sService.shopOList(sid);
		model.addAttribute("sOlist", sOlist);
		return "/shop/shopOrderList";
	}

	//shop 추가
	@PostMapping("insert")
	public String join(Shop shop, Auth auth) {
		String rawPassword = shop.getPassword();
		System.out.println("인코딩 전 비밀번호 : "+rawPassword);
		String encPassword = pwEncoder.encode(rawPassword);
		System.out.println("인코딩 후 비밀번호 : "+encPassword);
		
		sService.save(shop, auth);
		return "loginform";
	}
	
	//이메일 중복 확인
	@PostMapping("emailCheck")
	@ResponseBody
	public String emailCheck(HttpServletRequest request, String email) {
		Shop shop = sService.EmailCheck(email);
		String result="";
		
		if(shop!=null) result="no";
		else result="yes";
		return result;		
	}
	
}
