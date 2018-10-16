package com.bru.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bru.dao.CompanyDao;
import com.bru.dao.CustomerDao;
import com.bru.dao.DeviceDao;
import com.bru.dao.MemberDao;
import com.bru.dao.ProblemDao;
import com.bru.dao.RepairDao;
import com.bru.dao.RepairStatusDao;
import com.bru.model.AmnuayBean;
import com.bru.model.CompanyBean;
import com.bru.model.CustomerBean;
import com.bru.model.DeviceBean;
import com.bru.model.KeyBean;
import com.bru.model.ProblemBean;
import com.bru.model.RepairBean;
import com.bru.model.RepairStatusBean;
import com.bru.model.RepairTypeBean;

@Controller
public class RepairController {
	@Autowired
	MemberDao memberDao;
	@Autowired
	RepairDao repairDao;
	@Autowired
	CustomerDao customerDao;
	@Autowired
	RepairStatusDao repairStatusDao;
	@Autowired
	ProblemDao problemDao;
	@Autowired
	CompanyDao companyDao;
	@Autowired
	DeviceDao deviceDao;
	
	// insert
	@RequestMapping(value = "/insertcutromer")
	public String insertrepair(@RequestBody CustomerBean customerBean) throws Exception {
		KeyBean bean = new KeyBean();
		bean = customerDao.custromerseq();
		int a = Integer.parseInt(bean.getCustromerSeq());
		int b = a + 1;
		customerDao.insertseq(b);
		customerBean.setId(bean.getCustromerSeq());
		customerDao.insert(customerBean);

		return "customer";
	}

	@RequestMapping(path = "/updatemodal", method = RequestMethod.POST)
	public String updatemodal(CustomerBean customerBean) throws SQLException {
		customerDao.update(customerBean);
		return "customer";
	}

	@RequestMapping(path = "/deletemodal/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable String id) throws SQLException {
		customerDao.delete(id);
		return "customer";
	}

	// insert
	@RequestMapping(value = "/insertstatus")
	public String insertstatus(@RequestBody RepairStatusBean repairStatusBean) throws Exception {
		repairStatusDao.insertstatus(repairStatusBean);
		return "status";
	}

	@RequestMapping(path = "/updatestatus", method = RequestMethod.POST)
	public String updatestatus(RepairStatusBean repairStatusBean) throws SQLException {
		repairStatusDao.update(repairStatusBean);
		return "repairstatus";
	}

	@RequestMapping(path = "/deletestatus/{id}", method = RequestMethod.DELETE)
	public String deletestatus(@PathVariable String id) throws SQLException {
		repairStatusDao.delete(id);
		return "repairstatus";
	}

	// insert
	@RequestMapping(value = "/insertproblem")
	public String insertproblem(@RequestBody ProblemBean problemBean) throws Exception {
		problemDao.insert(problemBean);
		return "repairsetting";
	}

	@RequestMapping(path = "/updateproblem", method = RequestMethod.POST)
	public String updateproblem(ProblemBean problemBean) throws SQLException {
		problemDao.update(problemBean);
		return "repairsetting";
	}

	@RequestMapping(path = "/deleteproblem/{id}", method = RequestMethod.DELETE)
	public String deleteproblem(@PathVariable String id) throws SQLException {
		problemDao.delete(id);
		return "repairsetting";
	}

	@RequestMapping(path = "/updatetype", method = RequestMethod.POST)
	public String updatetype(RepairTypeBean repairTypeBean) throws SQLException {
		repairDao.update(repairTypeBean);
		return "repairsettingtype";
	}

	@RequestMapping(path = "/{values}", method = RequestMethod.GET)
	public String edit(@PathVariable("values") String values, HttpServletRequest request, Model model)
			throws SQLException {
		AmnuayBean bean = new AmnuayBean();
		bean = repairDao.editId(values);
		request.setAttribute("repairbean", bean);
		return "repair_edit";
	}

	// insert
	@RequestMapping(value = "/insertcompany")
	public String insertcompany(@RequestBody CompanyBean companyBean) throws Exception {
		companyDao.insert(companyBean);
		return "company";
	}

	@RequestMapping(path = "/updatecompany", method = RequestMethod.POST)
	public String updatecompany(CompanyBean companyBean) throws SQLException {
		companyDao.update(companyBean);
		return "company";
	}

	@RequestMapping(path = "/deletecompany/{id}", method = RequestMethod.DELETE)
	public String deletecompany(@PathVariable String id) throws SQLException {
		companyDao.delete(id);
		return "company";
	}
	// insert
	@RequestMapping(value = "/insertdevice")
	public String insertdevice(@RequestBody DeviceBean deviceBean) throws Exception {
		deviceDao.insertdevice(deviceBean);
		return "device";
	}
	// insert
	@RequestMapping(value = { "/insertrepair" }, method = RequestMethod.POST, produces = "application/json")
	public Map<String, String> insertrepair(@RequestBody RepairBean repairBean) throws Exception {
		KeyBean bean = new KeyBean();
		if (repairBean.getId().equals("NB")) {
			bean = repairDao.nb();
			int a = Integer.parseInt(bean.getNbBean());
			int b = a + 1;
			repairDao.nb(b);
			repairBean.setSeq(bean.getNbBean());
			repairDao.insertrepair(repairBean);
		} else if (repairBean.getId().equals("CS")) {
			bean = repairDao.cs();
			int a = Integer.parseInt(bean.getCsBean());
			int b = a + 1;
			repairDao.cs(b);
			repairBean.setSeq(bean.getCsBean());
			repairDao.insertrepair(repairBean);
		} else if (repairBean.getId().equals("PT")) {
			bean = repairDao.pt();
			int a = Integer.parseInt(bean.getPtBean());
			int b = a + 1;
			repairDao.pt(b);
			repairBean.setSeq(bean.getPtBean());
			repairDao.insertrepair(repairBean);
		} else if (repairBean.getId().equals("CY")) {
			bean = repairDao.cy();
			int a = Integer.parseInt(bean.getCybean());
			int b = a + 1;
			repairDao.cy(b);
			repairBean.setSeq(bean.getCybean());
			repairDao.insertrepair(repairBean);
		} else if (repairBean.getId().equals("MT")) {
			bean = repairDao.mt();
			int a = Integer.parseInt(bean.getMtBean());
			int b = a + 1;
			repairDao.mt(b);
			repairBean.setSeq(bean.getMtBean());
			repairDao.insertrepair(repairBean);
		} else if (repairBean.getId().equals("FT")) {
			bean = repairDao.ft();
			int a = Integer.parseInt(bean.getFtbean());
			int b = a + 1;
			repairDao.ft(b);
			repairBean.setSeq(bean.getFtbean());
			repairDao.insertrepair(repairBean);
		} else if (repairBean.getId().equals("CM")) {
			bean = repairDao.cm();
			int a = Integer.parseInt(bean.getCmbean());
			int b = a + 1;
			repairDao.cm(b);
			repairBean.setSeq(bean.getCmbean());
			repairDao.insertrepair(repairBean);
		} else if (repairBean.getId().equals("SK")) {
			bean = repairDao.sk();
			int a = Integer.parseInt(bean.getSkbean());
			int b = a + 1;
			repairDao.sk(b);
			repairBean.setSeq(bean.getSkbean());
			repairDao.insertrepair(repairBean);
		} else if (repairBean.getId().equals("TN")) {
			bean = repairDao.tn();
			int a = Integer.parseInt(bean.getTnbean());
			int b = a + 1;
			repairDao.tn(b);
			repairBean.setSeq(bean.getTnbean());
			repairDao.insertrepair(repairBean);
		} else if (repairBean.getId().equals("VE")) {
			bean = repairDao.ve();
			int a = Integer.parseInt(bean.getVebean());
			int b = a + 1;
			repairDao.ve(b);
			repairBean.setSeq(bean.getVebean());
			repairDao.insertrepair(repairBean);
		} else if (repairBean.getId().equals("S0")) {
			bean = repairDao.s0();
			int a = Integer.parseInt(bean.getS0bean());
			int b = a + 1;
			repairDao.s0(b);
			repairBean.setSeq(bean.getS0bean());
			repairDao.insertrepair(repairBean);
		} else {
			repairBean.setId("??");
			repairDao.insertrepair(repairBean);
		}
		Map<String, String> repair = new HashMap<String, String>();
		return repair;
	}

}
