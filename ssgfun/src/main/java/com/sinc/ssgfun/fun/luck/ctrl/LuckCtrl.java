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
	
	@RequestMapping("/main.fun")
	public String main(HttpSession session, Model model, String animal) {
		logger.info("LuckCtrl main");
		System.out.println("�꽭�뀡 萸먮깘");
		System.out.println(session.getAttribute("msg"));

		Map<String, Object> resultMap = new HashMap<String, Object>();
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
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		UserVO loginUser = (UserVO)session.getAttribute("loginUser");
		if (animal!=null) {
			System.out.println("animal !!");
			resultMap = luckService.luckCheck(loginUser, animal);

			AttendVO attInfo = userService.attInfo(loginUser);
			resultMap.put("eacnt", attInfo.getEacnt());
		}
		
		return resultMap;
	}
	
}
