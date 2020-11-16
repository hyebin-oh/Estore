package com.myproject.estore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myproject.estore.dto.CartDTO;
import com.myproject.estore.dto.ProductDTO;
import com.myproject.estore.service.CartService;
import com.myproject.estore.service.ProductService;

@Controller
@RequestMapping("/cart/")
public class CartController {
	
	@Autowired
	private ProductService pService;
	
	@Autowired
	private CartService cSerivce;
	
	
	
	//추가
	@PostMapping("cartInsert")
	@ResponseBody
	public String cartInsert(@RequestBody CartDTO cart) {
		cSerivce.cartInsert(cart);
		return "success";
	}
	
	//리스트
	@GetMapping("cartList")
	public String cartPage(Model model, String userid, Long pnum ) {
		List<CartDTO> cList = cSerivce.cartList(userid);//카트리스트
		
		model.addAttribute("cList", cList);
		
		return "/order/cartList";
	}
	

	
}