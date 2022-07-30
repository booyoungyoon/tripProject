package com.trip.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.trip.domain.UserVO;
import com.trip.mapper.UserMapper;
import com.trip.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class UserServiceImpl implements UserService{
	private UserMapper mapper;

	@Override
	public List<UserVO> getUserList() {
		log.info("----- getUserList ------");
		return mapper.getList();
	}

	@Override
	public void register(UserVO vo) {
		log.info("------ register --------");
		mapper.insert(vo);
	}

	@Override
	public UserVO login(UserVO vo) {
		log.info("------- login ---------");
		return mapper.getId(vo);
	}

	@Override
	public UserVO get(int userNum) {
		log.info("------- get ---------");
		return mapper.get(userNum);
	}

	@Override
	public UserVO getId(UserVO vo) {
		log.info("------- getId ---------");
		return mapper.getId(vo);
	}

	@Override
	public UserVO getNickName(UserVO vo) {
		log.info("------- getNickName ---------");
		return mapper.getNickName(vo);
	}

	@Override
	public int remove(int userNum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modify(UserVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
