package com.sinc.ssgfun.fun.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sinc.ssgfun.fun.sql.FunDao;

@Service("funService")
public class FunServiceImpl implements FunService {
	private static final Logger logger = LoggerFactory.getLogger(FunServiceImpl.class);

	@Resource(name="funDao")
	private FunDao funDao;
}
