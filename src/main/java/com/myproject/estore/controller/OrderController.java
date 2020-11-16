package com.myproject.estore.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myproject.estore.dto.CartDTO;
import com.myproject.estore.dto.User;
import com.myproject.estore.service.CartService;
import com.myproject.estore.service.UserService;

@Controller
@RequestMapping("/order/")
public class OrderController {
	
	@Autowired
	private UserService uService;
	
	@Autowired
	private CartService cService;

	
	@GetMapping("oCheck")
	public String oderCheck(Model model, Principal principal) {
		
		String userid = principal.getName();
		
		//회원 정보		
		User user = uService.EmailCheck(userid);
		model.addAttribute("user", user);
		
		//cartList
		List<CartDTO> cart = cService.cartList(userid);
		model.addAttribute("cart", cart);
		
		
		return "/order/orderCheck";
	}
}
