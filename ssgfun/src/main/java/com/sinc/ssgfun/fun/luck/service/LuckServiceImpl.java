package com.sinc.ssgfun.fun.luck.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sinc.ssgfun.fun.luck.sql.LuckDao;
import com.sinc.ssgfun.vo.UserVO;

@Service("luckService")
public class LuckServiceImpl implements LuckService {

	private static final Logger logger = LoggerFactory.getLogger(LuckServiceImpl.class);

	@Resource(name="luckDao")
	private LuckDao luckDao;

	@Override
	public Map<String, Object> luckCheck(UserVO loginUser, String animal) {
		System.out.println("LuckServiceImpl luckCheck");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("msg", luckDao.luckCheckRow(animal));
		
		int result = luckDao.freeResult();
		//
		if (result==0) {
			
		}
		//결과에 따라 열매 변경해야 됨.
		resultMap.put("result", luckDao.freeResult());
		
		return resultMap;
	}
}
