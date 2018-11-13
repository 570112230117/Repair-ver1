package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.DeviceCategoryBean;
import com.bru.util.ConnectDB;

@Repository
public class DeviceCategoryDao {

	public DeviceCategoryBean findById(String id) throws SQLException {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	DeviceCategoryBean bean = new DeviceCategoryBean();
	Connection conn = con.openConnect();

	try {
		sql.append(" SELECT dc.initials  , d.device_category\r\n" + 
				"FROM device_category dc\r\n" + 
				"INNER JOIN device d ON dc.name = d.device_category\r\n" + 
				"WHERE d.id = ? ");
		prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1, id);
		ResultSet rs = prepared.executeQuery();
		while (rs.next()) {
			bean.setName(rs.getString("d.device_category"));
			bean.setInitials(rs.getString("dc.initials"));
		}
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	} finally {
		conn.close();
	}
	return bean;
}
	
	// ดรอบดาวประเภทงานซ่อม
		public List<DeviceCategoryBean> Devicecategory() throws SQLException {
			List<DeviceCategoryBean> list = new ArrayList<>();
			ConnectDB con = new ConnectDB();
			PreparedStatement prepared = null;
			StringBuilder sql = new StringBuilder();
			DeviceCategoryBean bean = new DeviceCategoryBean();
			Connection conn = con.openConnect();

			try {
				sql.append(" SELECT * FROM device_category");
				prepared = conn.prepareStatement(sql.toString());
				ResultSet rs = prepared.executeQuery();
				while (rs.next()) {
					bean = new DeviceCategoryBean();
					bean.setId(rs.getInt("id"));
					bean.setName(rs.getString("name"));
					bean.setInitials(rs.getString("initials"));
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
//
//		public RepairTypeBean findById(String id) throws SQLException {
//			ConnectDB con = new ConnectDB();
//			PreparedStatement prepared = null;
//			StringBuilder sql = new StringBuilder();
//			RepairTypeBean bean = new RepairTypeBean();
//			Connection conn = con.openConnect();
//
//			try {
//				sql.append("SELECT * FROM repair_type WHERE id = ? ");
//				prepared = conn.prepareStatement(sql.toString());
//				prepared.setString(1, id);
//				ResultSet rs = prepared.executeQuery();
//				while (rs.next()) {
//					bean.setId(rs.getInt("id"));
//					bean.setName(rs.getString("name"));
//					bean.setInitials(rs.getString("initials"));
//				}
//			} catch (Exception e) {
//				// TODO: handle exception
//				e.printStackTrace();
//			} finally {
//				conn.close();
//			}
//			return bean;
//		}
//
//		public void update(RepairTypeBean bean) throws SQLException {
//			ConnectDB con = new ConnectDB();
//			PreparedStatement prepared = null;
//			StringBuilder sql = new StringBuilder();
//			Connection conn = con.openConnect();
//			try {
//				sql.append(" UPDATE repair_type SET  name = ?, initials = ?  WHERE id = ? ");
//				prepared = conn.prepareStatement(sql.toString());
//				prepared.setString(1, bean.getName());
//				prepared.setString(2, bean.getInitials());
//				prepared.setInt(3, bean.getId());
//				prepared.executeUpdate();
//			} catch (Exception e) {
//				// TODO: handle exception
//				e.printStackTrace();
//			} finally {
//				conn.close();
//			}
//		}
		
}
