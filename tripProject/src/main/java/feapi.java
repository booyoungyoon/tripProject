
import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class feapi {
	//url 접속해서 xml 정보 가져온후 parser로 원하는 정보 추출하는 작업
	
	public static void main(String[] args){
	DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	try {
		DocumentBuilder builder = factory.newDocumentBuilder();
		// 웹서버를 제공하는 url 정보를 연결해서 데이터 가져오기
		StringBuffer pharm_url = new StringBuffer();
		pharm_url.append("http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival");
		pharm_url.append("?serviceKey=sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&eventStartDate=20220701");

		//웹서버에 저굥ㅇ하기
		URL url = new URL(pharm_url.toString());
		
		
		//접속해서 데이터 읽어오기
	BufferedInputStream xmldata = new BufferedInputStream(url.openStream());
		Document document = builder.parse(xmldata);//inputstream 객체의 형태로 파싱할 정보를 넘겨준다
		
		Element root = document.getDocumentElement();
		System.out.println(root.getTagName());
		NodeList list = root.getElementsByTagName("item");
		System.out.println(list.getLength());
		
		for(int i=0; i<list.getLength(); i++) {
			Node node =list.item(i);
		NodeList item_childlist = node.getChildNodes();
		for(int j=0; j<item_childlist.getLength(); j++) {
			Node item_child = item_childlist.item(j);
			System.out.print(item_child.getNodeName()+":"+item_child.getTextContent());
			System.out.print(",");
		}
		System.out.println();
		}
		
	}catch (ParserConfigurationException e) {
		e.printStackTrace();
	}catch (SAXException e) {
		e.printStackTrace();
	}catch(IOException e) {
		e.printStackTrace();
	}
	}
}
