package com.sinc.ssgfun.fun.luck.sql;

import com.sinc.ssgfun.vo.UserVO;

public interface LuckDao {
	
	public String luckCheckRow(String animal);
	public int	freeResult();
	public int plusChance(UserVO loginUser);

}
