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
import com.bru.model.ProblemBean;
import com.bru.model.RepairBean;
import com.bru.model.RepairStatusBean;
import com.bru.model.RepairTypeBean;
import com.bru.model.TabelallBean;
import com.bru.model.TestBean;
import com.bru.util.ConnectDB;
import java.text.ParseException;

@Repository
public class RepairDao {

	// ดรอบดาวประเภทงานซ่อม
	public List<RepairTypeBean> repairtype() throws SQLException {
		List<RepairTypeBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairTypeBean bean = new RepairTypeBean();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM repair_type");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairTypeBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setDevice(rs.getString("device_type_name"));
				bean.setInitials(rs.getString("initials"));
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

	// ดรอบดาวปัญหา
	public List<ProblemBean> problem(TestBean testBean) throws SQLException {
		List<ProblemBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		ProblemBean bean = new ProblemBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM problem WHERE repair_type_initials = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, testBean.getA());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ProblemBean();
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

	public RepairTypeBean findById(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairTypeBean bean = new RepairTypeBean();
		Connection conn = con.openConnect();

		try {
			sql.append("SELECT * FROM repair_type WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setInitials(rs.getString("initials"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return bean;
	}

	public void update(RepairTypeBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" UPDATE repair_type SET  name = ?, initials = ?  WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getName());
			prepared.setString(2, bean.getInitials());
			prepared.setInt(3, bean.getId());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	// ดรอบดาวปัญหา
	public List<ProblemBean> problemtable() throws SQLException {
		List<ProblemBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		ProblemBean bean = new ProblemBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM problem ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ProblemBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setTypeName(rs.getString("repair_type_name"));
				bean.setTypeInitials(rs.getString("repair_type_initials"));
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

	// ดรอบดาวสถานะ
	public List<RepairStatusBean> repairstatus() throws SQLException {
		List<RepairStatusBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		RepairStatusBean bean = new RepairStatusBean();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM repair_status");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new RepairStatusBean();
				bean.setId(rs.getString("id"));
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
					" INSERT INTO repair (id,customer_id,device_id,repair_date,complete_date,problem,member_id,repair_status,spareparts,servicecharge,sum) VALUES (?,?,?,?,?,?,?,?,?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getId() + c + bean.getSeq());
			prepared.setString(2, bean.getCustomerId());
			prepared.setString(3, bean.getDeviceId());
			prepared.setString(4, bean.getRepairDate());
			prepared.setDate(5, bean.getCompleteDate());
			prepared.setString(6, bean.getProblem());
			prepared.setString(7, bean.getMemberId());
			prepared.setString(8, bean.getRepairStatus());
			prepared.setFloat(9, bean.getSpareparts());
			prepared.setFloat(10, bean.getServiceCharge());
			prepared.setFloat(11, bean.getSum());
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
					" UPDATE repair	SET completion_date = ?, technician = ?, repair_details = ? , repair_status = ? , spareparts = ? , servicecharge = ? , sum = ? , problem = ?   WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getCompletionDate());
			prepared.setString(2, bean.getTechnician());
			prepared.setString(3, bean.getRepairDetails());
			prepared.setString(4, bean.getRepairStatus());
			prepared.setFloat(5, bean.getSpareparts());
			prepared.setFloat(6, bean.getServiceCharge());
			prepared.setFloat(7, bean.getSum());
			prepared.setString(8, bean.getProblem());
			prepared.setString(9, bean.getId());
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
					"SELECT r.id , r.repair_date  , c.name , c.phone , r.problem , r.repair_status , r.technician , CONCAT( d.device_id , \" - \" , rt.name ,\"  \", d.brand ,\" รุ่น \", d.generation) AS deviceconcat\r\n"
							+ "FROM repair r \r\n" + "INNER JOIN customer c ON r.customer_id = c.id\r\n"
							+ "INNER JOIN device d ON r.device_id = d.device_id\r\n"
							+ "INNER JOIN repair_type rt ON d.device_category = rt.initials;");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new TabelallBean();
				bean.setDate(rs.getString("r.repair_date"));
				Date date = dt.parse(bean.getDate());
				bean.setId(rs.getString("r.id"));
				bean.setName(rs.getString("c.name"));
				bean.setDate(dt.format(date));
				bean.setPhone(rs.getString("c.phone"));
				bean.setDevice(rs.getString("deviceconcat"));
				bean.setProblem(rs.getString("r.problem"));
				bean.setStatus(rs.getString("r.repair_status"));
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

	public AmnuayBean editId(String id) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		AmnuayBean bean = new AmnuayBean();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM repair r WHERE r.id = ? ; ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getString("r.id"));
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
			sql.append(" SELECT * FROM repair r WHERE r.id = ? ; ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {

				bean.setId(rs.getString("id"));
				bean.setCustomerId(rs.getString("customer_id"));
				bean.setDeviceId(rs.getString("device_id"));
				bean.setRepairDate(rs.getString("repair_date"));
				Date date = dt.parse(bean.getRepairDate());
				bean.setRepairDate(dt.format(date));
				bean.setCompleteDate(rs.getDate("complete_date"));
				bean.setProblem(rs.getString("problem"));
				bean.setMemberId(rs.getString("member_id"));
				bean.setRepairStatus(rs.getString("repair_status"));
				bean.setSpareparts(rs.getFloat("spareparts"));
				bean.setServiceCharge(rs.getFloat("servicecharge"));
				bean.setSum(rs.getFloat("sum"));
				bean.setRepairDetails(rs.getString("repair_details"));
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
	
	public TabelallBean Track(String id) throws SQLException {
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		TabelallBean bean = new TabelallBean();
		Connection conn = con.openConnect();
		try {
			sql.append("SELECT r.id , r.repair_date , r.customer_id , c.name , c.phone , r.problem , r.repair_status ,r.technician , r.spareparts , r.servicecharge , r.sum , CONCAT( d.device_id , \" - \" , rt.name ,\"  \", d.brand ,\" รุ่น \", d.generation) AS deviceconcat\r\n" + 
					"FROM repair r \r\n" + 
					"INNER JOIN customer c ON r.customer_id = c.id\r\n" + 
					"INNER JOIN device d ON r.device_id = d.device_id\r\n" + 
					"INNER JOIN repair_type rt ON d.device_category = rt.initials\r\n" + 
					"WHERE r.id = ? ;");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new TabelallBean();
				bean.setDate(rs.getString("r.repair_date"));
				Date date = dt.parse(bean.getDate());
				bean.setId(rs.getString("r.id"));
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
