package com.hk.jsp.dao;

import java.sql.*;

import com.hk.jsp.dao.NoneUserDto;


public class UserDao {

	// 접속정보
	private static String driveName = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://seongsu.freehongs.net:3306/bgweb?autoReconnect=true&validationQuery=select 1";
	private static String user = "burgerking";
	private static String password = "7oTVrqM9JUE}";
	// sql정보
	private static Connection conn = null;
	private static Statement stmt = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs = null;

	// 생성자
	public static UserDao getInstance() {
		if (instance == null) {
			instance = new UserDao();
		}
		return instance;
	}

	// 인스턴스
	private static UserDao instance = null;
	// 초기화 블럭
	{
		try {
			Class.forName(driveName);
			System.out.println("드라이버로딩성공");
		} catch (Exception e) {
			System.out.println("드라이버로딩실패");
		}
	}

	// mysql 접속메소드 (공통)
	private void connectDB() throws Exception {
		if (conn == null) {// 접속이 안되었으면
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			System.out.println("데이터베이스접속성공");

		}
	}

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
				stmt.close();
				pstmt = null;
			}
			if (rs != null) {
				rs.close();
				rs = null;
			}
			System.out.println("데이터베이스접속종료완료");
		} catch (SQLException e) {
			System.out.println("데이터베이스 쿼리오류:" + e.getMessage());
		} catch (Exception e2) {
			System.out.println("데이터베이스:" + e2.getMessage());
		}
	}

	public int login(String userEmailId, String userPw) throws Exception {
		connectDB();
		try {
			pstmt = conn.prepareStatement("select userPw from userBk where userId=?");
			pstmt.setString(1, userEmailId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1).equals(userPw) ? 1 : 0;
			} else {
				return -2;
			}
		} catch (Exception e) {
			e.printStackTrace();
			closeDB();
			return -1;
		}

	}
	
	public UserDto getUserInfo(String userId) throws Exception{
		
		connectDB();
		UserDto dto = new UserDto();
		String sql = "select * from userBk where userID= ?";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, userId);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			dto.setUserEmailId(rs.getString("userId"));
			dto.setUserName(rs.getString("userName"));
			dto.setUserPhone(rs.getString("userPhone"));
		}
		
		closeDB();
		return dto;
	}
	public int Id_Check(String userEmailId) throws Exception {
		connectDB();
		int result = -1;

		pstmt = conn.prepareStatement("select count(*) as cnt from userBk where userId = ?");
		pstmt.setString(1, userEmailId);

		rs = pstmt.executeQuery();

		while (rs.next()) {
			result = rs.getInt("cnt");

		}

		

		return result;
	}

	
	  public int join(UserDto userDao) throws Exception{ 
		  connectDB(); 
		  int result = -1; 
		 
		  if(Id_Check(userDao.getUserEmailId()) == 0) {
	  
	  
	  pstmt = conn.prepareStatement("insert into userBk values(?,?,?,?)");
	  pstmt.setString(1, userDao.getUserEmailId());
	  pstmt.setString(2, userDao.getUserName()); 
	  pstmt.setString(3, userDao.getUserPhone());
	  pstmt.setString(4, userDao.getUserPw());
	  
	  
	  result= pstmt.executeUpdate();
	  
	  
	  } else {
		  result=0;
	  }
		  closeDB();
		  return result; 
	  }
		
	  public int NoneJoin(NoneUserDto noneuser) throws Exception{
		  connectDB();
			String SQL = "INSERT INTO noneuser VALUES (?, ?, ?, ?, false)";

			try {

				PreparedStatement pstmt = conn.prepareStatement(SQL);

				pstmt.setString(1, noneuser.getUserName());

				pstmt.setString(2, noneuser.getUserEmail());

				pstmt.setString(3, noneuser.getUserPassword());

				pstmt.setString(4, noneuser.getUserEmailHash());

				return pstmt.executeUpdate();

			} catch (SQLException e) {

				e.printStackTrace();

			}

			return -1; // 회원가입 실패

		}
	  
	/*
	 * public UserDto getUserInfo(String id) throws Exception{ connectDB(); UserDto
	 * user = null;
	 * 
	 * StringBuffer query = new StringBuffer();
	 * query.append("select * from userBk where userId=?");
	 * 
	 * pstmt = conn.prepareStatement(query.toString()); pstmt.setString(1, id); rs =
	 * pstmt.executeQuery();
	 * 
	 * if(rs.next()) {
	 * 
	 * user = new UserDto(); user.setUserEmailId(rs.getString("email"));
	 * user.setUserPw(rs.getString("password"));
	 * user.setUserName(rs.getString("name"));
	 * user.setUserPhone(rs.getString("phn")); } closeDB(); return user; }
	 * 
	 * 
	 * 
	 */
	  
	 
	 
	/*
	 * public void updateMember(UserDto member) throws Exception { connectDB(); try
	 * { StringBuffer query = new StringBuffer(); query.append("update userBk set");
	 * query.append("userPw=?, userPhone=?"); query.append("where userId=?");
	 * 
	 * pstmt = conn.prepareStatement(query.toString());
	 * 
	 * conn.setAutoCommit(false); pstmt.setString(1, member.getUserEmailId());
	 * pstmt.setString(2, member.getUserPhone()); pstmt.setString(3,
	 * member.getUserPw());
	 * 
	 * pstmt.executeUpdate();
	 * 
	 * conn.commit(); }catch(Exception e) { e.printStackTrace();
	 * 
	 * }
	 * 
	 * }
	 */
	public int updateMember(UserDto user) throws Exception{		
		connectDB();
		
		String sql = "update userBk set userPw=?, userPhone=? where userId=?";
		int result = 0;
		
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserPhone());
			pstmt.setString(2, user.getUserPw());
			pstmt.setString(3, user.getUserEmailId());
			
			result = pstmt.executeUpdate();
					closeDB();
		
		return result;
		
		
	}

		
	

	public int deleteMember(String id, String pw) throws Exception {
		connectDB();
		String dbpw = "";
		int x = -1;
		try {
			StringBuffer query1 = new StringBuffer();
			query1.append("select userPw from userBk where userId=?");

			StringBuffer query2 = new StringBuffer();
			query2.append("delete from userBk where userId=?");

			conn.setAutoCommit(false);

			pstmt = conn.prepareStatement(query1.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dbpw = rs.getString("userPw");
				if (dbpw.equals(pw)) {
					pstmt = conn.prepareStatement(query2.toString());
					pstmt.setString(1, id);
					pstmt.executeUpdate();
					conn.commit();
					x = 1;
				} else {
					x = 0;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			closeDB();
		}
		return x;

	}

}
