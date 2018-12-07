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
import com.bru.dao.BrandDao;
import com.bru.dao.CompanyDao;
import com.bru.dao.CustomerDao;
import com.bru.dao.DeviceDao;
import com.bru.dao.HistoryDao;
import com.bru.dao.MemberDao;
import com.bru.dao.ProblemDao;
import com.bru.dao.RepairDao;
import com.bru.dao.RepairStatusDao;
import com.bru.dao.RepairTypeDao;
import com.bru.model.AmnuayBean;
import com.bru.model.BrandBean;
import com.bru.model.CompanyBean;
import com.bru.model.CustomerBean;
import com.bru.model.DeviceBean;
import com.bru.model.HistoryBean;
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
	@Autowired
	BrandDao brandDao;
	@Autowired
	RepairTypeDao repairTypeDao;
	@Autowired
	HistoryDao historyDao;

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

	// @RequestMapping(path = "/updatetype", method = RequestMethod.POST)
	// public String updatetype(RepairTypeBean repairTypeBean) throws SQLException {
	// repairDao.update(repairTypeBean);
	// return "repairsettingtype";
	// }

	@RequestMapping(path = "/{values}", method = RequestMethod.GET)
	public String edit(@PathVariable("values") String values, HttpServletRequest request, Model model)
			throws SQLException {
		AmnuayBean bean = new AmnuayBean();
		bean = repairDao.editId(values);
		request.getSession().setAttribute("repairbean", bean);
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
	@RequestMapping(value = "/insertbrand")
	public String insertbrand(@RequestBody BrandBean brandBean) throws Exception {
		brandDao.insert(brandBean);
		return "brandsetting";
	}

	@RequestMapping(path = "/updatebrand", method = RequestMethod.POST)
	public String updatebrand(BrandBean brandBean) throws SQLException {
		brandDao.update(brandBean);
		return "brandsetting";
	}

	@RequestMapping(path = "/deletebrand/{id}", method = RequestMethod.DELETE)
	public String deletebrand(@PathVariable String id) throws SQLException {
		brandDao.delete(id);
		return "brandsetting";
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
			repairDao.history(repairBean);
		} else if (repairBean.getId().equals("CS")) {
			bean = repairDao.cs();
			int a = Integer.parseInt(bean.getCsBean());
			int b = a + 1;
			repairDao.cs(b);
			repairBean.setSeq(bean.getCsBean());
			repairDao.insertrepair(repairBean);
			repairDao.history(repairBean);
		} else if (repairBean.getId().equals("PT")) {
			bean = repairDao.pt();
			int a = Integer.parseInt(bean.getPtBean());
			int b = a + 1;
			repairDao.pt(b);
			repairBean.setSeq(bean.getPtBean());
			repairDao.insertrepair(repairBean);
			repairDao.history(repairBean);
		} else if (repairBean.getId().equals("CY")) {
			bean = repairDao.cy();
			int a = Integer.parseInt(bean.getCybean());
			int b = a + 1;
			repairDao.cy(b);
			repairBean.setSeq(bean.getCybean());
			repairDao.insertrepair(repairBean);
			repairDao.history(repairBean);
		} else if (repairBean.getId().equals("MT")) {
			bean = repairDao.mt();
			int a = Integer.parseInt(bean.getMtBean());
			int b = a + 1;
			repairDao.mt(b);
			repairBean.setSeq(bean.getMtBean());
			repairDao.insertrepair(repairBean);
			repairDao.history(repairBean);
		} else if (repairBean.getId().equals("FT")) {
			bean = repairDao.ft();
			int a = Integer.parseInt(bean.getFtbean());
			int b = a + 1;
			repairDao.ft(b);
			repairBean.setSeq(bean.getFtbean());
			repairDao.insertrepair(repairBean);
			repairDao.history(repairBean);
		} else if (repairBean.getId().equals("CM")) {
			bean = repairDao.cm();
			int a = Integer.parseInt(bean.getCmbean());
			int b = a + 1;
			repairDao.cm(b);
			repairBean.setSeq(bean.getCmbean());
			repairDao.insertrepair(repairBean);
			repairDao.history(repairBean);
		} else if (repairBean.getId().equals("SK")) {
			bean = repairDao.sk();
			int a = Integer.parseInt(bean.getSkbean());
			int b = a + 1;
			repairDao.sk(b);
			repairBean.setSeq(bean.getSkbean());
			repairDao.insertrepair(repairBean);
			repairDao.history(repairBean);
		} else if (repairBean.getId().equals("TN")) {
			bean = repairDao.tn();
			int a = Integer.parseInt(bean.getTnbean());
			int b = a + 1;
			repairDao.tn(b);
			repairBean.setSeq(bean.getTnbean());
			repairDao.insertrepair(repairBean);
			repairDao.history(repairBean);
		} else if (repairBean.getId().equals("VE")) {
			bean = repairDao.ve();
			int a = Integer.parseInt(bean.getVebean());
			int b = a + 1;
			repairDao.ve(b);
			repairBean.setSeq(bean.getVebean());
			repairDao.insertrepair(repairBean);
			repairDao.history(repairBean);
		} else {
			repairBean.setId("??");
			repairBean.setSeq("?????");
			repairDao.insertrepair(repairBean);
			repairDao.history(repairBean);
		}
		Map<String, String> repair = new HashMap<String, String>();
		return repair;
	}

	@RequestMapping(path = "/updateedit", method = RequestMethod.POST)
	public String updateedit(@RequestBody RepairBean repairBean) throws Exception {
		repairDao.updateedit(repairBean);
		repairDao.history1(repairBean);
		return "tabel";
	}

	@RequestMapping(path = "/updatedevice", method = RequestMethod.POST)
	public String updatedevice(@RequestBody DeviceBean deviceBean) throws Exception {
		deviceDao.updatedevice(deviceBean);
		return "tabeldevice";
	}

	// // insert
	// @RequestMapping(value = "/insertJob")
	// public String insertJob(@RequestBody JobTypeBean jobTypeBean) throws
	// Exception {
	// jobTypeDao.insertJob(jobTypeBean);
	// return "JobType";
	// }
	// @RequestMapping(path = "/updatejob", method = RequestMethod.POST)
	// public String updateJob(JobTypeBean job) throws Exception {
	// jobTypeDao.update(job);
	// return "JobType";
	// }
	// @RequestMapping(path = "/deleteJob/{id}", method = RequestMethod.DELETE)
	// public String deleteJob(@PathVariable String id) throws SQLException {
	// jobTypeDao.delete(id);
	// return "JobType";
	// }
	// insert
	// @RequestMapping(value = "/insertRequest")
	// public String insertRequest(@RequestBody RequestTypeBean requestTypeBean)
	// throws Exception {
	// requestTypeDao.insertRequest(requestTypeBean);
	// return "JobType";
	// }
	// @RequestMapping(path = "/updateRequest", method = RequestMethod.POST)
	// public String updateRequest(RequestTypeBean bean) throws Exception {
	// requestTypeDao.update(bean);
	// return "JobType";
	// }
	// @RequestMapping(path = "/deleteRequest/{id}", method = RequestMethod.DELETE)
	// public String deleteRequest(@PathVariable String id) throws SQLException {
	// requestTypeDao.delete(id);
	// return "JobType";
	// }
	@RequestMapping(path = "/insertRepairTypeBean", method = RequestMethod.POST)
	public String insertRepairTypeBean(@RequestBody RepairTypeBean bean) throws Exception {
		repairTypeDao.insertRepairTypeBean(bean);
		return "repair";
	}

	@RequestMapping(value = "/insertproblemrepair")
	public String insertproblemrepair(@RequestBody ProblemBean problemBean) throws Exception {
		problemDao.insert(problemBean);
		return "repair";
	}

	@RequestMapping(path = "/updateHistory")
	public String updateHistory(@RequestBody HistoryBean bean) throws Exception {
		historyDao.update(bean);
		return "repair_edit";
	}

	@RequestMapping(path = "/deletehistory/{id}", method = RequestMethod.DELETE)
	public String deletehistory(@PathVariable String id) throws SQLException {
		historyDao.delete(id);
		return "repair_edit";
	}

	@RequestMapping(path = "/updaterepairtype", method = RequestMethod.POST)
	public String updaterepairtype(RepairTypeBean bean) throws Exception {
		repairTypeDao.update(bean);
		return "repairtype";
	}

	@RequestMapping(path = "/deleterepairtype/{id}", method = RequestMethod.DELETE)
	public String deleterepairtype(@PathVariable String id) throws SQLException {
		repairTypeDao.delete(id);
		return "repairtype";
	}

}
