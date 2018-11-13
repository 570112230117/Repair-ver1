package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.BrandBean;

import com.bru.model.TestBean;
import com.bru.util.ConnectDB;

@Repository
public class BrandDao {

	
	// ดรอบดาวปัญหา
	public List<BrandBean> Brand(TestBean testBean) throws SQLException {
		List<BrandBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		BrandBean bean = new BrandBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM brand WHERE device_name = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, testBean.getA());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new BrandBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setInitials(rs.getString("initials"));
				bean.setDevice(rs.getString("device_name"));
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
	
	public BrandBean Brandname(String id) throws SQLException {		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		BrandBean bean = new BrandBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM brand WHERE device_name = ? ");
			prepared = conn.prepareStatement(sql.toString());	
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new BrandBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setInitials(rs.getString("initials"));
				bean.setDevice(rs.getString("device_name"));
			
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}
	public List<BrandBean> BrandTabel() throws SQLException {
		List<BrandBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		BrandBean bean = new BrandBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM brand ");
			prepared = conn.prepareStatement(sql.toString());		
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new BrandBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setInitials(rs.getString("initials"));
				bean.setDevice(rs.getString("device_name"));
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
	public BrandBean BrandBeanId(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		BrandBean bean = new BrandBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM brand rp WHERE rp.id = ?");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setInitials(rs.getString("initials"));
				bean.setDevice(rs.getString("device_name"));
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}
	public void insert(BrandBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" INSERT INTO brand (name,device_name,initials) VALUES (?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getDevice());
			prepared.setString(3, bean.getInitials());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}
	public void update(BrandBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" UPDATE brand SET  name = ? , device_name = ?, initials = ? WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getDevice());
			prepared.setString(3, bean.getInitials());
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
				sql.append(" DELETE FROM brand WHERE id = ? ");
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
