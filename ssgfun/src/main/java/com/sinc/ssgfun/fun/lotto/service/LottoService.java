package com.sinc.ssgfun.fun.lotto.service;

import java.util.List;

import com.sinc.ssgfun.vo.LottoVO;
import com.sinc.ssgfun.vo.UserVO;

public interface LottoService {

	int buyLotto(LottoVO lotto);

	List<LottoVO> getMyLotto(LottoVO lotto);

	List<LottoVO> getMyNextLotto(LottoVO lotto);

	int winChk(LottoVO lotto);

}
