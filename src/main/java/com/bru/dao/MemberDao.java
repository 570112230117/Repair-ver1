package com.bru.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;

import java.util.List;
import org.springframework.stereotype.Repository;

import com.bru.model.MemberBean;
import com.bru.model.TestBean;
import com.bru.util.ConnectDB;

@Repository
public class MemberDao {

	String a;

	public MemberBean login(String email, String password) throws SQLException {
		MemberBean bean = new MemberBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM member WHERE email = ? AND password = ? AND status = 'ใช้งาน' ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, email);
			prepared.setString(2, password);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getString("id"));
				bean.setEmail(rs.getString("email"));
				bean.setPassword(rs.getString("password"));
				bean.setName(rs.getString("name"));
				bean.setPhone(rs.getString("phone"));
				bean.setAddress(rs.getString("address"));
				bean.setGender(rs.getString("gender"));
				bean.setRole(rs.getString("role"));
				bean.setStatus(rs.getString("status"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
		a = bean.getId();

		return bean;
	}

	public TestBean id() {
		TestBean bean = new TestBean();
		bean.setId(a);
		return bean;
	}

	public List<MemberBean> list() throws SQLException {
		List<MemberBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		MemberBean bean = new MemberBean();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM member");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new MemberBean();
				bean.setId(rs.getString("id"));
				bean.setEmail(rs.getString("email"));
				bean.setPassword(rs.getString("password"));
				bean.setName(rs.getString("name"));
				bean.setPhone(rs.getString("phone"));
				bean.setAddress(rs.getString("address"));
				bean.setGender(rs.getString("gender"));
				bean.setRole(rs.getString("role"));
				bean.setStatus(rs.getString("status"));
				list.add(bean);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return list;
	}

	public MemberBean findById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		MemberBean bean = new MemberBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM member rp WHERE rp.id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getString("id"));
				bean.setEmail(rs.getString("email"));
				bean.setPassword(rs.getString("password"));
				bean.setName(rs.getString("name"));
				bean.setPhone(rs.getString("phone"));
				bean.setAddress(rs.getString("address"));
				bean.setGender(rs.getString("gender"));
				bean.setRole(rs.getString("role"));
				bean.setStatus(rs.getString("status"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void insert(MemberBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					"INSERT INTO member (email, password, name, phone, address, gender, role, status) VALUES (?,?,?,?,?,?,?,?);");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getEmail());
			prepared.setString(2, bean.getPassword());
			prepared.setString(3, bean.getName());
			prepared.setString(4, bean.getPhone());
			prepared.setString(5, bean.getAddress());
			prepared.setString(6, bean.getGender());
			prepared.setString(7, bean.getRole());
			prepared.setString(8, bean.getStatus());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public void update(MemberBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" UPDATE member SET  email = ? , password = ?, name = ?, phone = ?, address = ?, gender = ?, role = ?, status = ? WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getEmail());
			prepared.setString(2, bean.getPassword());
			prepared.setString(3, bean.getName());
			prepared.setString(4, bean.getPhone());
			prepared.setString(5, bean.getAddress());
			prepared.setString(6, bean.getGender());
			prepared.setString(7, bean.getRole());
			prepared.setString(8, bean.getStatus());
			prepared.setString(9, bean.getId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	// delete
	public void delete(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" DELETE FROM member WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	} // end method delete
		// end
}
