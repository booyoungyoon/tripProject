package com.trip.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trip.domain.FesDataDTO;
import com.trip.mapper.FesDataMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/festival")
public class FestivalController {
	private FesDataMapper fmapper;
	

	
	
	
	@RequestMapping("list.do")
	public ModelAndView list(ModelAndView mv) {
		log.info("list");
		
		List<FesDataDTO> list = fmapper.getList();
		
		if(list != null) {
			mv.addObject("list",list);
		}
		mv.setViewName("festival/list");
		log.info("???");
		return mv;
		
	}
}
