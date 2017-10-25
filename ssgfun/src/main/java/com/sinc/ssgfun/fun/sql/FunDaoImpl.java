package com.sinc.ssgfun.fun.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;


@Repository("funDao")
public class FunDaoImpl implements FunDao {
	
	private static final Logger logger = LoggerFactory.getLogger(FunDaoImpl.class);
	private static final String FUNPREFIX = "com.sinc.careerup.mapper.fun.";
	
	@Resource(name="sqlSession")
	private SqlSession session;
}
