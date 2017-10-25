package com.sinc.ssgfun.fun.roul.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sinc.ssgfun.fun.roul.sql.RoulDao;

@Service("roulService")
public class RoulServiceImpl implements RoulService {

	private static final Logger logger = LoggerFactory.getLogger(RoulServiceImpl.class);

	@Resource(name="roulDao")
	private RoulDao roulDao;
}
