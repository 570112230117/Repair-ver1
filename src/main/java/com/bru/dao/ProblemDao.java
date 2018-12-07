package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.ProblemBean;
import com.bru.util.ConnectDB;

@Repository
public class ProblemDao {

	// ดรอบดาวปัญหา
	public List<ProblemBean> problemtable() throws SQLException {
		List<ProblemBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		ProblemBean bean = new ProblemBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT p.id , p.name , dc.name\r\n" + 
					"FROM problem p\r\n" + 
					"INNER JOIN device_category dc ON p.device_category_id = dc.id ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ProblemBean();
				bean.setId(rs.getInt("p.id"));
				bean.setName(rs.getString("p.name"));
				bean.setDeviceCategoryId(rs.getString("dc.name"));
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
	
	public List<ProblemBean> findByIdlist(String id) throws SQLException {
		List<ProblemBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		ProblemBean bean = new ProblemBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM problem rp WHERE rp.device_category_id = ? ");			
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ProblemBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setDeviceCategoryId(rs.getString("device_category_id"));
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
		public void insert(ProblemBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" INSERT INTO problem (name,device_category_id) VALUES (?,?) ");
			prepared = conn.prepareStatement(sql.toString());			
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getDeviceCategoryId());
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
			sql.append(" SELECT * FROM problem rp WHERE rp.id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
//				bean.setDeviceCategoryName(rs.getString("device_category_name"));
				bean.setDeviceCategoryId(rs.getString("device_category_id"));
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
			sql.append(" UPDATE problem SET  name = ? , device_category_id = ? WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getDeviceCategoryId());
			prepared.setInt(3, bean.getId());
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
