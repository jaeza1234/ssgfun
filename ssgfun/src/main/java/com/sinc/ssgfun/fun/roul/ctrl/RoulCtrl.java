package com.sinc.ssgfun.fun.roul.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sinc.ssgfun.fun.roul.service.RoulService;
import com.sinc.ssgfun.user.service.UserService;
import com.sinc.ssgfun.vo.AttendVO;
import com.sinc.ssgfun.vo.UserVO;

@Controller
@RequestMapping("/roul")
public class RoulCtrl {

	private static final Logger logger = LoggerFactory.getLogger(RoulCtrl.class);
	
	@Resource(name="roulService")
	private RoulService roulService;
	
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping("/roul.fun")
	public String roul(HttpSession session, Model model) {
		logger.info("RoulCtrl roul");
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		AttendVO attInfo = userService.attInfo(loginUser);
		
		model.addAttribute("attInfo", attInfo);
		
		return "fun/roul";
	}
	
}
