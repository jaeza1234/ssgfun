package com.sinc.ssgfun.vo;

public class LottoVO {
	private int ulno;
	private String ulname;
	private int ulnum1;
	private int ulnum2;
	private int ulnum3;
	private int ulnum4;
	private int ulnum5;
	private int ulnum6;
	private String regdate;
	private String moddate;
	private String uno;
	private String bnum;
	private String gno;
	private String gdate;
	private String prevgdate;
	private String nextgdate;
	
	public LottoVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LottoVO(int ulno, String ulname, int ulnum1, int ulnum2, int ulnum3,
			int ulnum4, int ulnum5, int ulnum6, String regdate, String moddate,
			String uno, String bnum, String gno, String gdate,
			String prevgdate, String nextgdate) {
		super();
		this.ulno = ulno;
		this.ulname = ulname;
		this.ulnum1 = ulnum1;
		this.ulnum2 = ulnum2;
		this.ulnum3 = ulnum3;
		this.ulnum4 = ulnum4;
		this.ulnum5 = ulnum5;
		this.ulnum6 = ulnum6;
		this.regdate = regdate;
		this.moddate = moddate;
		this.uno = uno;
		this.bnum = bnum;
		this.gno = gno;
		this.gdate = gdate;
		this.prevgdate = prevgdate;
		this.nextgdate = nextgdate;
	}

	@Override
	public String toString() {
		return "LottoVO [ulno=" + ulno + ", ulname=" + ulname + ", ulnum1="
				+ ulnum1 + ", ulnum2=" + ulnum2 + ", ulnum3=" + ulnum3
				+ ", ulnum4=" + ulnum4 + ", ulnum5=" + ulnum5 + ", ulnum6="
				+ ulnum6 + ", regdate=" + regdate + ", moddate=" + moddate
				+ ", uno=" + uno + ", bnum=" + bnum + ", gno=" + gno
				+ ", gdate=" + gdate + ", prevgdate=" + prevgdate
				+ ", nextgdate=" + nextgdate + "]";
	}

	public int getUlno() {
		return ulno;
	}

	public void setUlno(int ulno) {
		this.ulno = ulno;
	}

	public String getUlname() {
		return ulname;
	}

	public void setUlname(String ulname) {
		this.ulname = ulname;
	}

	public int getUlnum1() {
		return ulnum1;
	}

	public void setUlnum1(int ulnum1) {
		this.ulnum1 = ulnum1;
	}

	public int getUlnum2() {
		return ulnum2;
	}

	public void setUlnum2(int ulnum2) {
		this.ulnum2 = ulnum2;
	}

	public int getUlnum3() {
		return ulnum3;
	}

	public void setUlnum3(int ulnum3) {
		this.ulnum3 = ulnum3;
	}

	public int getUlnum4() {
		return ulnum4;
	}

	public void setUlnum4(int ulnum4) {
		this.ulnum4 = ulnum4;
	}

	public int getUlnum5() {
		return ulnum5;
	}

	public void setUlnum5(int ulnum5) {
		this.ulnum5 = ulnum5;
	}

	public int getUlnum6() {
		return ulnum6;
	}

	public void setUlnum6(int ulnum6) {
		this.ulnum6 = ulnum6;
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

	public String getUno() {
		return uno;
	}

	public void setUno(String uno) {
		this.uno = uno;
	}

	public String getBnum() {
		return bnum;
	}

	public void setBnum(String bnum) {
		this.bnum = bnum;
	}

	public String getGno() {
		return gno;
	}

	public void setGno(String gno) {
		this.gno = gno;
	}

	public String getGdate() {
		return gdate;
	}

	public void setGdate(String gdate) {
		this.gdate = gdate;
	}

	public String getPrevgdate() {
		return prevgdate;
	}

	public void setPrevgdate(String prevgdate) {
		this.prevgdate = prevgdate;
	}

	public String getNextgdate() {
		return nextgdate;
	}

	public void setNextgdate(String nextgdate) {
		this.nextgdate = nextgdate;
	}
}
