package com.sinc.ssgfun.main.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sinc.ssgfun.main.service.MainService;
import com.sinc.ssgfun.vo.UserVO;


@Controller
@RequestMapping("/")
public class MainCtrl {
	
	private static final Logger logger = LoggerFactory.getLogger(MainCtrl.class);
	
	@Resource(name="mainService")
	private MainService mainService;
	
	@RequestMapping("/main.fun")
	public String main(HttpSession session) {
		logger.info("MainCtrl main");
		
		UserVO loginUser = new UserVO();
		
		loginUser.setUno("p908uz");
		loginUser.setUpwd("ssg2017");
		loginUser.setUname("±¹º´µµ");
		loginUser.setUemail("p908uz@shinsegae.com");
		loginUser.setUphone(01011112222);
		loginUser.setUaccount("111-1111-1111");
		loginUser.setRegdate("20171025");
		
		session.setAttribute("loginUser", loginUser);
		
		return "main";
	}
	
}
