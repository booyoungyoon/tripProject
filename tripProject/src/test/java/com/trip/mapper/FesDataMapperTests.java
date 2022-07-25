package com.trip.mapper;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.trip.domain.FesDataDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class FesDataMapperTests {
	@Autowired
	private FesDataMapper mapper;
	
	@Test
	public void testInsert() {
		try {
			Document doc = Jsoup.connect("http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival"
					+ "?serviceKey=sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D&MobileOS=ETC&numOfRows=150&MobileApp=AppTest&arrange=A&listYN=Y&eventStartDate=20220701").get();
			Elements all = doc.select("item");
			Elements el = doc.getElementsByAttribute("firstimage");
			
//			Elements row = doc.select("item");
//			for(Element row2 : row){
//				Iterator<Element> it = row2.getElementsByTag("title").iterator();
//				while(it.hasNext()) {
//					String title = it.next().text();
//					System.out.println(title);
//					}
//				} 
			Elements eltitle = all.select("title");
			Elements eladdress = all.select("addr1");
			Elements elstartDate = all.select("eventstartdate");
			Elements elendDate = all.select("eventenddate");
			Elements elfirstImg = all.select("firstimage");
			Elements elmapX = all.select("mapx");
			Elements elmapY = all.select("mapy");
			Elements elmLevel = all.select("mlevel");
			
			for(int i=0; i<100; i++) {
				
				String htmlTmp = all.get(i).html();
				if (!(htmlTmp.contains("firstimage"))) {
					Element elImg = new Element("firstimage");
					elfirstImg.add(i, elImg);
					System.out.println("noimage");
				}
				if (!(htmlTmp.contains("mlevel"))) {
					Element ellevel = new Element("mlevel");
					elmLevel.add(i, ellevel);
					System.out.println("nolevel");
				}
				String title = eltitle.get(i).text();
				String address = eladdress.get(i).text();
				String startDate = elstartDate.get(i).text();
				String endDate = elendDate.get(i).text();
				String firstImg = elfirstImg.get(i).text();
				String mapX = elmapX.get(i).text();
				String mapY = elmapY.get(i).text();
				String mLevel = elmLevel.get(i).text();
				
				
				
				System.out.println("번호 : " + (i+1));
				FesDataDTO dto = new FesDataDTO();
				dto.setTitle(title);
				dto.setAddress(address);
				dto.setStartDate(startDate);
				dto.setEndDate(endDate);
				dto.setFirstImg(firstImg);
				dto.setMapX(mapX);
				dto.setMapY(mapY);
				if(elmLevel.get(i).text().length() > 0) {
					dto.setMLevel(Integer.parseInt(mLevel));
				}
				
				
				System.out.println(dto.getTitle());
				System.out.println(dto.getAddress());
				System.out.println(dto.getStartDate());
				System.out.println(dto.getEndDate());
				System.out.println(dto.getFirstImg());
				System.out.println(dto.getMapX());
				System.out.println(dto.getMapY());
				System.out.println(dto.getMLevel());
				mapper.insert(dto);
			}		
					
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
