package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.CustomerBean;
import com.bru.model.KeyBean;
import com.bru.util.ConnectDB;

@Repository
public class CustomerDao {
	// ดรอบดาวประเภทงานซ่อม
	public List<CustomerBean> customer() throws SQLException {
		List<CustomerBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		CustomerBean bean = new CustomerBean();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM customer");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new CustomerBean();
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.setAddress(rs.getString("address"));
				bean.setPhone(rs.getString("phone"));
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

	public CustomerBean findById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		CustomerBean bean = new CustomerBean();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM customer rp WHERE rp.id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.setAddress(rs.getString("address"));
				bean.setPhone(rs.getString("phone"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	// 18
	int a = 2543;
	Date date = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("YYYY");
	String strDate = formatter.format(date);
	int b = Integer.parseInt(strDate);
	int c = b - a;

	public void insert(CustomerBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append("INSERT INTO customer (id, name, address, phone) VALUES (?,?,?,?);");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, "๙๙" + c + bean.getId());
			prepared.setString(2, bean.getName());
			prepared.setString(3, bean.getAddress());
			prepared.setString(4, bean.getPhone());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		// TODO Auto-generated method stub

	}

	public KeyBean custromerseq() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM customer_seq ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setCustromerSeq(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void insertseq(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into customer_seq values(?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, b2);
			prepared.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	// update
	public void update(CustomerBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" UPDATE customer SET  name = ? , address = ?, phone = ? WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getAddress());
			prepared.setString(3, bean.getPhone());
			prepared.setString(4, bean.getId());

			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}// end method update

	// delete
	public void delete(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" DELETE FROM customer WHERE id = ? ");
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
