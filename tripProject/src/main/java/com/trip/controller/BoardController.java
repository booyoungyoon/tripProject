package com.trip.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trip.domain.BoardVO;
import com.trip.domain.UserVO;
import com.trip.mapper.BoardMapper;
import com.trip.mapper.UserMapper;
import com.trip.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/board/*")
public class BoardController {
	private BoardMapper mapper;
	private UserService userService;
	
	@RequestMapping("list.do")
	public String list(Model model) {
		log.info("--------- getBoardList -----------");
		List<BoardVO> list = mapper.getList();
		
		log.info(list);
		
		for(BoardVO board : list) {
			log.info(board.getUsernum());
			board.setUser(userService.get(board.getUsernum()));
		}
		
		
		model.addAttribute("list" ,list);
		return "board/list";
	}
	
	@GetMapping("get.do")
	public String get(Model model, int bno) {
		log.info("--------- getBoard -----------");
		log.info("bno : " + bno);
		
		BoardVO board = mapper.get(bno);
		board.setUser(userService.get(board.getUsernum()));
		
		model.addAttribute("board", board);
		return "board/get";
	}
	
	@GetMapping("register.do")
	public String registerPage() {
		log.info("------- registerPage ----------");
		
		return "board/register";
	}
	
	@GetMapping("modify.do")
	public String modify() {
		log.info("------- modifyPage ----------");
		
		return "board/modify";
	}
	
	@GetMapping("remove.do")
	public String remove(int num) {
		log.info("------- remove ----------");
		mapper.delete(num);
		
		return "redirect:/board/list.do";
	}

}
