package checkorder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class CheckorderDAO {

	private Connection conn;
	private ResultSet rs;
	
	public CheckorderDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/SHOPPING?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	
	
	public ArrayList<Checkorder> getList(String userID) {
		String SQL = "SELECT * FROM order1 WHERE userID = ?";
		ArrayList<Checkorder> list = new ArrayList<Checkorder>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Checkorder checkorder = new Checkorder();
				checkorder.setUserid(rs.getString(1));
				checkorder.setAddress(rs.getString(2));
				checkorder.setOrderdate(rs.getString(3));
				checkorder.setArrive(rs.getString(4));
				checkorder.setOjname(rs.getString(5));
				checkorder.setOjprice(rs.getInt(6));
				checkorder.setOjqnt(rs.getInt(7));
				checkorder.setSumprice(rs.getInt(8));
				checkorder.setTotalprice(rs.getInt(9));
				list.add(checkorder);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public Checkorder getCheckorder(String userID) {
		String SQL = "SELECT * FROM order1 WHERE userID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Checkorder checkorder = new Checkorder();
				checkorder.setUserid(rs.getString(1));
				checkorder.setAddress(rs.getString(2));
				checkorder.setOrderdate(rs.getString(3));
				checkorder.setArrive(rs.getString(4));
				checkorder.setOjname(rs.getString(5));
				checkorder.setOjprice(rs.getInt(6));
				checkorder.setOjqnt(rs.getInt(7));
				checkorder.setSumprice(rs.getInt(8));
				checkorder.setTotalprice(rs.getInt(9));
				return checkorder;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
