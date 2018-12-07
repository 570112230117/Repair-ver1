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

	public DeviceBean countDevice() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(id) as cu FROM device ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setId(rs.getInt("cu"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void insertdevice(DeviceBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO device (serial_number,device_category,brand,generation,warranty,price,cpu,memory,harddisk,graphics,display,os,note,custromer_id,device_date) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getSerialnumber());
			prepared.setString(2, bean.getDeviceCategory());
			prepared.setString(3, bean.getBrand());
			prepared.setString(4, bean.getGeneration());
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
			prepared.setString(15, bean.getDeviceDate());
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
					"SELECT d.id , d.custromer_id , c.name , c.phone ,  d.serial_number , CONCAT(d.device_category , \" ยี่ห้อ \", d.brand , \" รุ่น \"  , d.generation) AS devicename\r\n"
							+ "FROM device d\r\n" + "INNER JOIN customer c ON d.custromer_id = c.id\r\n"
							+ "ORDER BY d.id DESC");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new TabelDeviceBean();
				bean.setId(rs.getString("d.id"));
				bean.setcID(rs.getString("d.custromer_id"));
				bean.setcName(rs.getString("c.name"));
				bean.setcPhone(rs.getString("c.phone"));
				bean.setSerialnumber(rs.getString("d.serial_number"));
				bean.setDeviceName(rs.getString("devicename"));

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
			sql.append("SELECT d.id , CONCAT(d.device_number, \" - \",d.device_name) AS name\r\n" + "FROM device d ;");
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

	public List<TestDeviceBean> dropdown() throws SQLException {
		List<TestDeviceBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		TestDeviceBean bean = new TestDeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					"SELECT d.id , CONCAT(\"(\" , d.serial_number,\")\", \" - \", d.device_category , \" ยี่ห้อ \" , d.brand , \" รุ่น \" , d.generation) AS name\r\n"
							+ "FROM device d \r\n" + "ORDER BY d.id DESC");
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
					"SELECT d.* , c.name FROM device d INNER JOIN customer c ON d.custromer_id = c.id WHERE d.id = ?");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setDeviceCategory(rs.getString("d.device_category"));
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
				bean.setCustromerId(rs.getString("d.custromer_id"));
				bean.setName(rs.getString("c.name"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean Occupier(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append("SELECT d.custromer_id , c.name\r\n" + "FROM device d\r\n"
					+ "INNER JOIN customer c ON d.custromer_id = c.id\r\n" + "WHERE d.id = ?");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setStrId(rs.getString("d.custromer_id"));
				bean.setName(rs.getString("c.name"));
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
			sql.append(
					" SELECT rp.* , c.name FROM device rp INNER JOIN customer c ON rp.custromer_id = c.id WHERE rp.id = ?");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setId(rs.getInt("rp.id"));
				bean.setDeviceCategory(rs.getString("rp.device_category"));
				bean.setBrand(rs.getString("rp.brand"));
				bean.setGeneration(rs.getString("rp.generation"));
				bean.setSerialnumber(rs.getString("rp.serial_number"));
				bean.setWarranty(rs.getString("rp.warranty"));
				bean.setPrice(rs.getFloat("rp.price"));
				bean.setCpu(rs.getString("rp.cpu"));
				bean.setMemory(rs.getString("rp.memory"));
				bean.setHarddisk(rs.getString("rp.harddisk"));
				bean.setGraphics(rs.getString("rp.graphics"));
				bean.setDisplay(rs.getString("rp.display"));
				bean.setOs(rs.getString("rp.os"));
				bean.setNote(rs.getString("rp.note"));
				bean.setCustromerId(rs.getString("rp.custromer_id"));
				bean.setCustromerName(rs.getString("c.name"));
				bean.setDeviceDate(rs.getString("rp.device_date"));
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
					" UPDATE device	SET device_category = ?, brand = ?, generation = ? , serial_number = ? , warranty = ? , price = ? , cpu = ? , memory = ? , harddisk = ? , graphics = ? , display = ? , os = ? , note = ? , custromer_id = ?  WHERE id = ? ");
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
			prepared.setInt(15, bean.getId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public DeviceBean countNB() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'NOTEBOOK' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean countCS() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'COMPUTER' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean countPT() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'PRINTER' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean countCY() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'เครื่องถ่ายฯ' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean countMT() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'MONITER' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean countFT() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'FAX' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean countCM() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'กล้อง' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean countSK() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'ตู้สาขา' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean countTN() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'โทรศัพท์' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean countVE() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'เครื่องอื่นๆ' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public DeviceBean countS0() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		DeviceBean bean = new DeviceBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT count(d.device_category) as repairSum FROM  device d WHERE d.device_category = 'S0' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setDeviceCategory(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}
	//
}
