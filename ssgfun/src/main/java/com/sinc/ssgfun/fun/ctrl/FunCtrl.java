package com.sinc.ssgfun.fun.ctrl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sinc.ssgfun.fun.service.FunService;

@Controller
@RequestMapping("/")
public class FunCtrl {

	private static final Logger logger = LoggerFactory.getLogger(FunCtrl.class);
	
	@Resource(name="funService")
	private FunService funService;
	
}
