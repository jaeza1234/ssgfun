package com.sinc.ssgfun.fun.luck.service;

import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sinc.ssgfun.fun.luck.sql.LuckDao;
import com.sinc.ssgfun.vo.UserVO;

@Service("luckService")
public class LuckServiceImpl implements LuckService {

	private static final Logger logger = LoggerFactory.getLogger(LuckServiceImpl.class);

	@Resource(name="luckDao")
	private LuckDao luckDao;

	@Override
	public Map<String, Object> luckCheck(UserVO loginUser, String animal) {
		System.out.println("LuckServiceImpl luckCheck");
		return null;
	}
}
