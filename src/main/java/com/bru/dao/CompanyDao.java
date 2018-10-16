package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.CompanyBean;
import com.bru.util.ConnectDB;

@Repository
public class CompanyDao {

	// ดรอบดาวบริษัทส่งซ่อม
	public List<CompanyBean> company() throws SQLException {
		List<CompanyBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		CompanyBean bean = new CompanyBean();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM company");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new CompanyBean();
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
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

	public CompanyBean companyId(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		CompanyBean bean = new CompanyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM company rp WHERE rp.id = ?");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void insert(CompanyBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" INSERT INTO company (name) VALUES (?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public void update(CompanyBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" UPDATE company SET  name = ? WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getId());
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
			sql.append(" DELETE FROM company WHERE id = ? ");
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
}
