package com.trip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.trip.domain.DestinationVO;
import com.trip.mapper.DesDataMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/destination/*")
public class DestinationController {
	private DesDataMapper mapper;
	
	@GetMapping("list.do")
	public String list(Model model) {
		
		model.addAttribute("list", mapper.getList());
		return "destination/destination3";
		
	}
	
	@GetMapping("/register.do")
	public String register() {
		return "destination/destinationInsert";
	
	}
	
	@PostMapping("/register.do")
	public String register(DestinationVO vo, RedirectAttributes rttr) {
		log.info("register : " + vo);
		mapper.register(vo);
		rttr.addFlashAttribute("result", vo.getDestination_num());
		return "redirect:/destination/destination";
	}
	
	/*
	 * @GetMapping({"/get.do","/modify.do"}) public void get(Long
	 * bno, @ModelAttribute("cri") Criteria cri, Model model) {
	 * log.info("-----------------get or modify-----------------");
	 * model.addAttribute("", mapper.get(bno)); }
	 */
}
