package com.sinc.ssgfun.fun.luck.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.sinc.ssgfun.vo.UserVO;

@Repository("luckDao")
public class LuckDaoImpl implements LuckDao {

	private static final Logger logger = LoggerFactory.getLogger(LuckDaoImpl.class);
	private static final String LUCKPREFIX = "com.sinc.ssgfun.mapper.luck.";
	
	@Resource(name="sqlSession")
	private SqlSession session;

	@Override
	public String luckCheckRow(String animal) {
		System.out.println("LuckDaoImpl luckCheckRow");
		//동물 이름으로 운세 msg select
		return session.selectOne(LUCKPREFIX + "luckCheck", animal);
	}

	@Override
	public int freeResult() {
		System.out.println("LuckDaoImpl freeResult");
		//운세 한명이 조회할 때 마다 전체 조회수 1 추가 하고
		session.update(LUCKPREFIX + "cntPlus");
		//조회 25명 마다 열매 지급
		int cnt = session.selectOne(LUCKPREFIX + "getCnt");
		int result = cnt % 25;
		System.out.println("나머지는" + result);
		
		return result;
	}

	@Override
	public int plusChance(UserVO loginUser) {
		return session.update(LUCKPREFIX + "plusChance", loginUser);
	}
}
