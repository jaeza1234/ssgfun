package com.sinc.ssgfun.fun.lotto.ctrl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sinc.ssgfun.fun.lotto.service.LottoService;
import com.sinc.ssgfun.user.service.UserService;
import com.sinc.ssgfun.vo.AttendVO;
import com.sinc.ssgfun.vo.UserVO;

@Controller
@RequestMapping("/lotto")
public class LottoCtrl {

	private static final Logger logger = LoggerFactory.getLogger(LottoCtrl.class);
	
	@Resource(name="lottoService")
	private LottoService lottoService;
	
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping("/myLotto.fun")
	public String myLotto(HttpSession session, Model model) {
		logger.info("LottoCtrl myLotto");
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		AttendVO attInfo = userService.attInfo(loginUser);
		model.addAttribute("attInfo", attInfo);
		
		return "fun/lotto";
	}
	
	@RequestMapping("/randomLotto.fun")
	@ResponseBody
	public List<Integer> randomLotto() {
		logger.info("LottoCtrl randomLotto");
		
		Set<Integer> set = new HashSet<Integer>();
        while( set.size() < 6){
            Double d = Math.random() * 45 + 1;
            set.add(d.intValue()); 
        }
         
        List<Integer> randomlist = new ArrayList<Integer>(set);
        Collections.sort(randomlist);

		return randomlist;
	}

	@RequestMapping("/buyLotto.fun")
	@ResponseBody
	public String buyLotto(String lottoNum) {
		logger.info("LottoCtrl buyLotto");
		
		String[] nums = lottoNum.split(" ");
		
		
		for(String num : nums) {
			
		}
		int result = 1;
//		int result = lottoService.buyLotto();
		
		System.out.println("NUM >>>>>>>>>>>>>>>>>> " + lottoNum);
		
		return result + "";
	}
	
}
