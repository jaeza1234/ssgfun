package com.sinc.ssgfun.fun.lotto.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sinc.ssgfun.fun.lotto.sql.LottoDao;

@Service("lottoService")
public class LottoServiceImpl implements LottoService {

	private static final Logger logger = LoggerFactory.getLogger(LottoServiceImpl.class);

	@Resource(name="lottoDao")
	private LottoDao lottoDao;
}
