package com.sinc.ssgfun.fun.lotto.sql;

import java.util.List;

import com.sinc.ssgfun.vo.LottoVO;
import com.sinc.ssgfun.vo.UserVO;

public interface LottoDao {

	int buyLotto(LottoVO lotto);

	List<LottoVO> getMyLotto(UserVO loginUser);

}
