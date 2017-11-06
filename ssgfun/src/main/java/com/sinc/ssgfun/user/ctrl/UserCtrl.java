package com.sinc.ssgfun.user.ctrl;

import java.util.HashMap;
import java.util.Map;

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
	public Map<String, Object> attCheck(HttpSession session) {
		logger.info("UserCtrl attCheck");
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		System.out.println("loginUser >>>>>>>>>>>>>>>>> " + loginUser.toString());
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		int result = userService.attCheck(loginUser);
		resultMap.put("result", result);
		
		AttendVO attInfo = userService.attInfo(loginUser);
		if((attInfo.getEaattcnt() > 1) && (attInfo.getEaattcnt() % 7 == 0)) {
			loginUser.setUmoney(100);
			attInfo.setEacnt(userService.obtainMoney(loginUser));
		}
		resultMap.put("eacnt", attInfo.getEacnt());
		resultMap.put("eaattcnt", attInfo.getEaattcnt());
		
		return resultMap;
	}

	@RequestMapping("/obtain.fun")
	@ResponseBody
	public AttendVO obtain(HttpSession session, String obtain) {
		logger.info("UserCtrl obtain");
		
		System.out.println("obtain >>>>>>>>>>>>>> " + obtain);
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");

		AttendVO attInfo = new AttendVO();
		if(obtain.equals("100") || obtain.equals("300") || obtain.equals("500")) {
			loginUser.setUmoney(Integer.parseInt(obtain));
			attInfo.setEacnt(userService.obtainMoney(loginUser));
		} else if(obtain.equals("1000¿øÄíÆù")) {
			loginUser.setUcname(obtain);
			attInfo.setEacnt(userService.obtainCoupon(loginUser));
		} else if(obtain.equals("¿­¸Å+1")) {
			attInfo.setEacnt(userService.obtainAtt(loginUser));
			if(attInfo.getEacnt() == 1) {
				attInfo = userService.attInfo(loginUser);
			}
		}
		
		return attInfo;
	}
}
