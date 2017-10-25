package com.sinc.ssgfun.fun.luck.ctrl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sinc.ssgfun.fun.luck.service.LuckService;
import com.sinc.ssgfun.vo.UserVO;

@Controller
@RequestMapping("/luck")
public class LuckCtrl {

	private static final Logger logger = LoggerFactory.getLogger(LuckCtrl.class);
	
	@Resource(name="luckService")
	private LuckService luckService;
	
	@RequestMapping("/main.fun")
	public String main(HttpSession session, String animal) {
		logger.info("LuckCtrl main");
		System.out.println(animal);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		UserVO loginUser = (UserVO)session.getAttribute("loginUser");
		String msg = null;
		if (animal!=null) {
			System.out.println("애니멀 널 아니래");
			resultMap = luckService.luckCheck(loginUser, animal);
		}
		
		System.out.println(resultMap.get("msg"));
		
		
		return "luck";
	}
	
	
	
}
