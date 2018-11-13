package com.bru.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.bru.model.JobTypeBean;

import com.bru.model.RequestTypeBean;
import com.bru.util.ConnectDB;

@Repository
public class JobTypeDao {

	// ดรอบดาวประเภทงานซ่อม
	public List<JobTypeBean> Joblist() throws SQLException {
		List<JobTypeBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		JobTypeBean bean = new JobTypeBean();
		RequestTypeBean bean1 = new RequestTypeBean();
		Connection conn = con.openConnect();

		try {
			sql.append("SELECT  jt.id , jt.name , rt.id , rt.name \r\n" + 
					"FROM job_type jt\r\n" + 
					"INNER JOIN request_type rt ON jt.id = rt.job_type_id;");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {				
				bean = new JobTypeBean();
				bean1 = new RequestTypeBean();
				bean.setId(rs.getInt("jt.id"));
				bean.setName(rs.getString("jt.name"));
				
				bean1.setId(rs.getInt("rt.id"));
				bean1.setName(rs.getString("rt.name"));
				bean.setRequestBean(bean1);
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
	
	public List<JobTypeBean> JoblistTabel() throws SQLException {
		List<JobTypeBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		JobTypeBean bean = new JobTypeBean();		
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM job_type ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {				
				bean = new JobTypeBean();
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
	
	public void insertJob(JobTypeBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" INSERT INTO job_type (name) VALUES (?);");
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
	
	public void update(JobTypeBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" UPDATE job_type SET  name = ? WHERE id = ? ");
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
			sql.append(" DELETE FROM job_type WHERE id = ? ");
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
	public JobTypeBean findById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		JobTypeBean bean = new JobTypeBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM job_type rp WHERE rp.id = ? ");
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
}
