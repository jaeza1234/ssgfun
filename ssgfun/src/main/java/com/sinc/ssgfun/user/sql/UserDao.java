package com.sinc.ssgfun.user.sql;

import com.sinc.ssgfun.vo.AttendVO;
import com.sinc.ssgfun.vo.UserVO;

public interface UserDao {

	AttendVO attInfo(UserVO loginUser);

	int attCheck(UserVO loginUser);

}
