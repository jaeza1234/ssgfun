package com.sinc.ssgfun.fun.luck.ctrl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sinc.ssgfun.fun.luck.service.LuckService;
import com.sinc.ssgfun.user.service.UserService;
import com.sinc.ssgfun.vo.AttendVO;
import com.sinc.ssgfun.vo.UserVO;

@Controller
@RequestMapping("/luck")
public class LuckCtrl {

	private static final Logger logger = LoggerFactory.getLogger(LuckCtrl.class);
	
	@Resource(name="luckService")
	private LuckService luckService;
	@Resource(name="userService")
	private UserService userService;
	Map<String, Object> resultMap = new HashMap<String, Object>();
	
	@RequestMapping("/main.fun")
	public String main(HttpSession session, Model model, String animal) {
		logger.info("LuckCtrl main");
		System.out.println("세션 뭐냐");
		System.out.println(session.getAttribute("msg"));
		if (session.getAttribute("msg")==null) {
			session.setAttribute("msg", "확인하려는 띠의 동물을 선택하세요.");
			
		}
		resultMap.put("result", 1);
		model.addAttribute("resultMap", resultMap);
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		AttendVO attInfo = userService.attInfo(loginUser);
		model.addAttribute("attInfo", attInfo);
		
		return "fun/luck";
	}
	
	@RequestMapping("/check.fun")
	@ResponseBody
	public Map<String, Object> check(HttpSession session, Model model,String animal)  {
		logger.info("LuckCtrl check");
		System.out.println(animal);
		
		UserVO loginUser = (UserVO)session.getAttribute("loginUser");
		
		if (animal!=null) {
			System.out.println("애니멀 널 아니래");
			resultMap = luckService.luckCheck(loginUser, animal);
			session.setAttribute("msg", resultMap.get("msg"));
		}
		
		//AttendVO attInfo = userService.attInfo(loginUser);
		//model.addAttribute("attInfo", attInfo);
		//model.addAttribute("resultMap", resultMap);
		
		
		
		
		
		return resultMap;
	}
	
	/*오늘의 운세 api 사용
	 * 
	 * String url = "https://api.un7.kr/api/v1/day";

	String queryString = "targetYear={TARGET_YEAR}&targetMonth={TARGET_MONTH}&targetDay={TARGET_DAY}"
	                    + "&birthYear={BIRTH_YEAR}&birthMonth={BIRTH_MONTH}&birthDay={BIRTH_DAY}&birthHour={BIRTH_HOUR}"
	                    + "&isLunar={IS_LUNAR}"
	                    + "&api-key={API_KEY}";
	queryString = queryString.replace("{API_KEY}", "943156c8f56a4c88fad1ba1379e3bf00"); //API KEY
	queryString = queryString.replace("{TARGET_YEAR}", "2016");          //운세를 보고자 하는 날의 년
	queryString = queryString.replace("{TARGET_MONTH}", "9");			 //운세를 보고자 하는 날의 월
	queryString = queryString.replace("{TARGET_DAY}", "15");			 //운세를 보고자 하는 날의 일
	queryString = queryString.replace("{BIRTH_YEAR}", "1980");			 //생년
	queryString = queryString.replace("{BIRTH_MONTH}", "6");			 //생월
	queryString = queryString.replace("{BIRTH_DAY}", "30");				 //생일
	queryString = queryString.replace("{BIRTH_HOUR}", "12");			 //생시
	queryString = queryString.replace("{IS_LUNAR}", "false");			 //음력 여부, 양력이면 false로 주세요.

	URL obj = new URL(url + "?" + queryString);
	HttpURLConnection con = (HttpURLConnection) obj.openConnection();
	con.setRequestMethod("GET");
	con.setConnectTimeout(5000);
	con.setReadTimeout(5000);

	BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));

	String inputLine;
	StringBuffer response = new StringBuffer();

	while ((inputLine = in.readLine()) != null) {
	    response.append(inputLine);
	}
	in.close();

	System.out.println(response.toString());*/
	
}
