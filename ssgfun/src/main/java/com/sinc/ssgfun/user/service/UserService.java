package com.sinc.ssgfun.user.service;

import com.sinc.ssgfun.vo.AttendVO;
import com.sinc.ssgfun.vo.UserVO;

public interface UserService {

	AttendVO attInfo(UserVO loginUser);

	int attCheck(UserVO loginUser);

}
