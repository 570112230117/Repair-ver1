package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;
import com.bru.model.HistoryBean;
import com.bru.util.ConnectDB;

@Repository
public class HistoryDao {

	public HistoryBean findById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		HistoryBean bean = new HistoryBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM repair_history WHERE repair_id = ? ; ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new HistoryBean();
				bean.setId(rs.getString("id"));
				bean.setRepairId(rs.getString("repair_id"));
				bean.setCustomerId(rs.getString("customer_id"));
				bean.setDeviceId(rs.getString("device_id"));

				bean.setRepairDate(rs.getString("repair_date"));

				bean.setCompleteDate(rs.getDate("complete_date"));
				bean.setProblem(rs.getString("problem"));
				bean.setMemberId(rs.getString("member_id"));
				bean.setRepairStatus(rs.getString("repair_status"));
				bean.setSpareparts(rs.getFloat("spareparts"));
				bean.setServiceCharge(rs.getFloat("servicecharge"));
				bean.setSum(rs.getFloat("sum"));

				bean.setCompletionDate(rs.getString("completion"));

				bean.setTechnician(rs.getString("technician"));
				bean.setRepairDetails(rs.getString("repair_details"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public List<HistoryBean> list(String id) throws SQLException, ParseException {
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<HistoryBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		HistoryBean bean = new HistoryBean();
		Connection conn = con.openConnect();
		try {
			sql.append("SELECT * FROM repair_history WHERE repair_id = ? ; ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new HistoryBean();
				bean.setId(rs.getString("id"));
				bean.setRepairId(rs.getString("repair_id"));
				bean.setCustomerId(rs.getString("customer_id"));
				bean.setDeviceId(rs.getString("device_id"));

				bean.setRepairDate(rs.getString("repair_date"));

				bean.setCompleteDate(rs.getDate("complete_date"));
				bean.setProblem(rs.getString("problem"));
				bean.setMemberId(rs.getString("member_id"));
				bean.setRepairStatus(rs.getString("repair_status"));
				bean.setSpareparts(rs.getFloat("spareparts"));
				bean.setServiceCharge(rs.getFloat("servicecharge"));
				bean.setSum(rs.getFloat("sum"));

				bean.setCompletionDate(rs.getString("completion"));
				Date date = dt.parse(bean.getCompletionDate());
				bean.setCompletionDate(dt.format(date));

				bean.setTechnician(rs.getString("technician"));
				bean.setRepairDetails(rs.getString("repair_details"));
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
