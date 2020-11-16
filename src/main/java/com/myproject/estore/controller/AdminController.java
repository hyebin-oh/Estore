package com.myproject.estore.controller;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myproject.estore.service.ShopService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin/")
//@RequiredArgsConstructor
public class AdminController {
	//private final ShopService sService;
	//private final PasswordEncoder pwEncoder;
	
	
	//mypage
	//마이페이지로
	@GetMapping("mypage")
	public String mypage() {
		return "/amdin/aMypage";
	}
}
