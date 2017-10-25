package com.sinc.ssgfun.fun.roul.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;


@Repository("roulDao")
public class RoulDaoImpl implements RoulDao {

	private static final Logger logger = LoggerFactory.getLogger(RoulDaoImpl.class);
	private static final String ROULPREFIX = "com.sinc.ssgfun.mapper.roul.";
	
	@Resource(name="sqlSession")
	private SqlSession session;
}
