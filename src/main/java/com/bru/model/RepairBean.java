package com.bru.model;

import java.sql.Date;

public class RepairBean {
	private String id;
	private String seq;
	private String repairDate;
	private String customerName;
	private Date repairComplete;
	private String memberName;
	private String rapairType;
	private String deviceName;
	private String problem;
	private String other;
	private String repairStatus;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getRepairDate() {
		return repairDate;
	}

	public void setRepairDate(String repairDate) {
		this.repairDate = repairDate;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public Date getRepairComplete() {
		return repairComplete;
	}

	public void setRepairComplete(Date repairComplete) {
		this.repairComplete = repairComplete;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getRapairType() {
		return rapairType;
	}

	public void setRapairType(String rapairType) {
		this.rapairType = rapairType;
	}

	public String getDeviceName() {
		return deviceName;
	}

	public void setDeviceName(String deviceName) {
		this.deviceName = deviceName;
	}

	public String getProblem() {
		return problem;
	}

	public void setProblem(String problem) {
		this.problem = problem;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public String getRepairStatus() {
		return repairStatus;
	}

	public void setRepairStatus(String repairStatus) {
		this.repairStatus = repairStatus;
	}

}
