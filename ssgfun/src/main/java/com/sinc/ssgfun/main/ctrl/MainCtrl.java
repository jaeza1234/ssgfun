package com.sinc.ssgfun.main.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sinc.ssgfun.main.service.MainService;
import com.sinc.ssgfun.user.service.UserService;
import com.sinc.ssgfun.vo.AttendVO;
import com.sinc.ssgfun.vo.UserVO;


@Controller
@RequestMapping("/")
public class MainCtrl {
	
	private static final Logger logger = LoggerFactory.getLogger(MainCtrl.class);
	
	@Resource(name="mainService")
	private MainService mainService;
	
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping("/main.fun")
	public String main(HttpSession session) {
		logger.info("MainCtrl main");
		
		UserVO loginUser = new UserVO();
		
		loginUser.setUno("p908uz");
		loginUser.setUpwd("ssg2017");
		loginUser.setUname("������");
		loginUser.setUemail("p908uz@shinsegae.com");
		loginUser.setUphone(01011112222);
		loginUser.setUaccount("111-1111-1111");
		loginUser.setRegdate("20171025");
		
		session.setAttribute("loginUser", loginUser);
		
		return "main";
	}
	
	@RequestMapping("/ssgFun.fun")
	public String ssgFun() {
		logger.info("MainCtrl ssgFun");
		
		return "fun/ssgFun";
	}
	
	@RequestMapping("/event.fun")
	public String event() {
		logger.info("MainCtrl event");
		
		return "event/event";
	}
	
	@RequestMapping("/eventDetail.fun")
	public String eventDetail() {
		logger.info("MainCtrl event");
		
		return "event/eventDetail";
	}

	@RequestMapping("/play.fun")
	@ResponseBody
	public String play(HttpSession session, Model model) {
		logger.info("MainCtrl play");
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		int result = userService.play(loginUser);
		
		AttendVO attInfo = new AttendVO();
		if(result == 1) {
			attInfo = userService.attInfo(loginUser);
		}
		
		return attInfo.getEacnt() + "";
	}
	
}
