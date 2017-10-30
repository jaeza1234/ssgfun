package com.sinc.ssgfun.main.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.sinc.ssgfun.vo.UserVO;

@Repository("mainDao")
public class MainDaoImpl implements MainDao {
	
	private static final Logger logger = LoggerFactory.getLogger(MainDaoImpl.class);
	private static final String MAINPREFIX = "com.sinc.ssgfun.mapper.main.";

	@Resource(name="sqlSession")
	private SqlSession session;

	@Override
	public int plusFruitRow(UserVO loginUser, int num) {
		System.out.println("MainDaoImpl plusFruitRow");
		
		for (int i = 0; i < num; i++) {
			session.update(MAINPREFIX + "plusChance", loginUser);
		}
		
		return 0;
	}
}
