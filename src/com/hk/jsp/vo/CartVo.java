package com.hk.jsp.vo;

public class CartVo {

	
	/* int no; */
	String email;
	String prod_seq;
	String menu;
	int price;
	int kind;
	int ea;
	String img;
	int cnt;
	
	
	/*
	 * public int getNo() { return no; } public void setNo(int no) { this.no = no; }
	 */
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProd_seq() {
		return prod_seq;
	}
	public void setProd_seq(String prod_seq) {
		this.prod_seq = prod_seq;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getEa() {
		return ea;
	}
	public void setEa(int ea) {
		this.ea = ea;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getKind() {
		return kind;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}
	
	
	
}
