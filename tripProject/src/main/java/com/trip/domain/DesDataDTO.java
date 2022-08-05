package com.trip.domain;

import lombok.Data;

/*
create table destinatinodata (
    num number(10) not null primary key,
    title varchar2(150),
    address varchar2(200),
    firstimg varchar2(500),
    secondimg varchar2(500),
    mapx varchar2(50),
    mapy varchar2(50)
);
*/
@Data
public class DesDataDTO {
	private Long destinationNum;
	private String destinationTitle;
	private String destinationAddress;
	private String destinationFirstImg;
	private String destinationSecondImg;
	private String destinationMapX;
	private String destinationMapY;
	private String destinationContent;
	private String destinationCity;
	private Long userNum;
}
