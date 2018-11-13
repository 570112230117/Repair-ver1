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
import com.bru.dao.BrandDao;
import com.bru.dao.CompanyDao;
import com.bru.dao.CustomerDao;
import com.bru.dao.DeviceCategoryDao;
import com.bru.dao.DeviceDao;
import com.bru.dao.HistoryDao;
import com.bru.dao.JobTypeDao;
import com.bru.dao.MemberDao;
import com.bru.dao.ProblemDao;
import com.bru.dao.RepairDao;
import com.bru.dao.RepairStatusDao;
import com.bru.dao.RequestTypeDao;
import com.bru.model.BrandBean;
import com.bru.model.CompanyBean;
import com.bru.model.CustomerBean;
import com.bru.model.DeviceBean;
import com.bru.model.DeviceCategoryBean;
import com.bru.model.HistoryBean;
import com.bru.model.JobTypeBean;
import com.bru.model.MemberBean;
import com.bru.model.ProblemBean;
import com.bru.model.RepairBean;
import com.bru.model.RepairStatusBean;
import com.bru.model.RequestTypeBean;
import com.bru.model.TabelDeviceBean;
import com.bru.model.TabelallBean;
import com.bru.model.TestBean;
import com.bru.model.TestDeviceBean;

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
	@Autowired
	CompanyDao companyDao;
	@Autowired
	BrandDao brandDao;
	@Autowired
	DeviceDao deviceDao;
	@Autowired
	HistoryDao historyDao;
	@Autowired
	JobTypeDao jobTypeDao;
	@Autowired
	RequestTypeDao requestTypeDao;
	@Autowired
	DeviceCategoryDao deviceCategoryDao;
	// ดรอบดาวประเภทงานซ่อม
	@RequestMapping(value = "/Devicecategory")
	public List<DeviceCategoryBean> appliances() throws SQLException {
		List<DeviceCategoryBean> list = new ArrayList<>();
		list = deviceCategoryDao.Devicecategory();
		return list;
	}
	@RequestMapping(value = "/category")
	public DeviceCategoryBean category(@RequestBody TestBean testBean) throws SQLException {
		DeviceCategoryBean bean = new DeviceCategoryBean();
		bean = deviceCategoryDao.findById(testBean.getA());
		return bean;
	}
	
	// ดรอบดาวสถานะ
	@RequestMapping(value = "/repairstatus")
	public List<RepairStatusBean> repairstatus() throws SQLException {
		List<RepairStatusBean> list = new ArrayList<>();
		list = repairDao.repairstatus();
		return list;
	}
	// ดรอบดาวสถานะ
	@RequestMapping(value = "/repairstatuspersonnel")
	public List<RepairStatusBean> repairstatuspersonnel() throws SQLException {
		List<RepairStatusBean> list = new ArrayList<>();
		list = repairDao.repairstatus1();
		return list;
	}

	// ดรอบดาวประเภทงานซ่อม
//	@RequestMapping(value = "/problemm")
//	public RepairTypeBean problemm(@RequestBody TestBean testBean) throws SQLException {
//		RepairTypeBean bean = new RepairTypeBean();
//		bean = repairDao.findById(testBean.getA());
//		return bean;
//	}

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

	// customer
	@RequestMapping(value = "/customerTabel")
	public List<CustomerBean> customerx() throws SQLException {
		List<CustomerBean> list = new ArrayList<>();
		list = customerDao.customerTabel();
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

	@RequestMapping(value = "/repairtabelID")
	public List<TabelallBean> repairtabel(@RequestBody TestBean testBean) throws SQLException, ParseException {
		List<TabelallBean> list = new ArrayList<>();
		list = repairDao.listID(testBean.getA());
		return list;
	}
	// ดรอบดาวบริษัทส่งซ่อม
	@RequestMapping(value = "/companyDrop")
	public List<CompanyBean> company() throws SQLException {
		List<CompanyBean> list = new ArrayList<>();
		list = companyDao.company();
		return list;
	}

	@RequestMapping(value = "/listcompany")
	public CompanyBean listcompany(@RequestBody TestBean testBean) throws SQLException {
		CompanyBean bean = new CompanyBean();
		bean = companyDao.companyId(testBean.getA());
		return bean;
	}

	// ดรอบดาวปัญหา
	@RequestMapping(value = "/brand", method = RequestMethod.POST)
	public List<BrandBean> brand(@RequestBody TestBean testBean) throws SQLException {
		List<BrandBean> list = new ArrayList<>();
		list = brandDao.Brand(testBean);
		return list;
	}

	@RequestMapping(value = "/brandname", method = RequestMethod.POST)
	public BrandBean brandname(@RequestBody TestBean testBean) throws SQLException {
		BrandBean bean = new BrandBean();
		bean = brandDao.Brandname(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/devicelist")
	public List<TabelDeviceBean> Device() throws SQLException {
		List<TabelDeviceBean> list = new ArrayList<>();
		list = deviceDao.Devicelist();
		return list;
	}

	@RequestMapping(value = "/testdevice")
	public List<TestDeviceBean> testdevice() throws SQLException {
		List<TestDeviceBean> list = new ArrayList<>();
		list = deviceDao.concatlist();
		return list;
	}

	@RequestMapping(value = "/BrandTabel")
	public List<BrandBean> BrandTabel() throws SQLException {
		List<BrandBean> list = new ArrayList<>();
		list = brandDao.BrandTabel();
		return list;
	}

	@RequestMapping(value = "/BrandBeanId", method = RequestMethod.POST)
	public BrandBean BrandBeanId(@RequestBody TestBean testBean) throws SQLException {
		BrandBean bean = new BrandBean();
		bean = brandDao.BrandBeanId(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/CustomerfindById")
	public CustomerBean membCustomerfindByIderid(@RequestBody TestBean testBean) throws SQLException {
		CustomerBean bean = new CustomerBean();
		bean = repairDao.CustomerfindById(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/deviceID")
	public DeviceBean deviceID(@RequestBody TestBean testBean) throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.deviceID(testBean.getB());
		return bean;
	}

	@RequestMapping(value = "/repairEdit")
	public RepairBean repairEdit(@RequestBody TestBean testBean) throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairEdit(testBean.getId());
		return bean;
	}

	@RequestMapping(value = "/Editdevice")
	public DeviceBean Editdevice(@RequestBody TestBean testBean) throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.findById(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/Track")
	public TabelallBean Track(@RequestBody TestBean testBean) throws SQLException {
		TabelallBean bean = new TabelallBean();
		bean = repairDao.Track(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/history")
	public List<HistoryBean> history(@RequestBody TestBean testBean) throws SQLException, ParseException {
		List<HistoryBean> list = new ArrayList<>();
		list = historyDao.list(testBean.getA());
		return list;
	}

	@RequestMapping(value = "/COUNTC1")
	public RepairBean COUNT1() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.COUNTC1();
		return bean;
	}

	@RequestMapping(value = "/COUNTC2")
	public RepairBean COUNTC2() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.COUNTC2();
		return bean;
	}

	@RequestMapping(value = "/COUNTC3")
	public RepairBean COUNTC3() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.COUNTC3();
		return bean;
	}

	@RequestMapping(value = "/COUNTC4")
	public RepairBean COUNTC4() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.COUNTC4();
		return bean;
	}
	
	@RequestMapping(value = "/COUNTC5")
	public RepairBean COUNTC5() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.COUNTC5();
		return bean;
	}

	@RequestMapping(value = "/countNB")
	public DeviceBean countNB() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countNB();
		return bean;
	}

	@RequestMapping(value = "/countCS")
	public DeviceBean countCS() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countCS();
		return bean;
	}

	@RequestMapping(value = "/countPT")
	public DeviceBean countPT() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countPT();
		return bean;
	}

	@RequestMapping(value = "/countCY")
	public DeviceBean countCY() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countCY();
		return bean;
	}

	@RequestMapping(value = "/countMT")
	public DeviceBean countMT() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countMT();
		return bean;
	}

	@RequestMapping(value = "/countFT")
	public DeviceBean countFT() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countFT();
		return bean;
	}

	@RequestMapping(value = "/countCM")
	public DeviceBean countCM() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countCM();
		return bean;
	}

	@RequestMapping(value = "/countSK")
	public DeviceBean countSK() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countSK();
		return bean;
	}

	@RequestMapping(value = "/countTN")
	public DeviceBean countTN() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countTN();
		return bean;
	}

	@RequestMapping(value = "/countVE")
	public DeviceBean countVE() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countVE();
		return bean;
	}

	@RequestMapping(value = "/countS0")
	public DeviceBean countS0() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countS0();
		return bean;
	}
	
	@RequestMapping(value = "/JobType")
	public List<JobTypeBean> JobType() throws SQLException {
		List<JobTypeBean> list = new ArrayList<>();
		list = jobTypeDao.Joblist();
		return list;
	}
	@RequestMapping(value = "/JoblistTabel")
	public List<JobTypeBean> JoblistTabel() throws SQLException {
		List<JobTypeBean> list = new ArrayList<>();
		list = jobTypeDao.JoblistTabel();
		return list;
	}
	
	@RequestMapping(value = "/RequestTabel")
	public List<RequestTypeBean> RequestTabel() throws SQLException {
		List<RequestTypeBean> list = new ArrayList<>();
		list = requestTypeDao.RequestTabel();
		return list;
	}
	@RequestMapping(value = "/JobId")
	public JobTypeBean JobId(@RequestBody TestBean testBean) throws SQLException {
		JobTypeBean bean = new JobTypeBean();
		bean = jobTypeDao.findById(testBean.getA());
		return bean;
	}
	@RequestMapping(value = "/RequesfindById")
	public RequestTypeBean RequesfindById(@RequestBody TestBean testBean) throws SQLException {
		RequestTypeBean bean = new RequestTypeBean();
		bean = requestTypeDao.findById(testBean.getA());
		return bean;
	}
	@RequestMapping(value = "/RequesId")
	public RequestTypeBean RequesId(@RequestBody TestBean testBean) throws SQLException {
		RequestTypeBean bean = new RequestTypeBean();
		bean = requestTypeDao.ById(testBean.getA());
		return bean;
	}
	@RequestMapping(value = "/deviceropdown")
	public List<TestDeviceBean> deviceropdown() throws SQLException {
		List<TestDeviceBean> list = new ArrayList<>();
		list = deviceDao.dropdown();
		return list;
	}
	// end
}
