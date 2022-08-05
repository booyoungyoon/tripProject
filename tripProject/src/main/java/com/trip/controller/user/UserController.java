package com.trip.controller.user;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.trip.domain.UserVO;
import com.trip.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/users/*")
public class UserController {
	private UserService serivce;
	
	@GetMapping("login.do")
	public String loginView() {
		log.info("-------login Page---------");
		return "users/login";
	}
	
	@PostMapping("login.do")
	public String login(Model model, UserVO vo, HttpSession session) {
		log.info("-------login 실행---------");
		UserVO user = serivce.login(vo);
		log.info(user);
		if (user != null) {
			session.setAttribute("user", user);
			return "redirect:/home.do";
		}
		model.addAttribute("message", "잘못된 회원정보입니다.");
		return "users/login";
	}
	
	@GetMapping("join.do")
	public String joinView() {
		log.info("-------join Page---------");
		return "users/join";
	}
	
	@PostMapping("join.do")
	public String join(UserVO vo) {
		log.info("-------join---------");
		log.info(vo.getUserName());
		String birth = vo.getBirth();
		log.info(birth);
		birth = birth.replace(",", "");
		log.info(birth);
		if(birth.length() < 8) {
			birth = birth.substring(0, 6) + 0 + birth.substring(6);
			log.info(birth);
			vo.setBirth(birth);
		}
		vo.setBirth(birth);
		serivce.register(vo);
		log.info("-------- user insert ------------");
		return "redirect:/users/login.do";
	}
	
	@RequestMapping("idFind.do")
	public String idFindView() {
		log.info("-------idFind Page---------");
		return "users/idFind";
	}
	
	@GetMapping("idFindList.do")
	public String idFind(Model model, UserVO vo) {
		log.info("------- idFind ---------");
		List<UserVO> list = serivce.idList(vo);
		log.info(list.isEmpty());
		
		model.addAttribute("list", list);
		
		if(list.isEmpty() == true) {
			model.addAttribute("list", null);
		}
		return "users/userIncludes/idFindList";
	}
	
	@RequestMapping("pwFind.do")
	public String pwFindView() {
		log.info("-------pwFind Page---------");
		return "users/pwFind";
	}
	
	@RequestMapping("passwordFind.do")
	public String pwFind(Model model, UserVO vo) {
		log.info("------- passwordFind ---------");
		UserVO user = serivce.findPassword(vo);
		UserVO rightId = serivce.getId(vo);
		
		model.addAttribute("user", user);
		model.addAttribute("id", rightId);
		
		return "users/userIncludes/findPassword";
	}
	
	
	@RequestMapping("list.do")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", serivce.getUserList());
	}
	
	@RequestMapping("mypage.do")
	public String mypage(Model model) {
		log.info("-------- mypage -----------");
		return "users/mypage";
	}
	
	@GetMapping("withdraw.do")
	public String withdraw(UserVO vo, HttpSession session) {
		log.info(vo.getUserNum());
		serivce.remove(vo.getUserNum());
		session.invalidate();
		return "redirect:/home.do";
	}
	@GetMapping("modify.do")
	public String modifyPage() {
		log.info("------ modifyPage ------");
		return "users/modify";
	}
	
	@PostMapping("modify.do")
	public String modify(UserVO vo, HttpSession session) {
		log.info(vo);
		serivce.modify(vo);
		
		UserVO user = serivce.get(vo.getUserNum());
		session.setAttribute("user", user);
		return "users/mypage";
	}
	//카카오로그인 users/login/getkakao.do

	@GetMapping(value="/login/getkakao.do")
	@ResponseBody
	public String getkakao() throws Exception {
		String reqUrl =
				"https://kauth.kakao.com/oauth/authorize"
				+"?client_id=ee081f9fcdaa8073d2e54374f63e01c8"
				+"&redirect_uri=http://localhost:8081/users/login/getkakao-oauth.do"
				+"&response_type=code";
		return reqUrl;
	}
	//카카오 연동 정보 조회 
	@GetMapping(value="/login/getkakao-oauth.do")
	public String authKakao(
		@RequestParam(value="code", required =false) String code, Model model, HttpSession session) throws Exception {
	System.out.println("여기!");
	
	System.out.println("#########" + code);
	String access_Token = getAccessToken(code);
	System.out.println("###access_Token#### : " + access_Token);
	
	HashMap<String, Object> userInfo = getUserInfo(access_Token);
	System.out.println("###access_Token#### : " + access_Token);
//	System.out.println("####userInfo#### : " + userInfo.get("email"));
	System.out.println("####nickname#### : " + userInfo.get("nickname"));
	System.out.println("userInfo=>" + userInfo);
		
	JsonParser parser = new JsonParser();
//	JsonElement kakaoInfo = parser.parse(String.valueOf(userInfo));
	session.setAttribute("user", userInfo.get("id"));
	model.addAttribute("info", userInfo);
	System.out.println("------->" + model.getAttribute("info"));
	
	return "redirect:/home.do";
	}
	//토큰발급
	private String getAccessToken(String authorize_code) {
		String access_Token = "";
		String refresh_Token ="";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		
		try {
			URL url = new URL(reqURL);
			
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			//url 연결은 입출력에 사용 될수 있고, post 혹은 put요청을 하려면 Setdooutput을 true로 설정해야함
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			//post요청에 필요로 요구하는 파라미터 스트림을 통해 전송
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=ee081f9fcdaa8073d2e54374f63e01c8"); //본인이 발급받은 키 (70d0289eba5f802b9a96043f6181b686)
			sb.append("&redirect_uri=http://localhost:8081/users/login/getkakao-oauth.do");
			sb.append("&code="+authorize_code);
			bw.write(sb.toString());
			bw.flush();
			
			//결과 코드가 200이라면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			
			//요청을 통해 얻은 JSON타입의 response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			
			while((line = br.readLine()) !=null) {
				result +=line;
			}
			System.out.println("response body : " + result);
			
			com.google.gson.JsonParser parser = new com.google.gson.JsonParser();
			JsonElement element = parser.parse(result);
			
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
			
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : "+ refresh_Token);
			
			br.close();
			bw.close();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		return access_Token;
	}
	//유저 정보 조회
	public HashMap<String, Object> getUserInfo(String access_Token) {
		HashMap<String,Object> userInfo = new HashMap<>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);
			
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode );
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			
			while ((line = br.readLine()) !=null) {
				result +=line;
			}
			System.out.println("response body : " + result);
			
			com.google.gson.JsonParser parser = new com.google.gson.JsonParser();
			JsonElement element = parser.parse(result);
			
			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
			
//			String profile_nickname = properties.getAsJsonObject().get("profile_nickname").getAsString();
//			String profile_image = properties.getAsJsonObject().get("profileNickname").getAsString();
//			String email = properties.getAsJsonObject().get("email").getAsString();
//			String gender= properties.getAsJsonObject().get("gender").getAsString();
			
			userInfo.put("accessToken", access_Token);
//			userInfo.put("profileNickname", profile_nickname);
			userInfo.put("snsType", "kakao");
			userInfo.put("id", element.getAsJsonObject().get("id"));
			userInfo.put("lastLoc", element.getAsJsonObject().get("connected_at"));
			userInfo.put("profileImage", properties.getAsJsonObject().get("profile_image").getAsString());
//			userInfo.put("email", email);
			
					
			
		}catch(IOException e) {
			e.printStackTrace();
		
	}
	return userInfo;
}
}