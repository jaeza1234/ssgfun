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
		
		return "fun/luck";
	}
	
	@RequestMapping("/check.fun")
	@ResponseBody
	public Map<String, Object> check(HttpSession session, Model model,String animal) {
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
	
	
	
}
