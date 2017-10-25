package com.sinc.ssgfun.fun.lotto.sql;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.sinc.ssgfun.vo.LottoVO;
import com.sinc.ssgfun.vo.UserVO;

@Repository("lottoDao")
public class LottoDaoImpl implements LottoDao {

	private static final Logger logger = LoggerFactory.getLogger(LottoDaoImpl.class);
	private static final String LOTTOPREFIX = "com.sinc.ssgfun.mapper.lotto.";
	
	@Resource(name="sqlSession")
	private SqlSession session;

	@Override
	public int buyLotto(LottoVO lotto) {
		logger.info("LottoDaoImpl buyLotto");
		
		return session.insert(LOTTOPREFIX + "buyLotto", lotto);
	}

	@Override
	public List<LottoVO> getMyLotto(UserVO loginUser) {
		logger.info("LottoDaoImpl getMyLotto");
		
		return session.selectList(LOTTOPREFIX + "getMyLotto", loginUser);
	}
}
