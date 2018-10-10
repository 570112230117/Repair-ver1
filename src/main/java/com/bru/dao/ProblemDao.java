package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.bru.model.ProblemBean;
import com.bru.util.ConnectDB;

@Repository
public class ProblemDao {

	public ProblemBean findById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		ProblemBean bean = new ProblemBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM problem rp WHERE rp.repair_type_name = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setTypeName(rs.getString("repair_type_name"));
				bean.setTypeInitials(rs.getString("repair_type_initials"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void insert(ProblemBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" INSERT INTO problem (id, name,repair_type_name, repair_type_initials) VALUES (?,?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, bean.getId());
			prepared.setString(2, bean.getName());
			prepared.setString(3, bean.getTypeName());
			prepared.setString(4, bean.getTypeInitials());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public ProblemBean problemid(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		ProblemBean bean = new ProblemBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM problem rp WHERE rp.id = ?");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setTypeName(rs.getString("repair_type_name"));
				bean.setTypeInitials(rs.getString("repair_type_initials"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void update(ProblemBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" UPDATE problem SET  name = ? , repair_type_name = ?, repair_type_initials = ? WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getTypeName());
			prepared.setString(3, bean.getTypeInitials());
			prepared.setInt(4, bean.getId());
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
			sql.append(" DELETE FROM problem WHERE id = ? ");
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
