package com.sinc.ssgfun.fun.luck.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sinc.ssgfun.fun.luck.sql.LuckDao;

@Service("luckService")
public class LuckServiceImpl implements LuckService {

	private static final Logger logger = LoggerFactory.getLogger(LuckServiceImpl.class);

	@Resource(name="luckDao")
	private LuckDao luckDao;
}
