package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.bru.model.RepairTypeBean;
import com.bru.util.ConnectDB;

@Repository
public class RepairTypeDao {

	// ดรอบดาวปัญหา
	public List<RepairTypeBean> RepairType() throws SQLException {
		List<RepairTypeBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairTypeBean bean = new RepairTypeBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM repair_type ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairTypeBean();
				bean.setId(rs.getInt("id"));
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

	public RepairTypeBean findById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairTypeBean bean = new RepairTypeBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM repair_type WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getInt("id"));
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

	public void insertRepairTypeBean(RepairTypeBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" INSERT INTO repair_type (name) VALUES (?) ");
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

	public void update(RepairTypeBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" UPDATE repair_type SET  name = ? WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setInt(2, bean.getId());
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
			sql.append(" DELETE FROM repair_type WHERE id = ? ");
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
	
	public List<RepairTypeBean> countType(String name) throws SQLException {
		List<RepairTypeBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairTypeBean bean = new RepairTypeBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT r.id ,  rt.name ,COUNT(r.job_type) as countType\r\n" + 
					"FROM repair r\r\n" + 
					"INNER JOIN repair_type rt ON r.job_type = rt.id\r\n" + 
					"WHERE rt.name = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, name);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairTypeBean();
				bean.setId(rs.getInt("r.id"));
				bean.setName(rs.getString("rt.name"));
				bean.setCountType(rs.getInt("countType"));
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
	public List<RepairTypeBean> testcountType(String name) throws SQLException {
		List<RepairTypeBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairTypeBean bean = new RepairTypeBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT  r.problem  \r\n" + 
					"FROM repair r\r\n" + 
					"INNER JOIN repair_type rt ON r.job_type = rt.id\r\n" + 
					"WHERE rt.name = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, name);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairTypeBean();
//				bean.setId(rs.getInt("r.id"));
				bean.setName(rs.getString("r.problem"));
//				bean.setCountType(rs.getInt("countType"));
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
}
