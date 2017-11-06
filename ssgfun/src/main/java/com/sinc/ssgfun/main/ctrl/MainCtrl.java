package com.sinc.ssgfun.main.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpRequest;
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
	public String main(HttpSession session, HttpServletRequest req, Model model) {
		logger.info("MainCtrl main");
		
		UserVO loginUser = new UserVO();
		String uno = (String)req.getParameter("uno");
		System.out.println("Main uno >>>>>>>>>> " + uno);
		UserVO myInfo = new UserVO();
		if(uno != null) {
			loginUser.setUno(uno);
			loginUser.setUpwd(uno);
			session.setAttribute("loginUser", loginUser);
			myInfo = userService.getMyInfo(loginUser);
		}
		
		model.addAttribute("myInfo", myInfo);
		
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
	
	@RequestMapping("/recharge.fun")
	public String recharge() {
		logger.info("MainCtrl recharge");
		
		return "recharge/moneyRecharge";
	}
	
	
	@RequestMapping("/moneyRecharge.fun")
	@ResponseBody
	public int moneyRecharge(HttpSession session, String money) {
		logger.info("MainCtrl moneyRecharge");
		
		System.out.println("들어온돈:"+money);
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		loginUser.setUmoney(Integer.parseInt(money));
		System.out.println(Integer.parseInt(money)/10000);
		mainService.plusFruit(loginUser, Integer.parseInt(money)/10000);
		userService.obtainMoney(loginUser);
		return Integer.parseInt(money)/10000;
	}
	
	
}
