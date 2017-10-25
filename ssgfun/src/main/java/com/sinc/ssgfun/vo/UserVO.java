package com.sinc.ssgfun.vo;

public class UserVO {
	private String uno;		
	private String upwd;		
	private String uname;	
	private String uemail;	
	private int uphone;
	private String uaccount;	
	private int umoney;		
	private String regdate;	
	private String moddate;
	
	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserVO(String uno, String upwd, String uname, String uemail,
			int uphone, String uaccount, int umoney, String regdate,
			String moddate) {
		super();
		this.uno = uno;
		this.upwd = upwd;
		this.uname = uname;
		this.uemail = uemail;
		this.uphone = uphone;
		this.uaccount = uaccount;
		this.umoney = umoney;
		this.regdate = regdate;
		this.moddate = moddate;
	}

	@Override
	public String toString() {
		return "UserVO [uno=" + uno + ", upwd=" + upwd + ", uname=" + uname
				+ ", uemail=" + uemail + ", uphone=" + uphone + ", uaccount="
				+ uaccount + ", umoney=" + umoney + ", regdate=" + regdate
				+ ", moddate=" + moddate + "]";
	}

	public String getUno() {
		return uno;
	}

	public void setUno(String uno) {
		this.uno = uno;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public int getUphone() {
		return uphone;
	}

	public void setUphone(int uphone) {
		this.uphone = uphone;
	}

	public String getUaccount() {
		return uaccount;
	}

	public void setUaccount(String uaccount) {
		this.uaccount = uaccount;
	}

	public int getUmoney() {
		return umoney;
	}

	public void setUmoney(int umoney) {
		this.umoney = umoney;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getModdate() {
		return moddate;
	}

	public void setModdate(String moddate) {
		this.moddate = moddate;
	}
	
}
