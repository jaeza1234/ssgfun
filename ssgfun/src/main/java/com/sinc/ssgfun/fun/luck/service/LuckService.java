package com.sinc.ssgfun.fun.luck.service;

import java.util.Map;

import com.sinc.ssgfun.vo.UserVO;

public interface LuckService {
	
	public Map<String, Object> luckCheck(UserVO loginUser, String animal);

}
