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
import com.bru.model.AmnuayBean;
import com.bru.model.CustomerBean;
import com.bru.model.KeyBean;
import com.bru.model.RepairBean;
import com.bru.model.TabelallBean;
import com.bru.util.ConnectDB;
import java.text.ParseException;

@Repository
public class RepairDao {
	// 18
	int a = 2543;
	Date date = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("YYYY");
	String strDate = formatter.format(date);
	int b = Integer.parseInt(strDate);
	int c = b - a;

	public void insertrepair(RepairBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO repair (repair_id,customer_id,device_id,repair_date,complete_date,problem,member_id,repair_status,job_type,accessories,repair_limit,technicial_note,spareparts,servicecharge,sum,other,technician) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getId() + c + bean.getSeq());
			prepared.setString(2, bean.getCustomerId());
			prepared.setString(3, bean.getDeviceId());
			prepared.setString(4, bean.getRepairDate());
			prepared.setDate(5, bean.getCompleteDate());
			prepared.setString(6, bean.getProblem());
			prepared.setString(7, bean.getMemberId());
			prepared.setString(8, bean.getRepairStatus());
			prepared.setString(9, bean.getJobType());
			prepared.setString(10, bean.getAccessories());
			prepared.setString(11, bean.getRepairLimit());
			prepared.setString(12, bean.getTechnicialNote());
			prepared.setString(13, bean.getSpareparts());
			prepared.setString(14, bean.getServiceCharge());
			prepared.setString(15, bean.getSum());
			prepared.setString(16, bean.getOther());
			prepared.setString(17, bean.getMemberId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public void history(RepairBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO repair_history (repair_id,customer_id,device_id,repair_date,complete_date,problem,member_id,repair_status,job_type,accessories,repair_limit,technicial_note,spareparts,servicecharge,sum,completion_date,other,technician) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getId() + c + bean.getSeq());
			prepared.setString(2, bean.getCustomerId());
			prepared.setString(3, bean.getDeviceId());
			prepared.setString(4, bean.getRepairDate());
			prepared.setDate(5, bean.getCompleteDate());
			prepared.setString(6, bean.getProblem());
			prepared.setString(7, bean.getMemberId());
			prepared.setString(8, bean.getRepairStatus());
			prepared.setString(9, bean.getJobType());
			prepared.setString(10, bean.getAccessories());
			prepared.setString(11, bean.getRepairLimit());
			prepared.setString(12, bean.getTechnicialNote());
			prepared.setString(13, bean.getSpareparts());
			prepared.setString(14, bean.getServiceCharge());
			prepared.setString(15, bean.getSum());
			prepared.setString(16, bean.getRepairDate());
			prepared.setString(17, bean.getOther());
			prepared.setString(18, bean.getMemberId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public void history1(RepairBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO repair_history (repair_id,customer_id,device_id,repair_date,complete_date,problem,member_id,repair_status,spareparts,servicecharge,sum,completion_date,technician,technicial_note,technicial_note_detail,repair_limit,job_type,accessories) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getRepairID());
			prepared.setString(2, bean.getCustomerId());
			prepared.setString(3, bean.getDeviceId());
			prepared.setString(4, bean.getRepairDate());
			prepared.setDate(5, bean.getCompleteDate());
			prepared.setString(6, bean.getProblem());
			prepared.setString(7, bean.getMemberId());
			prepared.setString(8, bean.getRepairStatus());
			prepared.setString(9, bean.getSpareparts());
			prepared.setString(10, bean.getServiceCharge());
			prepared.setString(11, bean.getSum());
			prepared.setString(12, bean.getCompletionDate());
			prepared.setString(13, bean.getTechnician());
			prepared.setString(14, bean.getTechnicialNote());
			prepared.setString(15, bean.getTechnicialNoteDetail());
			prepared.setString(16, bean.getRepairLimit());
			prepared.setString(17, bean.getJobType());
			prepared.setString(18, bean.getAccessories());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public void updateedit(RepairBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" UPDATE repair	SET completion_date = ?, technician = ?, technicial_note_detail = ? , repair_status = ? , spareparts = ? , servicecharge = ? , sum = ?    WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getCompletionDate());
			prepared.setString(2, bean.getTechnician());
			prepared.setString(3, bean.getTechnicialNoteDetail());
			prepared.setString(4, bean.getRepairStatus());
			prepared.setString(5, bean.getSpareparts());
			prepared.setString(6, bean.getServiceCharge());
			prepared.setString(7, bean.getSum());
			prepared.setString(8, bean.getId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public List<TabelallBean> list() throws SQLException, ParseException {
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<TabelallBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		TabelallBean bean = new TabelallBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					"SELECT  r.id , r.repair_id , r.repair_date ,  CONCAT(\"(\" , r.customer_id , \")\" , \" คุณ \" , c.name) AS customername , c.phone , r.device_id , r.problem ,r.other, r.technician , rs.name\r\n"
							+ "FROM repair r \r\n" + "INNER JOIN customer c ON r.customer_id = c.id\r\n"
							+ "INNER JOIN repair_status rs ON r.repair_status = rs.id ORDER BY r.id DESC");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new TabelallBean();
				bean.setId(rs.getInt("r.id"));
				bean.setDate(rs.getString("r.repair_date"));
				Date date = dt.parse(bean.getDate());
				bean.setReprirId(rs.getString("r.repair_id"));
				bean.setName(rs.getString("customername"));
				bean.setDate(dt.format(date));
				bean.setPhone(rs.getString("c.phone"));
				bean.setDevice(rs.getString("r.device_id"));
				bean.setProblem(rs.getString("r.problem"));
				bean.setOther(rs.getString("r.other"));
				bean.setStatus(rs.getString("rs.name"));
				bean.setTechnician(rs.getString("r.technician"));
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

	public List<TabelallBean> listID(String id) throws SQLException, ParseException {
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<TabelallBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		TabelallBean bean = new TabelallBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					"SELECT r.id , r.repair_id ,  r.repair_date ,CONCAT(\"(\" , r.customer_id , \")\" , \" คุณ \" , c.name) AS customername , c.phone , r.problem ,r.other, r.technician , r.technicial_note_detail , rs.name\r\n"
							+ "FROM repair r\r\n" + "INNER JOIN customer c ON r.customer_id = c.id\r\n"
							+ "INNER JOIN repair_status rs ON r.repair_status = rs.id\r\n" + "WHERE device_id = ?");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new TabelallBean();
				bean.setId(rs.getInt("r.id"));
				bean.setDate(rs.getString("r.repair_date"));
				Date date = dt.parse(bean.getDate());
				bean.setReprirId(rs.getString("r.repair_id"));
				bean.setName(rs.getString("customername"));
				bean.setDate(dt.format(date));
				bean.setPhone(rs.getString("c.phone"));
				bean.setProblem(rs.getString("r.problem"));
				bean.setOther(rs.getString("r.other"));
				bean.setStatus(rs.getString("rs.name"));
				bean.setTechnician(rs.getString("r.technician"));
				bean.setTechnicialNoteDetail(rs.getString("r.technicial_note_detail"));
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

	public AmnuayBean editId(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		AmnuayBean bean = new AmnuayBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM repair r WHERE r.id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getString("r.id"));
				bean.setRepaieID(rs.getString("repair_id"));
				bean.setCustomer(rs.getString("customer_id"));
				bean.setDevice(rs.getString("device_id"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public CustomerBean CustomerfindById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		CustomerBean bean = new CustomerBean();
		Connection conn = con.openConnect();
		try {
			sql.append("SELECT * FROM customer WHERE id = ? ;");
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

	public RepairBean repairEdit(String id) throws SQLException {
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT r.* , rs.name , rt.name\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN repair_status rs ON r.repair_status = rs.id\r\n"
					+ "INNER JOIN repair_type rt ON r.job_type = rt.id\r\n" + "WHERE r.id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {

				bean.setId(rs.getString("id"));
				bean.setRepairID(rs.getString("repair_id"));
				bean.setCustomerId(rs.getString("customer_id"));
				bean.setDeviceId(rs.getString("device_id"));
				bean.setRepairDate(rs.getString("repair_date"));
				Date date = dt.parse(bean.getRepairDate());
				bean.setRepairDate(dt.format(date));
				bean.setCompleteDate(rs.getDate("complete_date"));
				bean.setProblem(rs.getString("problem"));
				bean.setOther(rs.getString("other"));
				bean.setMemberId(rs.getString("member_id"));
				bean.setRepairStatusID(rs.getString("repair_status"));
				bean.setRepairStatus(rs.getString("rs.name"));
				bean.setSpareparts(rs.getString("spareparts"));
				bean.setServiceCharge(rs.getString("servicecharge"));
				bean.setSum(rs.getString("sum"));
				bean.setTechnician(rs.getString("technician"));
				bean.setTechnicialNote(rs.getString("technicial_note"));
				bean.setTechnicialNoteDetail(rs.getString("technicial_note_detail"));
				bean.setRepairLimit(rs.getString("repair_limit"));
				bean.setAccessories(rs.getString("accessories"));
				bean.setJobTypeID(rs.getString("job_type"));
				bean.setJobType(rs.getString("rt.name"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public TabelallBean Track(String id) throws SQLException {
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		TabelallBean bean = new TabelallBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					"SELECT r.id , r.repair_date , r.customer_id , c.name , c.phone , r.problem , r.repair_status ,r.technician , r.spareparts , r.servicecharge , r.sum , CONCAT( d.device_id , \" - \" , rt.name ,\"  \", d.brand ,\" รุ่น \", d.generation) AS deviceconcat\r\n"
							+ "FROM repair r \r\n" + "INNER JOIN customer c ON r.customer_id = c.id\r\n"
							+ "INNER JOIN device d ON r.device_id = d.device_id\r\n"
							+ "INNER JOIN repair_type rt ON d.device_category = rt.initials\r\n" + "WHERE r.id = ? ;");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new TabelallBean();
				bean.setDate(rs.getString("r.repair_date"));
				Date date = dt.parse(bean.getDate());
				// bean.setId(rs.getString("r.id"));
				bean.setName(rs.getString("c.name"));
				bean.setDate(dt.format(date));
				bean.setPhone(rs.getString("c.phone"));
				bean.setDevice(rs.getString("deviceconcat"));
				bean.setProblem(rs.getString("r.problem"));
				bean.setStatus(rs.getString("r.repair_status"));
				bean.setTechnician(rs.getString("r.technician"));
				bean.setCustomerID(rs.getString("r.customer_id"));
				bean.setSpareparts(rs.getString("r.spareparts"));
				bean.setServicecharge(rs.getString("r.servicecharge"));
				bean.setSum(rs.getString("r.sum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void updatcustomer(RepairBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" UPDATE repair	SET customer_id = ? WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getCustomerId());			
			prepared.setString(2, bean.getId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}
	
	public void updatdevice(RepairBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" UPDATE repair	SET device_id = ? WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getDeviceId());			
			prepared.setString(2, bean.getId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}
	
	public void updatrepair(RepairBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" UPDATE repair	SET job_type = ?, problem = ?, accessories = ?, technicial_note = ? , repair_limit = ?  WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getJobTypeID());	
			prepared.setString(2, bean.getProblem());
			prepared.setString(3, bean.getAccessories());
			prepared.setString(4, bean.getTechnicialNote());
			prepared.setString(5, bean.getRepairLimit());
			prepared.setString(6, bean.getId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}
	
	public RepairBean COUNTC1() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append("  SELECT count(repair_status) as repairSum FROM  repair WHERE repair_status = '01' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setRepairStatus(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean COUNTC2() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append("  SELECT count(repair_status) as repairSum FROM  repair WHERE repair_status = '02' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setRepairStatus(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean COUNTC3() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append("  SELECT count(repair_status) as repairSum FROM  repair WHERE repair_status = '03' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setRepairStatus(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean COUNTC4() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append("  SELECT count(repair_status) as repairSum FROM  repair WHERE repair_status = '04' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setRepairStatus(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean COUNTC5() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append("SELECT count(repair_status) as repairSum FROM  repair WHERE repair_status = '13' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setRepairStatus(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean COUNTC6() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append("SELECT count(repair_status) as repairSum FROM  repair WHERE repair_status = '15' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setRepairStatus(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean COUNTC7() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append("SELECT count(repair_status) as repairSum FROM  repair WHERE repair_status = '14' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setRepairStatus(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean COUNTC8() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append("SELECT count(repair_status) as repairSum FROM  repair WHERE repair_status = '12' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setRepairStatus(rs.getString("repairSum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean countRepair() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(id) as cu FROM repair ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setId(rs.getString("cu"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean sumRepair() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT SUM(sum) as sum FROM repair ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setSum(rs.getString("sum"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean chartNOTEBOOK() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(d.device_category) as count_device_category\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN device d ON r.device_id = d.id\r\n" + "WHERE d.device_category = 'NOTEBOOK' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setDeviceId(rs.getString("count_device_category"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean chartCOMPUTER() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(d.device_category) as count_device_category\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN device d ON r.device_id = d.id\r\n" + "WHERE d.device_category = 'COMPUTER' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setDeviceId(rs.getString("count_device_category"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean chartPRINTER() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(d.device_category) as count_device_category\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN device d ON r.device_id = d.id\r\n" + "WHERE d.device_category = 'PRINTER' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setDeviceId(rs.getString("count_device_category"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean chartThai1() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(d.device_category) as count_device_category\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN device d ON r.device_id = d.id\r\n" + "WHERE d.device_category = 'เครื่องถ่ายฯ' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setDeviceId(rs.getString("count_device_category"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean chartMONITER() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(d.device_category) as count_device_category\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN device d ON r.device_id = d.id\r\n" + "WHERE d.device_category = 'MONITER'");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setDeviceId(rs.getString("count_device_category"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean chartFAX() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(d.device_category) as count_device_category\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN device d ON r.device_id = d.id\r\n" + "WHERE d.device_category = 'FAX' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setDeviceId(rs.getString("count_device_category"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean chartThai2() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(d.device_category) as count_device_category\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN device d ON r.device_id = d.id\r\n" + "WHERE d.device_category = 'กล้อง' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setDeviceId(rs.getString("count_device_category"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean chartThai3() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(d.device_category) as count_device_category\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN device d ON r.device_id = d.id\r\n" + "WHERE d.device_category = 'ตู้สาขา' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setDeviceId(rs.getString("count_device_category"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean chartThai4() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(d.device_category) as count_device_category\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN device d ON r.device_id = d.id\r\n" + "WHERE d.device_category = 'โทรศัพท์' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setDeviceId(rs.getString("count_device_category"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean chartThai5() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(d.device_category) as count_device_category\r\n" + "FROM repair r\r\n"
					+ "INNER JOIN device d ON r.device_id = d.id\r\n" + "WHERE d.device_category = 'เครื่องอื่นๆ' ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setDeviceId(rs.getString("count_device_category"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType1() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id)  AS countType FROM repair r WHERE r.job_type = 1 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType2() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 2 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType3() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 3 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType4() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 4 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType5() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 5 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType6() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 6 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType7() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 7 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType8() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 8 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType9() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 9 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType10() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 10 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType11() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 11 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType12() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 12 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType13() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 13 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public RepairBean repairType17() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairBean bean = new RepairBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT COUNT(r.id) AS countType FROM repair r WHERE r.job_type = 17 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairBean();
				bean.setJobTypeID(rs.getString("countType"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public KeyBean nb() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM nb ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setNbBean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void nb(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into nb values(?) ");
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

	public KeyBean cs() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM cs ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setCsBean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void cs(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into cs values(?) ");
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

	public KeyBean pt() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM pt ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setPtBean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void pt(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into pt values(?) ");
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

	public KeyBean cy() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM cy ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setCybean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void cy(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into cy values(?) ");
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

	public KeyBean mt() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM mt ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setMtBean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void mt(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into mt values(?) ");
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

	public KeyBean ft() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM ft ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setFtbean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void ft(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into ft values(?) ");
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

	public KeyBean cm() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM cm ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setCmbean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void cm(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into cm values(?) ");
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

	public KeyBean sk() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM sk ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setSkbean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void sk(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into sk values(?) ");
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

	public KeyBean tn() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM tn ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setTnbean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void tn(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into tn values(?) ");
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

	public KeyBean ve() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM ve ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setVebean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void ve(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into ve values(?) ");
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

	public KeyBean s0() throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		KeyBean bean = new KeyBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM s0 ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setS0bean(rs.getString("key"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void s0(int b2) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" insert into s0 values(?) ");
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
	// end
}
