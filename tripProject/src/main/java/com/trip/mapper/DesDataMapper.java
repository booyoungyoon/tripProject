package com.trip.mapper;

import java.util.List;

import com.trip.domain.DesDataDTO;
import com.trip.domain.DestinationVO;

public interface DesDataMapper {
	public int insert(DesDataDTO dto);
	public List<DesDataDTO> getList();
	public void register(DestinationVO vo);
}
