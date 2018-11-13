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
							+ "FROM device d\r\n" + "ORDER BY d.id DESC");
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
			sql.append("SELECT * FROM device WHERE id = ?");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
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
			sql.append(" SELECT * FROM device rp WHERE rp.id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new DeviceBean();
				bean.setId(rs.getInt("id"));
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
			// prepared.setString(15, bean.getDeviceId());
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
