package com.sinc.ssgfun.user.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	
	private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	private static final String USERPREFIX = "com.sinc.careerup.mapper.user.";

	@Resource(name="sqlSession")
	private SqlSession session;
}