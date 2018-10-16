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
			sql.append(" SELECT * FROM brand WHERE id_repair_type = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, testBean.getA());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new BrandBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
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
}
