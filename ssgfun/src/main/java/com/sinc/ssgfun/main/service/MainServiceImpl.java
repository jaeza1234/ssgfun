package com.sinc.ssgfun.main.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sinc.ssgfun.main.sql.MainDao;


@Service("mainService")
public class MainServiceImpl implements MainService {
	
	private static final Logger logger = LoggerFactory.getLogger(MainServiceImpl.class);

	@Resource(name="mainDao")
	private MainDao mainDao;

}
