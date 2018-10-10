package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.bru.model.RepairStatusBean;
import com.bru.util.ConnectDB;

@Repository
public class RepairStatusDao {

	public void insertstatus(RepairStatusBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append("INSERT INTO repair_status (name) VALUES (?);");
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

	public RepairStatusBean findById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairStatusBean bean = new RepairStatusBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM repair_status rp WHERE rp.id = ? ");
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
	
	public void update(RepairStatusBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" UPDATE repair_status SET  name = ? WHERE id = ? ");
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
			sql.append(" DELETE FROM repair_status WHERE id = ? ");
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
