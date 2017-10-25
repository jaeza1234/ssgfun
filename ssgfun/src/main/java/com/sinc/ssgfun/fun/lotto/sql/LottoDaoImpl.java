package com.sinc.ssgfun.fun.lotto.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository("lottoDao")
public class LottoDaoImpl implements LottoDao {

	private static final Logger logger = LoggerFactory.getLogger(LottoDaoImpl.class);
	private static final String LOTTOPREFIX = "com.sinc.ssgfun.mapper.lotto.";
	
	@Resource(name="sqlSession")
	private SqlSession session;
}
