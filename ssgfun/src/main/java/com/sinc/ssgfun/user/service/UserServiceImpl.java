package com.sinc.ssgfun.user.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sinc.ssgfun.user.sql.UserDao;
import com.sinc.ssgfun.vo.AttendVO;
import com.sinc.ssgfun.vo.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {

	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Resource(name="userDao")
	private UserDao userDao;

	@Override
	public AttendVO attInfo(UserVO loginUser) {
		logger.info("UserServiceImpl attInfo");

		return userDao.attInfo(loginUser);
	}

	@Override
	public int attCheck(UserVO loginUser) {
		logger.info("UserServiceImpl attCheck");
		
		return userDao.attCheck(loginUser);
	}

	@Override
	public int play(UserVO loginUser) {
		logger.info("UserServiceImpl play");

		return userDao.play(loginUser);
	}

	@Override
	public int obtainMoney(UserVO loginUser) {
		logger.info("UserServiceImpl obtainMoney");

		return userDao.obtainMoney(loginUser);
	}

	@Override
	public int obtainCoupon(UserVO loginUser) {
		logger.info("UserServiceImpl obtainCoupon");

		return userDao.obtainCoupon(loginUser);
	}

}