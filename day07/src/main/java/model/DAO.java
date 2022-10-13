package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.sql.PreparedStatement;

public class DAO {
	// Memberdata를 가져오기위한 리스트
	ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
	// JDBC를 위한 자료형 선언
	private Connection conn = null;
	//(3 단계) Statement 객체 생성하기
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public String getConnection() {
		String message = "fail";
		try {
			//(1 단계) JDBC 드라이버 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/webdb?"
				      +"useUnicode=true&characterEncoding=utf-8";
			String uid = "root";
			String pass = "tbrs00002b";
			//(2 단계) 데이터베이스 연결 객체인 Connection 생성
			conn = DriverManager.getConnection(url, uid, pass);
			// 연결 성공후 데이터 처리
			message = "success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return message;
	}

	public int insert(MemberVO vo) {
		int rowCnt = 0;
		try {
			String sql = "insert into member values(?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			//(4 단계) 바인딩 변수를 채운다.
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getUserid());
			pstmt.setString(3, vo.getPwd());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getPhone());
			pstmt.setInt(6, vo.getAdmin());
			//(5단계) SQL문을 실행하여 결과 처리
			rowCnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowCnt;
	}

	public void getClose() {
		try {
			//(6단계) 사용한 리소스 해제
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public MemberVO loginCheck(MemberVO vo) {
		MemberVO result = null;
		try {
			String sql = "select * from member where userid= ? and pwd= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserid());
			pstmt.setString(2, vo.getPwd());
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("userid");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String phone =rs.getString("phone");
				int admin =rs.getInt("admin");
				
				result = new MemberVO(name, id, pwd, email, phone, admin);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public ArrayList<MemberVO> allSelect() {
		try {
			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			while(rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("userid");
				String pwd = rs.getString("pwd");
				String email = rs.getString("email");
				String phone =rs.getString("phone");
				int admin =rs.getInt("admin");
				// memberList 리스트에 MemberVO 저장
				memberList.add (new MemberVO(name, id, pwd, email, phone, admin));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// memberList 리턴
		return memberList;
	}
}
