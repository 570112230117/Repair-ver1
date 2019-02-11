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
import com.bru.dao.CustomerDao;
import com.bru.dao.DeviceCategoryDao;
import com.bru.dao.DeviceDao;
import com.bru.dao.HistoryDao;
import com.bru.dao.MemberDao;
import com.bru.dao.ProblemDao;
import com.bru.dao.RepairDao;
import com.bru.dao.RepairStatusDao;
import com.bru.dao.RepairTypeDao;
import com.bru.model.BrandBean;
import com.bru.model.CustomerBean;
import com.bru.model.DeviceBean;
import com.bru.model.DeviceCategoryBean;
import com.bru.model.HistoryBean;
import com.bru.model.MemberBean;
import com.bru.model.ProblemBean;
import com.bru.model.RepairBean;
import com.bru.model.RepairStatusBean;
import com.bru.model.RepairTypeBean;
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
	BrandDao brandDao;
	@Autowired
	DeviceDao deviceDao;
	@Autowired
	HistoryDao historyDao;
	@Autowired
	DeviceCategoryDao deviceCategoryDao;
	@Autowired
	RepairTypeDao repairTypeDao;

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
		list = repairStatusDao.repairstatus();
		return list;
	}

	// ดรอบดาวประเภทงานซ่อม
	// @RequestMapping(value = "/problemm")
	// public RepairTypeBean problemm(@RequestBody TestBean testBean) throws
	// SQLException {
	// RepairTypeBean bean = new RepairTypeBean();
	// bean = repairDao.findById(testBean.getA());
	// return bean;
	// }

	// ดรอบดาวประเภทงานซ่อม
	@RequestMapping(value = "/problemtabel")
	public List<ProblemBean> problemtabel() throws SQLException {
		List<ProblemBean> list = new ArrayList<>();
		list = problemDao.problemtable();
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
		list = historyDao.list(testBean.getRepairId());
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

	@RequestMapping(value = "/COUNTC6")
	public RepairBean COUNTC6() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.COUNTC6();
		return bean;
	}

	@RequestMapping(value = "/COUNTC7")
	public RepairBean COUNTC7() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.COUNTC7();
		return bean;
	}

	@RequestMapping(value = "/COUNTC8")
	public RepairBean COUNTC8() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.COUNTC8();
		return bean;
	}

	@RequestMapping(value = "/countCustomer")
	public CustomerBean countCustomer() throws SQLException {
		CustomerBean bean = new CustomerBean();
		bean = customerDao.countCustomer();
		return bean;
	}

	@RequestMapping(value = "/countMember")
	public MemberBean countMember() throws SQLException {
		MemberBean bean = new MemberBean();
		bean = memberDao.countMember();
		return bean;
	}

	@RequestMapping(value = "/countRepair")
	public RepairBean countRepair() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.countRepair();
		return bean;
	}

	@RequestMapping(value = "/countDevice")
	public DeviceBean countDevice() throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.countDevice();
		return bean;
	}

	@RequestMapping(value = "/sumRepair")
	public RepairBean sumRepair() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.sumRepair();
		return bean;
	}

	@RequestMapping(value = "/chartNOTEBOOK")
	public RepairBean chartNOTEBOOK() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.chartNOTEBOOK();
		return bean;
	}

	@RequestMapping(value = "/chartCOMPUTER")
	public RepairBean chartCOMPUTER() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.chartCOMPUTER();
		return bean;
	}

	@RequestMapping(value = "/chartPRINTER")
	public RepairBean chartPRINTER() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.chartPRINTER();
		return bean;
	}

	@RequestMapping(value = "/chartThai1")
	public RepairBean chartThai1() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.chartThai1();
		return bean;
	}

	@RequestMapping(value = "/chartMONITER")
	public RepairBean chartMONITER() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.chartMONITER();
		return bean;
	}

	@RequestMapping(value = "/chartFAX")
	public RepairBean chartFAX() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.chartFAX();
		return bean;
	}

	@RequestMapping(value = "/chartThai2")
	public RepairBean chartThai2() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.chartThai2();
		return bean;
	}

	@RequestMapping(value = "/chartThai3")
	public RepairBean chartThai3() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.chartThai3();
		return bean;
	}

	@RequestMapping(value = "/chartThai4")
	public RepairBean chartThai4() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.chartThai4();
		return bean;
	}

	@RequestMapping(value = "/chartThai5")
	public RepairBean chartThai5() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.chartThai5();
		return bean;
	}

	@RequestMapping(value = "/repairType1")
	public RepairBean repairType1() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType1();
		return bean;
	}

	@RequestMapping(value = "/repairType2")
	public RepairBean repairType2() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType2();
		return bean;
	}

	@RequestMapping(value = "/repairType3")
	public RepairBean repairType3() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType3();
		return bean;
	}

	@RequestMapping(value = "/repairType4")
	public RepairBean repairType4() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType4();
		return bean;
	}

	@RequestMapping(value = "/repairType5")
	public RepairBean repairType5() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType5();
		return bean;
	}

	@RequestMapping(value = "/repairType6")
	public RepairBean repairType6() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType6();
		return bean;
	}

	@RequestMapping(value = "/repairType7")
	public RepairBean repairType7() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType7();
		return bean;
	}

	@RequestMapping(value = "/repairType8")
	public RepairBean repairType8() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType8();
		return bean;
	}

	@RequestMapping(value = "/repairType9")
	public RepairBean repairType9() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType9();
		return bean;
	}

	@RequestMapping(value = "/repairType10")
	public RepairBean repairType10() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType10();
		return bean;
	}

	@RequestMapping(value = "/repairType11")
	public RepairBean repairType11() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType11();
		return bean;
	}

	@RequestMapping(value = "/repairType12")
	public RepairBean repairType12() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType12();
		return bean;
	}

	@RequestMapping(value = "/repairType13")
	public RepairBean repairType13() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType13();
		return bean;
	}

	@RequestMapping(value = "/repairType17")
	public RepairBean repairType17() throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.repairType17();
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

	// @RequestMapping(value = "/JobType")
	// public List<JobTypeBean> JobType() throws SQLException {
	// List<JobTypeBean> list = new ArrayList<>();
	// list = jobTypeDao.Joblist();
	// return list;
	// }

	// @RequestMapping(value = "/JoblistTabel")
	// public List<JobTypeBean> JoblistTabel() throws SQLException {
	// List<JobTypeBean> list = new ArrayList<>();
	// list = jobTypeDao.JoblistTabel();
	// return list;
	// }

	// @RequestMapping(value = "/RequestTabel")
	// public List<RequestTypeBean> RequestTabel() throws SQLException {
	// List<RequestTypeBean> list = new ArrayList<>();
	// list = requestTypeDao.RequestTabel();
	// return list;
	// }

	// @RequestMapping(value = "/JobId")
	// public JobTypeBean JobId(@RequestBody TestBean testBean) throws SQLException
	// {
	// JobTypeBean bean = new JobTypeBean();
	// bean = jobTypeDao.findById(testBean.getA());
	// return bean;
	// }

	// @RequestMapping(value = "/RequesfindById")
	// public RequestTypeBean RequesfindById(@RequestBody TestBean testBean) throws
	// SQLException {
	// RequestTypeBean bean = new RequestTypeBean();
	// bean = requestTypeDao.findById(testBean.getA());
	// return bean;
	// }

	// @RequestMapping(value = "/RequesId")
	// public RequestTypeBean RequesId(@RequestBody TestBean testBean) throws
	// SQLException {
	// RequestTypeBean bean = new RequestTypeBean();
	// bean = requestTypeDao.ById(testBean.getA());
	// return bean;
	// }

	@RequestMapping(value = "/deviceropdown")
	public List<TestDeviceBean> deviceropdown() throws SQLException {
		List<TestDeviceBean> list = new ArrayList<>();
		list = deviceDao.dropdown();
		return list;
	}

	@RequestMapping(value = "/RepairTypeDrop")
	public List<RepairTypeBean> RepairType() throws SQLException {
		List<RepairTypeBean> list = new ArrayList<>();
		list = repairTypeDao.RepairType();
		return list;
	}

	@RequestMapping(value = "/findByIdlist")
	public List<ProblemBean> findByIdlist(@RequestBody TestBean testBean) throws SQLException {
		List<ProblemBean> list = new ArrayList<>();
		list = problemDao.findByIdlist(testBean.getA());
		return list;
	}

	@RequestMapping(value = "/Occupier")
	public DeviceBean Occupier(@RequestBody TestBean testBean) throws SQLException {
		DeviceBean bean = new DeviceBean();
		bean = deviceDao.Occupier(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/RepairTypeID")
	public RepairTypeBean RepairTypeID(@RequestBody TestBean testBean) throws SQLException {
		RepairTypeBean bean = new RepairTypeBean();
		bean = repairTypeDao.findById(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/editHistory")
	public HistoryBean editHistory(@RequestBody TestBean testBean) throws SQLException {
		HistoryBean bean = new HistoryBean();
		bean = historyDao.findByIdlist(testBean.getA());
		return bean;
	}

	@RequestMapping(value = "/countType")
	public List<RepairTypeBean> countType(@RequestBody TestBean testBean) throws SQLException {
		List<RepairTypeBean> list = new ArrayList<>();
		list = repairTypeDao.testcountType(testBean.getA());
		return list;
	}
	// end
}
