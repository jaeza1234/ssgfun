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
import com.sinc.ssgfun.vo.LottoVO;
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
	
	@RequestMapping("/myLottoList.fun")
	@ResponseBody
	public List<LottoVO> myLottoList(HttpSession session, String gdate) {
		logger.info("LottoCtrl myLottoList");
		
		System.out.println("lotto >>>>>>>>>>>>> " + gdate);
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");

		LottoVO lotto = new LottoVO();
		lotto.setUno(loginUser.getUno());
		lotto.setGdate(gdate);
		
        List<LottoVO> myLottoList = lottoService.getMyLotto(lotto);
        
		return myLottoList;
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
	public String buyLotto(HttpSession session, String lottoNum, String gno, String[] lotto, Model model) {
		logger.info("LottoCtrl buyLotto");
		System.out.println(lotto.length);

		LottoVO lotto1 = new LottoVO();
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		System.out.println(loginUser.toString());
		lotto1.setUlnum1(Integer.parseInt(lotto[0]));
		lotto1.setUlnum2(Integer.parseInt(lotto[1]));
		lotto1.setUlnum3(Integer.parseInt(lotto[2]));
		lotto1.setUlnum4(Integer.parseInt(lotto[3]));
		lotto1.setUlnum5(Integer.parseInt(lotto[4]));
		lotto1.setUlnum6(Integer.parseInt(lotto[5]));

		lotto1.setUlname(gno + "È¸Â÷");
		lotto1.setUno(loginUser.getUno());
		
		int result = lottoService.buyLotto(lotto1);
		
		List<LottoVO> myLotto = new ArrayList<LottoVO>();
		if(result == 1) {
//			myLotto = lottoService.getMyLotto(loginUser);
		}
		AttendVO attInfo = userService.attInfo(loginUser);
//		List<LottoVO> myLotto2 = lottoService.getMyLotto(loginUser);
		
		model.addAttribute("attInfo", attInfo);
//		model.addAttribute("myLotto", myLotto2);
		return "redirect:./myLotto.fun";
	}
	
	@RequestMapping("/prevMyLotto.fun")
	@ResponseBody
	public List<LottoVO> prevMyLotto(HttpSession session, String gdate) {
		logger.info("LottoCtrl myLottoList");
		
		System.out.println("prev lotto >>>>>>>>>>>>> " + gdate );
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");

		LottoVO lotto = new LottoVO();
		lotto.setUno(loginUser.getUno());
		lotto.setGdate(gdate);
		
        List<LottoVO> myLottoList = lottoService.getMyLotto(lotto);

		return myLottoList;
	}
	
	@RequestMapping("/nextMyLotto.fun")
	@ResponseBody
	public List<LottoVO> nextMyLotto(HttpSession session, String gdate) {
		logger.info("LottoCtrl myLottoList");
		
		System.out.println("next lotto >>>>>>>>>>>>> " + gdate );
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		
		LottoVO lotto = new LottoVO();
		lotto.setUno(loginUser.getUno());
		lotto.setGdate(gdate);
		
		List<LottoVO> myLottoList = lottoService.getMyLotto(lotto);
		
		return myLottoList;
	}
	
}
