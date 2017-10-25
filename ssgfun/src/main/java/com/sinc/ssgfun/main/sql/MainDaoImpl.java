package com.sinc.ssgfun.main.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository("mainDao")
public class MainDaoImpl implements MainDao {
	
	private static final Logger logger = LoggerFactory.getLogger(MainDaoImpl.class);
	private static final String MAINPREFIX = "com.sinc.careerup.mapper.main.";

	@Resource(name="sqlSession")
	private SqlSession session;
}
