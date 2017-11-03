package com.sinc.ssgfun.fun.lotto.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sinc.ssgfun.fun.lotto.sql.LottoDao;
import com.sinc.ssgfun.vo.LottoVO;
import com.sinc.ssgfun.vo.UserVO;

@Service("lottoService")
public class LottoServiceImpl implements LottoService {

	private static final Logger logger = LoggerFactory.getLogger(LottoServiceImpl.class);

	@Resource(name="lottoDao")
	private LottoDao lottoDao;

	@Override
	public int buyLotto(LottoVO lotto) {
		logger.info("LottoServiceImpl buyLotto");
		
		return lottoDao.buyLotto(lotto);
	}

	@Override
	public List<LottoVO> getMyLotto(LottoVO lotto) {
		logger.info("LottoServiceImpl getMyLotto");
		
		return lottoDao.getMyLotto(lotto);
	}

	@Override
	public List<LottoVO> getMyNextLotto(LottoVO lotto) {
		logger.info("LottoServiceImpl getMyNextLotto");
		
		return lottoDao.getMyNextLotto(lotto);
	}

	@Override
	public int winChk(LottoVO lotto) {
		logger.info("LottoServiceImpl winChk");
		
		return lottoDao.winChk(lotto);
	}
}
