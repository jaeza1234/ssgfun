package com.sinc.ssgfun.user.ctrl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sinc.ssgfun.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserCtrl {

	private static final Logger logger = LoggerFactory.getLogger(UserCtrl.class);
	
	@Resource(name="userService")
	private UserService userService;
	
}
