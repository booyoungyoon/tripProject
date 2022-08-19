package com.trip.mapper;

import java.util.List;

import com.trip.domain.BoardVO;

public interface BoardMapper {
	public List<BoardVO> getList();
	public BoardVO get(int boardNum);
	public int delete(int boardNum);

}
