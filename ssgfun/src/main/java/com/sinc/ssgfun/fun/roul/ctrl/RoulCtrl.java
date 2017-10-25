package com.sinc.ssgfun.fun.roul.ctrl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sinc.ssgfun.fun.roul.service.RoulService;

@Controller
@RequestMapping("/roul")
public class RoulCtrl {

	private static final Logger logger = LoggerFactory.getLogger(RoulCtrl.class);
	
	@Resource(name="roulService")
	private RoulService roulService;
	
}
