package com.trip.mapper;

import java.util.List;

import com.trip.domain.CityVO;
import com.trip.domain.Criteria;
import com.trip.domain.DestinationImplData;
import com.trip.domain.FesDataDTO;

public interface DestinationImplMapper {
	public int insert(DestinationImplData data);
	public List<DestinationImplData> getAddressList(CityVO city);
	public List<DestinationImplData> getList(Criteria cri);
	public int getTotalCount(CityVO city);
}