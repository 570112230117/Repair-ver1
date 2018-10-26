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

	public TestBean valuesId(String values) {
		TestBean bean = new TestBean();
		bean.setIdvalues(values);
		return bean;
	}
	
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
					" INSERT INTO repair (id,repair_date,customer_name,repair_complete,member_name,rapair_type,device_name,problem,repair_service,repair_status,spare_parts,service_charge,sum) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getId() + c + bean.getSeq());
			prepared.setString(2, bean.getRepairDate());
			prepared.setString(3, bean.getCustomerName());
			prepared.setDate(4, bean.getRepairComplete());
			prepared.setString(5, bean.getMemberName());
			prepared.setString(6, bean.getRapairType());
			prepared.setString(7, bean.getDeviceName());
			prepared.setString(8, bean.getProblem());
			prepared.setString(9, bean.getRepairservice());
			prepared.setString(10, bean.getRepairStatus());
			prepared.setString(11, bean.getSpareparts());
			prepared.setString(12, bean.getServicecharge());
			prepared.setString(13, bean.getSum());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}
	public void updaterepairedit(RepairBean bean) throws SQLException {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(
					" UPDATE repair	SET rapair_type = ?, device_name = ?, problem = ? , date_completion = ? , member_role = ? , repair_details = ? , repair_status = ? , spare_parts = ? , service_charge = ? , sum = ?  WHERE id = ? ");
			prepared = conn.prepareStatement(sql.toString());	
			prepared.setString(1, bean.getRapairType());
			prepared.setString(2, bean.getDeviceName());
			prepared.setString(3, bean.getProblem());
			prepared.setDate(4, bean.getDatecompletion());
			prepared.setString(5, bean.getMemberrole());
			prepared.setString(6, bean.getRepairdetails());			
			prepared.setString(7, bean.getRepairStatus());
			prepared.setString(8, bean.getSpareparts());
			prepared.setString(9, bean.getServicecharge());
			prepared.setString(10, bean.getSum());
			prepared.setString(11, bean.getId());
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
					" SELECT r.id , r.repair_date , c.name , c.phone , r.device_name , r.problem , r.repair_status \r\n" + 
					"FROM repair r\r\n" + 
					"INNER JOIN customer c ON r.customer_name = c.id;");
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
				bean.setDevice(rs.getString("r.device_name"));
				bean.setProblem(rs.getString("r.problem"));
				bean.setStatus(rs.getString("r.repair_status"));
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
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		AmnuayBean bean = new AmnuayBean();
		Connection conn = con.openConnect();
		try {
			sql.append(
					"SELECT r.id , r.customer_name , c.name , c.address , c.phone , r.repair_date , r.repair_complete , r.member_name , r.repair_service , rt.name , r.device_name , r.problem , r.repair_status , r.spare_parts , r.service_charge , r.sum \r\n" + 
					"FROM repair r \r\n" + 
					"INNER JOIN customer c ON r.customer_name = c.id\r\n" + 
					"INNER JOIN repair_type rt ON r.rapair_type = rt.initials\r\n" + 
					"WHERE r.id = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setId(rs.getString("r.id"));
				bean.setDate(rs.getString("r.repair_date"));
				bean.setCustomer(rs.getString("r.customer_name"));
				Date date = dt.parse(bean.getDate());
				bean.setDate(dt.format(date));
				bean.setName(rs.getString("c.name"));
				bean.setAddress(rs.getString("c.address"));
				bean.setPhone(rs.getString("c.phone"));
				bean.setType(rs.getString("rt.name"));
				bean.setDevice(rs.getString("r.device_name"));
				bean.setProblem(rs.getString("r.problem"));
				bean.setComplete(rs.getString("r.repair_complete"));
				bean.setMember(rs.getString("r.member_name"));
				bean.setStatus(rs.getString("r.repair_status"));
				bean.setSpareparts(rs.getString("r.spare_parts"));
				bean.setServicecharge(rs.getString("r.service_charge"));
				bean.setSum(rs.getString("r.sum"));
				bean.setCompany(rs.getString("r.repair_service"));
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
