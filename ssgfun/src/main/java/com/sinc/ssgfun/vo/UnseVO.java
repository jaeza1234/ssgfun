package com.sinc.ssgfun.vo;

public class UnseVO {
	private String name , today, tomorrow, thisweek, thismonth, thisyear, msg;
	private int cnt;
	
	public UnseVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UnseVO(String name, String today, String tomorrow, String thisweek,
			String thismonth, String thisyear, String msg, int cnt) {
		super();
		this.name = name;
		this.today = today;
		this.tomorrow = tomorrow;
		this.thisweek = thisweek;
		this.thismonth = thismonth;
		this.thisyear = thisyear;
		this.msg = msg;
		this.cnt = cnt;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	public String getTomorrow() {
		return tomorrow;
	}

	public void setTomorrow(String tomorrow) {
		this.tomorrow = tomorrow;
	}

	public String getThisweek() {
		return thisweek;
	}

	public void setThisweek(String thisweek) {
		this.thisweek = thisweek;
	}

	public String getThismonth() {
		return thismonth;
	}

	public void setThismonth(String thismonth) {
		this.thismonth = thismonth;
	}

	public String getThisyear() {
		return thisyear;
	}

	public void setThisyear(String thisyear) {
		this.thisyear = thisyear;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	


}
