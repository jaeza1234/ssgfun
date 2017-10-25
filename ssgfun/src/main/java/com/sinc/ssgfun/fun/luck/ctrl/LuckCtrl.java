package com.sinc.ssgfun.fun.luck.ctrl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sinc.ssgfun.fun.luck.service.LuckService;

@Controller
@RequestMapping("/luck")
public class LuckCtrl {

	private static final Logger logger = LoggerFactory.getLogger(LuckCtrl.class);
	
	@Resource(name="luckService")
	private LuckService luckService;
	
}
