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
				bean.setSpareparts(rs.getString("spareparts"));
				bean.setServiceCharge(rs.getString("servicecharge"));
				bean.setSum(rs.getString("sum"));

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

	public void update(HistoryBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" UPDATE repair_history SET  repair_status = ? , technicial_note_detail = ? , sum = ? WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getRepairStatus());
			prepared.setString(2, bean.getRepairDetails());
			prepared.setString(3, bean.getSum());
			prepared.setString(4, bean.getId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public HistoryBean findByIdlist(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		HistoryBean bean = new HistoryBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM repair_history WHERE id = ? ; ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new HistoryBean();
				bean.setId(rs.getString("id"));
				bean.setRepairStatus(rs.getString("repair_status"));
				bean.setRepairDetails(rs.getString("technicial_note_detail"));
				bean.setSum(rs.getString("sum"));
				bean.setTechnician(rs.getString("technician"));

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
			sql.append(
					"SELECT rh.id , rh.repair_id , rh.completion_date , rh.technicial_note_detail ,  rs.name , rh.sum ,rh.technician\r\n"
							+ "FROM repair_history rh\r\n"
							+ "INNER JOIN repair_status rs ON rh.repair_status = rs.id\r\n"
							+ "WHERE rh.repair_id = ? ORDER BY id DESC");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new HistoryBean();
				bean.setId(rs.getString("rh.id"));
				bean.setRepairId(rs.getString("rh.repair_id"));
				bean.setRepairStatus(rs.getString("rs.name"));

				bean.setSum(rs.getString("rh.sum"));
				bean.setCompletionDate(rs.getString("rh.completion_date"));
				Date date = dt.parse(bean.getCompletionDate());
				bean.setCompletionDate(dt.format(date));

				bean.setTechnician(rs.getString("rh.technician"));
				bean.setRepairDetails(rs.getString("rh.technicial_note_detail"));
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

	// delete
	public void delete(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" DELETE FROM repair_history WHERE id = ? ");
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
