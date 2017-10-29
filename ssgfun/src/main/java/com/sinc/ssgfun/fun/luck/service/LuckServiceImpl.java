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
		
		///그 동물에 대한 운세를 맴에 심는다.
		resultMap.put("unse", luckDao.luckCheckRow(animal));
		
		//운세 총조회수 1 올리고 이 사용자가 당첨 됐느지 확인
		int result = luckDao.freeResult();
		
		//당첨되면 열매 추가
		if (result==0) {
			System.out.println("당첨 됐어요!!");
			luckDao.plusChance(loginUser);
		}
		//결과에 따라 열매 변경해야 됨.
		resultMap.put("result", result);
		
		return resultMap;
	}
}
