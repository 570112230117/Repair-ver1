package com.bru.controller;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;

import com.bru.dao.CustomerDao;
import com.bru.dao.MemberDao;
import com.bru.dao.ProblemDao;
import com.bru.dao.RepairDao;
import com.bru.dao.RepairStatusDao;
import com.bru.model.CustomerBean;
import com.bru.model.MemberBean;
import com.bru.model.ProblemBean;

import com.bru.model.RepairStatusBean;
import com.bru.model.RepairTypeBean;
import com.bru.model.TabelallBean;
import com.bru.model.TestBean;

@RestController
public class RepairRestController {
	@Autowired
	RepairDao repairDao;
	@Autowired
	MemberDao memberDao;
	@Autowired
	CustomerDao customerDao;
	@Autowired
	RepairStatusDao repairStatusDao;
	@Autowired
	ProblemDao problemDao;

	// ดรอบดาวประเภทงานซ่อม
	@RequestMapping(value = "/repairtype")
	public List<RepairTypeBean> appliances() throws SQLException {
		List<RepairTypeBean> list = new ArrayList<>();
		list = repairDao.repairtype();
		return list;
	}

	// ดรอบดาวสถานะ
	@RequestMapping(value = "/repairstatus")
	public List<RepairStatusBean> repairstatus() throws SQLException {
		List<RepairStatusBean> list = new ArrayList<>();
		list = repairDao.repairstatus();
		return list;
	}

	// ดรอบดาวปัญหา
	@RequestMapping(value = "/problem", method = RequestMethod.POST)
	public List<ProblemBean> problem(@RequestBody TestBean testBean) throws SQLException {
		List<ProblemBean> list = new ArrayList<>();
		list = repairDao.problem(testBean);
		return list;
	}

	// ดรอบดาวประเภทงานซ่อม
	@RequestMapping(value = "/problemm")
	public RepairTypeBean problemm(@RequestBody TestBean testBean) throws SQLException {
		RepairTypeBean bean = new RepairTypeBean();
		bean = repairDao.findById(testBean.getA());
		return bean;
	}

	// ดรอบดาวประเภทงานซ่อม
	@RequestMapping(value = "/problemtabel")
	public List<ProblemBean> problemtabel() throws SQLException {
		List<ProblemBean> list = new ArrayList<>();
		list = repairDao.problemtable();
		return list;
	}

	// Member
	@RequestMapping(value = "/listmember")
	public List<MemberBean> member() throws SQLException {
		List<MemberBean> list = new ArrayList<>();
		list = memberDao.list();
		return list;
	}

	// customer
	@RequestMapping(value = "/listcustomer")
	public List<CustomerBean> customer() throws SQLException {
		List<CustomerBean> list = new ArrayList<>();
		list = customerDao.customer();
		return list;
	}

	@RequestMapping(value = "/modal")
	public CustomerBean modal(@RequestBody TestBean testBean) throws SQLException {
		CustomerBean bean = new CustomerBean();
		bean = customerDao.findById(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/liststatus")
	public RepairStatusBean liststatus(@RequestBody TestBean testBean) throws SQLException {
		RepairStatusBean bean = new RepairStatusBean();
		bean = repairStatusDao.findById(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/initials")
	public ProblemBean initials(@RequestBody TestBean testBean) throws SQLException {
		ProblemBean bean = new ProblemBean();
		bean = problemDao.findById(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/problemid")
	public ProblemBean problemid(@RequestBody TestBean testBean) throws SQLException {
		ProblemBean bean = new ProblemBean();
		bean = problemDao.problemid(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/memberid")
	public MemberBean memberid(@RequestBody TestBean testBean) throws SQLException {
		MemberBean bean = new MemberBean();
		bean = memberDao.findById(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/profileid")
	public MemberBean profileid() throws SQLException {
		TestBean beanid = new TestBean();
		beanid = memberDao.id();
		
		MemberBean bean = new MemberBean();
		bean = memberDao.findById(beanid.getId());
		return bean;
	}
	// customer
	@RequestMapping(value = "/repairtabel")
	public List<TabelallBean> repairtabel() throws SQLException, ParseException {
		List<TabelallBean> list = new ArrayList<>();
		list = repairDao.list();
		return list;
	}
	// end
}
