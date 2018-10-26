package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
					" INSERT INTO device (device_number,customer_id,device_date,device_name,serialnumber,device_type,brand,generation,cpu,harddisk,monitor,distributor,ip,warranty,note) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getDeviceNumber());
			prepared.setString(2, bean.getCustomer());
			prepared.setString(3, bean.getDeviceDate());
			prepared.setString(4, bean.getDeviceName());
			prepared.setString(5, bean.getSerialNumber());
			prepared.setString(6, bean.getDeviceType());
			prepared.setString(7, bean.getBrand());
			prepared.setString(8, bean.getGeneration());
			prepared.setString(9, bean.getCpu());
			prepared.setString(10, bean.getHarddisk());
			prepared.setString(11, bean.getMonitor());
			prepared.setString(12, bean.getDistributor());
			prepared.setString(13, bean.getIp());
			prepared.setString(14, bean.getWarranty());
			prepared.setString(15, bean.getNote());
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
					"SELECT d.id , d.serialnumber , rt.device_type_name ,c.name , CONCAT(d.device_number, \" - \",rt.device_type_name, \" \", b.name , \" รุ่น \", d.generation) AS nameconcat\r\n"
							+ "FROM device d \r\n" + "INNER JOIN repair_type rt ON d.device_type = rt.id\r\n"
							+ "INNER JOIN brand b ON d.brand = b.id\r\n"
							+ "INNER JOIN customer c ON d.customer_id = c.id;");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new TabelDeviceBean();
				bean.setId(rs.getInt("d.id"));
				bean.setDevicename(rs.getString("nameconcat"));
				bean.setSerialnumber(rs.getString("d.serialnumber"));
				bean.setDevicetype(rs.getString("rt.device_type_name"));
//				bean.setBrand(rs.getString("b.name"));
//				bean.setGeneration(rs.getString("d.generation"));
				bean.setCustomer(rs.getString("c.name"));
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
	
}
