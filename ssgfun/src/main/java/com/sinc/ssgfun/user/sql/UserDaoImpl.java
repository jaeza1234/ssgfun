package com.sinc.ssgfun.user.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.sinc.ssgfun.vo.AttendVO;
import com.sinc.ssgfun.vo.UserVO;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	
	private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	private static final String ATTPREFIX = "com.sinc.ssgfun.mapper.att.";

	@Resource(name="sqlSession")
	private SqlSession session;

	@Override
	public AttendVO attInfo(UserVO loginUser) {
		logger.info("UserDaoImpl attInfo");

		return session.selectOne(ATTPREFIX + "attInfo", loginUser);
	}

	@Override
	public int attCheck(UserVO loginUser) {
		logger.info("UserDaoImpl attCheck");
	
		return session.update(ATTPREFIX + "attCheck", loginUser);
	}
}