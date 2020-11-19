package com.myproject.estore.controller;

import java.security.Principal;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myproject.estore.dto.ReviewDTO;
import com.myproject.estore.service.ReviewService;

@Controller
@RequestMapping("/review/")
public class ReviewController {
	@Autowired
	private ReviewService rService;
	
	@GetMapping("plist")
	@ResponseBody
	public List<ReviewDTO> plist(int pnum) {
		List<ReviewDTO> rlist = rService.rfindByPnum(pnum);
		return rlist;
	}
	
	@PostMapping("insert")
	@ResponseBody
	public String insert(@RequestBody ReviewDTO review, Principal p) {
		review.setEmail(p.getName());
		rService.rInsert(review);
		return "success";
	}
	
	@GetMapping("detail/{rnum}")
	public String detail(int rnum, Model model) {
		ReviewDTO rdto = rService.rDetail(rnum);
		model.addAttribute("review", rdto);
		return "/review/rDetail";		
	}
	
	@GetMapping("insert")
	@ResponseBody
	public String insertform (@Param("pnum") int pnum, @Param("pname") String pname, Model model) {
		model.addAttribute("pnum", pnum);
		model.addAttribute("pname", pname);
		return "success";
	}
	
	
	
	
	
}







