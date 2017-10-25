package com.sinc.ssgfun.user.ctrl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sinc.ssgfun.fun.ctrl.FunCtrl;
import com.sinc.ssgfun.user.service.UserService;

@Controller
@RequestMapping("/")
public class UserCtrl {

	private static final Logger logger = LoggerFactory.getLogger(FunCtrl.class);
	
	@Resource(name="userService")
	private UserService userService;
	
}
