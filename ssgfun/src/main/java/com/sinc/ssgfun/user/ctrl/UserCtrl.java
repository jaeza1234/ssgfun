package com.sinc.ssgfun.user.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sinc.ssgfun.user.service.UserService;
import com.sinc.ssgfun.vo.AttendVO;
import com.sinc.ssgfun.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserCtrl {

	private static final Logger logger = LoggerFactory.getLogger(UserCtrl.class);
	
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping("/att.fun")
	public String att(HttpSession session, Model model) {
		logger.info("UserCtrl att");
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		AttendVO attInfo = userService.attInfo(loginUser);
		model.addAttribute("attInfo", attInfo);
		
		return "att/attend";
	}
	
	@RequestMapping("/attCheck.fun")
	@ResponseBody
	public String attCheck(HttpSession session) {
		logger.info("UserCtrl attCheck");
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		System.out.println("loginUser >>>>>>>>>>>>>>>>> " + loginUser.toString());
		int result = userService.attCheck(loginUser);
		
		return result + "";
	}
}
