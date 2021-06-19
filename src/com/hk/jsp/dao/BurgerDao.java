package com.hk.jsp.dao;

import java.sql.*;
import java.util.*;

import com.hk.jsp.vo.*;

public class BurgerDao {
	
	private static String driveName = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://seongsu.freehongs.net:3306/bgweb?autoReconnect=true&validationQuery=select 1";
	private static String user = "burgerking";
	private static String password = "7oTVrqM9JUE}";
	//sql정보
	private static Connection conn = null;
	private static Statement stmt = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs = null;
	//생성자
	private BurgerDao() {

	}
	//인스턴스
	private static BurgerDao instance = null;
	
	public static BurgerDao getInstance() {
		if (instance == null) {
			instance = new BurgerDao();
		}
		return instance;
	}
	
	

	// 초기화블럭
	{
		try {
			Class.forName(driveName);
			System.out.println("드라이버 로딩 성공");
		} catch (Exception e) {
			System.out.println("드라이버 로딩 실패");
		}
	}
		
	// DB접속
		private void connectDB() throws Exception {

			if (conn == null) { // 접속이 안되어 있으면
				conn = DriverManager.getConnection(url, user, password);
				stmt = conn.createStatement();

				System.out.println("db접속 성공");
			}
		}
		
	// mysql 접속종료메소드 (공통)
	private void closeDB() {
		try {
			if (conn != null) {
				conn.close();
				conn = null;
			}
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}
			if (pstmt != null) {
				pstmt.close();
				pstmt = null;
			}
			if (rs != null) {
				rs.close();
				rs = null;
			}
			System.out.println("데이터베이스 접속종료");
		} catch (SQLException e) {
			System.out.println("데이터베이스 쿼리오류:" + e.getMessage());
		} catch (Exception e2) {
			System.out.println("데이터베이스 접속오류:" + e2.getMessage());
		}
	}
	
	// kind 별 count 값 가져오기
	public int getCount(int kind) throws Exception{
		connectDB();
		String sql = "select count(*) as cnt1 from ord_product where kind="+kind;
		rs=stmt.executeQuery(sql);
		int cnt=0;
		while(rs.next()) {
			cnt = rs.getInt("cnt1");
		}
		closeDB();
		return cnt;
	}
	
	
		//kind별 ord_name 값 가져오기
	  public List<BurgerVo> setSeq(int kind) throws Exception{ 
	  connectDB();
	  List<BurgerVo> rst = new ArrayList();
	  
	  String sql = String.format("select * from ord_product where kind='%s' order by name", kind); 
	  
	  stmt=conn.createStatement();
	  rs = stmt.executeQuery(sql);
	  
	  while(rs.next()) {
		  BurgerVo vo = new BurgerVo();
		  vo.setOrd_name(rs.getString("ord_name"));
		  rst.add(vo);
	  }
	  closeDB(); 
	  return rst; 
	  }
	 
	  //prod_seq 번호 매기기
	  public int inputNo(List arr,int kind) throws Exception{
		  connectDB();
		  int rst = -2;
		  String[] str = new String[arr.size()];
		  
		  for(int i=0; i<arr.size();i++) {
			  str[i]= String.format("UPDATE ORD_PRODUCT SET PROD_SEQ="
		      +"(CONCAT('PROD-"+kind+"-',(SELECT LPAD("+(i+1)+",3,'0'))))"
		      +"WHERE ord_name='%s'", arr.get(i));
		   rst = stmt.executeUpdate(str[i]);
		  
		  }
		  closeDB();
		  return rst;
		  }
	 
	  // delivery.jsp 상품정보 출력
	  
	  public List<BurgerVo> printOutProduct(int kind) throws Exception{
		  // 리턴 할 배열 객체
		  List<BurgerVo> result = new ArrayList();
		  
		  // db연결
		  connectDB();
		  
		  
		  String sql = String.format("select*from ord_product where kind='%s' and type=0", kind);
		  rs = stmt.executeQuery(sql);
		  
		  while(rs.next()) {
			  BurgerVo vo = new BurgerVo();
			  vo.setOrd_name(rs.getString("ord_name"));
			  vo.setName(rs.getString("name"));
			  vo.setContent1(rs.getString("content1"));
			  vo.setPrice(rs.getInt("price"));
			  vo.setImg(rs.getString("img"));
			  
			  result.add(vo);
		  }
		  closeDB();
		  return result;
	  }
	  
	  
	  	public BurgerVo printOutMainProduct(String name) throws Exception{
		  
		  //정보를 담을 배열 객체
		  BurgerVo result = new BurgerVo();
		  //DB연결
		  connectDB();
		  String sql = String.format("select * from ord_product where name='%s' and type =0", name); 
		  
		 
		  rs = stmt.executeQuery(sql);
		  	  
		  while(rs.next()) {
			  
			  result.setOrd_name(rs.getString("ord_name"));
			  result.setName(rs.getString("name"));
			  result.setContent1(rs.getString("content1"));
			  result.setContent2(rs.getString("content2"));
			  result.setPrice(rs.getInt("price"));
			  result.setImg(rs.getString("img"));
		  }
		  
		  closeDB();
		  return result;
	  	}
	 
	  
	  	public List<BurgerVo> printOutProduct(String name) throws Exception{
		  
		  //정보를 담을 배열 객체
		  List<BurgerVo> result = new ArrayList();
		  //DB연결
		  connectDB();
		  
		  int kind = checkKind(name);
		  String sql="aa";
		  if(kind ==50 || kind == 60 || kind==70) {
			  sql = String.format("select * from ord_product where name='%s' and type=1 order by price desc", name);
		  }else {
			  sql = String.format("select * from ord_product where name='%s' order by price desc", name); 
		  }
		 
		  
		  rs = stmt.executeQuery(sql);
		  
		  
		  
		  while(rs.next()) {
			  BurgerVo vo = new BurgerVo();
			  vo.setProd_seq(rs.getString("prod_seq"));
			  vo.setOrd_name(rs.getString("ord_name"));
			  vo.setName(rs.getString("name"));
			  vo.setContent1(rs.getString("content1"));
			  vo.setContent2(rs.getString("content2"));
			  vo.setPrice(rs.getInt("price"));
			  vo.setImg(rs.getString("img"));
			  vo.setType(rs.getInt("type"));
			  result.add(vo);
		  }
		  
		  closeDB();
		  return result;
	  	}
	  	
	  	
	  	// burgerBox에 실행 메소드 구분을 하기 위한 메소드 
	  	public int checkKind(String name) throws Exception{
	  		connectDB();
	  		int result = 0;
	  		
	  		String sql = String.format("select kind from ord_product where name='%s'", name);
	  		
	  		rs = stmt.executeQuery(sql);
	  		
	  		while(rs.next()) {
	  			result = rs.getInt("kind");
	  		}
	  		
	  		
	  		return result;
	  	}
	  	
	  	
	  // 사이드 선택 burgersideBox_side.jsp
	  	
	 public List<BurgerVo> printOutSideMenu(String table, int kind) throws Exception{
		 List<BurgerVo> result = new ArrayList();
		 connectDB();
		 String sql = "select * from "+table+" where kind="+kind;
		 rs= stmt.executeQuery(sql);
		 
		 while(rs.next()) {
			 BurgerVo vo = new BurgerVo();
			 
			 vo.setProd_seq(rs.getString("prod_seq"));
			 vo.setName(rs.getString("name"));
			 vo.setPrice(rs.getInt("price"));
			 vo.setImg(rs.getString("img"));
			 vo.setType(rs.getInt("type"));
			 result.add(vo);
		 }
		 return result;
	 }
	  	
	  // burgersideBox.jsp 타입 구하기
	  // 타입을 구해야지 어떤 사이드 박스가 출력될지 알 수 있기 때문
	  	
	  public int getType(String prod_seq) throws Exception{
		  connectDB();
		  int result=-1;
		  String sql = String.format("select type from ord_product where prod_seq='%s'", prod_seq);
		  rs = stmt.executeQuery(sql);
		  
		  while(rs.next()) {
			  result=rs.getInt("type");
		  }
		  closeDB();
		  return result;
	  }
	  
	  public int getKind(String pseq) throws Exception{
		  connectDB();
		  int result=-1;
		  String sql = String.format("select kind from ord_product where prod_seq='%s'", pseq);
		  rs = stmt.executeQuery(sql);
		  
		  while(rs.next()) {
			  result=rs.getInt("kind");
		  }
		  closeDB();
		  return result;
	  }
	  
	/*
	 * public int getKind(String pseq) throws Exception{ connectDB(); int result=-1;
	 * String sql =
	 * String.format("select kind from ord_product where prod_seq='%s'", pseq); rs =
	 * stmt.executeQuery(sql);
	 * 
	 * while(rs.next()) { result=rs.getInt("kind"); } closeDB(); return result; }
	 */
	  
	/*
	 * // prod_seq로 kind 가져오기 public int getKind(String prod_Seq) throws Exception{
	 * connectDB(); String sql =
	 * String.format("select kind from ord_product where prod_seq = '%s'",
	 * prod_Seq); rs=stmt.executeQuery(sql); int kind=0; while(rs.next()) { kind =
	 * rs.getInt("kind"); } closeDB(); return kind; }
	 */
	  
	 // cart에 넣을 정보
	  
	  public BurgerVo getMenuData(String pseq) throws Exception{
		  BurgerVo result = new BurgerVo();
		  
		  connectDB();
		  
		  String sql = String.format("select * from ord_product where prod_seq = '%s'", pseq);
		  
		  rs= stmt.executeQuery(sql);
		  
		  while(rs.next()) {
			  result.setProd_seq(rs.getString("prod_seq"));
			  result.setOrd_name(rs.getString("ord_name"));
			  result.setPrice(rs.getInt("price"));
			  
			  //장바구니 이미지출력 폴더번호
			  result.setKind(rs.getInt("kind"));
			  
			  result.setType(rs.getInt("type"));
			  result.setImg(rs.getString("img"));
		  }
		  
		  closeDB();
		  return result;
	  }
	  
	  public int addCart (BurgerVo vo, String id) throws Exception{
		  int result=-1;
		  connectDB();
		  if(vo.getProd_seq() == "" || vo.getProd_seq() == null) {
			  return 0;
		  }else {
		  String sql = "insert into cart(email, prod_seq,menu,price,img) values"
		  		+ "(?, ?, ?, ?, ?)";
		  pstmt = conn.prepareStatement(sql);
		  
		  pstmt.setString(1, id);
		  pstmt.setString(2, vo.getProd_seq());
		  pstmt.setString(3, vo.getOrd_name());
		  pstmt.setInt(4, vo.getPrice());
		  pstmt.setString(5, vo.getImg());
		  
		  result = pstmt.executeUpdate();
		  closeDB();
		  
		  return result;
		  }
	  }
	 public List<CartVo> printOutCart(String id)throws Exception{
		 connectDB();
		 List<CartVo> result = new ArrayList();
		 
		 String sql = String.format("select*from cart where email = '%s'", id);
		 
		 rs = stmt.executeQuery(sql);
		 
		 while(rs.next()) {
			 CartVo vo = new CartVo();
			 vo.setProd_seq(rs.getString("prod_seq"));
			 vo.setMenu(rs.getString("menu"));
			 vo.setPrice(rs.getInt("price"));
			 vo.setImg(rs.getString("img"));
//			 vo.setCnt(rs.getInt("cnt"));
			 result.add(vo);
		 }
		 closeDB();
		 
		 return result;
	 }
	public String castingNameToPseq(String name) throws Exception{
		connectDB();
		
		String sql = String.format("select prod_seq from ord_product where ord_name='%s'", name);
		
		rs = stmt.executeQuery(sql);
		String result="";
		while(rs.next()) {
			result = rs.getString("prod_seq");			
		}
		
		closeDB();
		return result;
	}
	// 장바구니에 받아온 사이드 값  출력
	public CartVo printOutSideInCart(String pseq) throws Exception{
		connectDB();
		CartVo vo = new CartVo();
		
		
		String sql = "select * from sidebar_r where prod_seq= ? "
				+ " union select * from sidebar_l where prod_seq= ? order by prod_seq";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, pseq);
		pstmt.setString(2, pseq);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			
			vo.setProd_seq(rs.getString("prod_seq"));
			vo.setMenu(rs.getString("name"));
			vo.setPrice(rs.getInt("price"));
			vo.setImg(rs.getString("img"));
			vo.setKind(rs.getInt("kind"));
		}
		closeDB();
		return vo;
	}
	// deleteCart.jsp 장바구니 삭제 메소드
	
	public int deleteCart(String email) throws Exception{
		connectDB();
		int delete = -1;
		String sql = String.format("delete from cart where email = '%s'", email);
		delete = stmt.executeUpdate(sql);
		closeDB();
		return delete;
	}
	
	
}