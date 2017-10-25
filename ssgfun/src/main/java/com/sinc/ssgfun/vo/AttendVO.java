package com.sinc.ssgfun.vo;

public class AttendVO {
	private int eano;	 
	private int eacnt;
	private int eaattcnt;
	private String eahistdate;
	private String regdate;
	private String moddate;
	private String uno;

	public AttendVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AttendVO(int eano, int eacnt, int eaattcnt, String eahistdate,
			String regdate, String moddate, String uno) {
		super();
		this.eano = eano;
		this.eacnt = eacnt;
		this.eaattcnt = eaattcnt;
		this.eahistdate = eahistdate;
		this.regdate = regdate;
		this.moddate = moddate;
		this.uno = uno;
	}
	
	@Override
	public String toString() {
		return "AttendVO [eano=" + eano + ", eacnt=" + eacnt + ", eaattcnt="
				+ eaattcnt + ", eahistdate=" + eahistdate + ", regdate="
				+ regdate + ", moddate=" + moddate + ", uno=" + uno + "]";
	}
	
	public int getEano() {
		return eano;
	}
	public void setEano(int eano) {
		this.eano = eano;
	}
	public int getEacnt() {
		return eacnt;
	}
	public void setEacnt(int eacnt) {
		this.eacnt = eacnt;
	}
	public int getEaattcnt() {
		return eaattcnt;
	}
	public void setEaattcnt(int eaattcnt) {
		this.eaattcnt = eaattcnt;
	}
	public String getEahistdate() {
		return eahistdate;
	}
	public void setEahistdate(String eahistdate) {
		this.eahistdate = eahistdate;
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
}
