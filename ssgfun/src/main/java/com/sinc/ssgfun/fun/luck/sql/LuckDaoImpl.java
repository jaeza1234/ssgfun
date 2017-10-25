package com.sinc.ssgfun.fun.luck.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository("lottoDao")
public class LuckDaoImpl implements LuckDao {

	private static final Logger logger = LoggerFactory.getLogger(LuckDaoImpl.class);
	private static final String LUCKPREFIX = "com.sinc.careerup.mapper.luck.";
	
	@Resource(name="sqlSession")
	private SqlSession session;
}
