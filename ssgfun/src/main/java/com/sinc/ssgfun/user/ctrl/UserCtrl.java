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

	@RequestMapping("/obtain.fun")
	@ResponseBody
	public AttendVO obtain(HttpSession session, String obtain) {
		logger.info("UserCtrl obtain");
		
		System.out.println("obtain >>>>>>>>>>>>>> " + obtain);
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");

		AttendVO attInfo = new AttendVO();
		if(obtain.equals("0") || obtain.equals("1") || obtain.equals("2") || obtain.equals("3") || obtain.equals("5") || obtain.equals("6")
				|| obtain.equals("7") || obtain.equals("8") || obtain.equals("9")) {
			loginUser.setUmoney(Integer.parseInt(obtain));
			attInfo.setEacnt(userService.obtainMoney(loginUser));
		} else if(obtain.equals("1000원쿠폰")) {
			loginUser.setUcname(obtain);
			attInfo.setEacnt(userService.obtainCoupon(loginUser));
		} else if(obtain.equals("한번더")) {
			attInfo.setEacnt(userService.obtainAtt(loginUser));
			if(attInfo.getEacnt() == 1) {
				attInfo = userService.attInfo(loginUser);
			}
		}
		
		return attInfo;
	}
}
