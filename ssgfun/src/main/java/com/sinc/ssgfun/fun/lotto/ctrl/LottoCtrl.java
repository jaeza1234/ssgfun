package com.sinc.ssgfun.fun.lotto.ctrl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sinc.ssgfun.fun.lotto.service.LottoService;

@Controller
@RequestMapping("/lotto")
public class LottoCtrl {

	private static final Logger logger = LoggerFactory.getLogger(LottoCtrl.class);
	
	@Resource(name="lottoService")
	private LottoService lottoService;
	
}
