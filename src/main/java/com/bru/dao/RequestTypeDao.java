package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.bru.model.RequestTypeBean;
import com.bru.model.TestBean;
import com.bru.util.ConnectDB;

@Repository
public class RequestTypeDao {

	// ดรอบดาวปัญหา
	public List<RequestTypeBean> Request(TestBean testBean) throws SQLException {
		List<RequestTypeBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RequestTypeBean bean = new RequestTypeBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM request_type WHERE job_type_id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, testBean.getA());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RequestTypeBean();
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

	public List<RequestTypeBean> RequestTabel() throws SQLException {
		List<RequestTypeBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RequestTypeBean bean = new RequestTypeBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM request_type ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RequestTypeBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setJobType(rs.getString("job_type"));
				bean.setJobTypeId(rs.getString("job_type_id"));
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

	public void insertRequest(RequestTypeBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" INSERT INTO request_type (name,job_type,job_type_id) VALUES (?,?,?);");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getJobType());
			prepared.setString(3, bean.getJobTypeId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public void update(RequestTypeBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" UPDATE request_type SET  name = ? , job_type = ? , job_type_id = ?  WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getJobType());
			prepared.setString(3, bean.getJobTypeId());
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
			sql.append(" DELETE FROM request_type WHERE id = ? ");
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
	
	public RequestTypeBean findById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RequestTypeBean bean = new RequestTypeBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM request_type rp WHERE rp.job_type = ? ; ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setJobTypeId(rs.getString("job_type_id"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}
	public RequestTypeBean ById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RequestTypeBean bean = new RequestTypeBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM request_type rp WHERE rp.id = ? ; ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setJobType(rs.getString("job_type"));
				bean.setJobTypeId(rs.getString("job_type_id"));
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
