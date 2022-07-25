package com.trip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trip.mapper.FestivalMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/festival/*")
public class FestivalController {
	private FestivalMapper fmapper;
	
	@RequestMapping("list.do")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", fmapper.getList());
	}
}
