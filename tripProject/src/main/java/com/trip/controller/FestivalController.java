package com.trip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trip.domain.Criteria;
import com.trip.domain.FesDataDTO;
import com.trip.domain.PageDTO;
import com.trip.mapper.FesDataMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping(value = "/festival/*")
public class FestivalController {
	private FesDataMapper mapper;

	@GetMapping("page.do")
	public String list(Criteria cri,Model model) {
		int total = mapper.getTotalCount(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("list", mapper.getListWithPagging(cri));
		
		
		return "festival/festival";
	}

//	@GetMapping("festival.do")
//	public String read(@ModelAttribute("FesDataDTO") FesDataDTO dto, Model model) {
//		System.out.println("???");
//		return "/festival/list";
//	}
//	
	
	@GetMapping(value = "detail.do", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public FesDataDTO read(@RequestParam("num") int num, Model model) {
		System.out.println(num);
		FesDataDTO dto = mapper.selectOne(num);
		System.out.println(dto);
//		model.addAttribute("data", dto);
		return dto;
	}
}
