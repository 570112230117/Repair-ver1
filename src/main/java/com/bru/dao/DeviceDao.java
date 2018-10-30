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
import com.bru.model.DeviceBean;
import com.bru.model.TabelDeviceBean;
import com.bru.model.TestDeviceBean;
import com.bru.util.ConnectDB;

@Repository
public class DeviceDao {

	public void insertdevice(DeviceBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO device (device_id,device_category,brand,generation,serial_number,warranty,price,cpu,memory,harddisk,graphics,display,os,note,custromer_id,device_date) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			prepared = conn.prepareStatement(sql.toString());			
			prepared.setString(1, bean.getDeviceId());
			prepared.setString(2, bean.getDeviceCategory());
			prepared.setString(3, bean.getBrand());
			prepared.setString(4, bean.getGeneration());
			prepared.setString(5, bean.getSerialnumber());
			prepared.setString(6, bean.getWarranty());
			prepared.setFloat(7, bean.getPrice());
			prepared.setString(8, bean.getCpu());
			prepared.setString(9, bean.getMemory());
			prepared.setString(10, bean.getHarddisk());
			prepared.setString(11, bean.getGraphics());
			prepared.setString(12, bean.getDisplay());
			prepared.setString(13, bean.getOs());
			prepared.setString(14, bean.getNote());
			prepared.setString(15, bean.getCustromerId());
			prepared.setString(16, bean.getDeviceDate());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	// ดรอบดาวประเภทงานซ่อม
	public List<TabelDeviceBean> Devicelist() throws SQLException {
		List<TabelDeviceBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		TabelDeviceBean bean = new TabelDeviceBean();
		Connection conn = con.openConnect();

		try {
			sql.append(
					"SELECT d.device_id, d.serial_number ,  CONCAT(\"รหัสลูกค้า : \" , d.custromer_id , \" คุณ : \" , c.name) AS customerName ,  CONCAT(rt.name ,\"  \", d.brand ,\" รุ่น \", d.generation) AS deviceconcat\r\n" + 
					"FROM device d\r\n" + 
					"INNER JOIN repair_type rt ON d.device_category = rt.initials\r\n" + 
					"INNER JOIN customer c ON d.custromer_id = c.id;");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new TabelDeviceBean();
				bean.setId(rs.getString("d.device_id"));
				bean.setDevice(rs.getString("deviceconcat"));
				bean.setSerialnumber(rs.getString("d.serial_number"));
				bean.setCustomer(rs.getString("customerName"));
	
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

	public List<TestDeviceBean> concatlist() throws SQLException {
		List<TestDeviceBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		TestDeviceBean bean = new TestDeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append("SELECT d.id , CONCAT(d.device_number, \" - \",d.device_name) AS name\r\n" + 
					"FROM device d ;");
			prepared = conn.prepareStatement(sql.toString());
		
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new TestDeviceBean();
				bean.setId(rs.getInt("d.id"));
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
	
	public DeviceBean deviceID(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					"SELECT d.* , rt.name\r\n" + 
					"FROM device d\r\n" + 
					"INNER JOIN repair_type rt ON d.device_category = rt.initials\r\n" + 
					"WHERE device_id = ? ;");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setDeviceId(rs.getString("d.device_id"));
				bean.setDeviceCategory(rs.getString("rt.name"));
				bean.setBrand(rs.getString("d.brand"));
				bean.setGeneration(rs.getString("d.generation"));
				bean.setSerialnumber(rs.getString("d.serial_number"));
				bean.setWarranty(rs.getString("d.warranty"));
				bean.setPrice(rs.getFloat("d.price"));
				bean.setCpu(rs.getString("d.cpu"));
				bean.setMemory(rs.getString("d.memory"));
				bean.setHarddisk(rs.getString("d.harddisk"));
				bean.setGraphics(rs.getString("d.graphics"));
				bean.setDisplay(rs.getString("d.display"));
				bean.setOs(rs.getString("d.os"));
				bean.setNote(rs.getString("d.note"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}
	public DeviceBean findById(String id) throws SQLException {
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM device rp WHERE rp.device_id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setDeviceId(rs.getString("device_id"));
				bean.setDeviceCategory(rs.getString("device_category"));
				bean.setBrand(rs.getString("brand"));
				bean.setGeneration(rs.getString("generation"));
				bean.setSerialnumber(rs.getString("serial_number"));
				bean.setWarranty(rs.getString("warranty"));
				bean.setPrice(rs.getFloat("price"));
				bean.setCpu(rs.getString("cpu"));
				bean.setMemory(rs.getString("memory"));
				bean.setHarddisk(rs.getString("harddisk"));
				bean.setGraphics(rs.getString("graphics"));
				bean.setDisplay(rs.getString("display"));
				bean.setOs(rs.getString("os"));
				bean.setNote(rs.getString("note"));
				bean.setCustromerId(rs.getString("custromer_id"));
				bean.setDeviceDate(rs.getString("device_date"));
				Date date = dt.parse(bean.getDeviceDate());
				bean.setDeviceDate(dt.format(date));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}
	public void updatedevice(DeviceBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" UPDATE device	SET device_category = ?, brand = ?, generation = ? , serial_number = ? , warranty = ? , price = ? , cpu = ? , memory = ? , harddisk = ? , graphics = ? , display = ? , os = ? , note = ? , custromer_id = ?  WHERE device_id = ? ");
			prepared = conn.prepareStatement(sql.toString());			
			prepared.setString(1, bean.getDeviceCategory());
			prepared.setString(2, bean.getBrand());
			prepared.setString(3, bean.getGeneration());
			prepared.setString(4, bean.getSerialnumber());
			prepared.setString(5, bean.getWarranty());
			prepared.setFloat(6, bean.getPrice());
			prepared.setString(7, bean.getCpu());
			prepared.setString(8, bean.getMemory());
			prepared.setString(9, bean.getHarddisk());
			prepared.setString(10, bean.getGraphics());
			prepared.setString(11, bean.getDisplay());
			prepared.setString(12, bean.getOs());
			prepared.setString(13, bean.getNote());
			prepared.setString(14, bean.getCustromerId());
			prepared.setString(15, bean.getDeviceId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}
}
