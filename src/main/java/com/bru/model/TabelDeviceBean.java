package com.bru.model;

public class TabelDeviceBean {
	private int id;
	private String devicename;
	private String serialnumber;
	private String devicetype;
	private String brand;
	private String generation;
	private String customer;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDevicename() {
		return devicename;
	}

	public void setDevicename(String devicename) {
		this.devicename = devicename;
	}

	public String getSerialnumber() {
		return serialnumber;
	}

	public void setSerialnumber(String serialnumber) {
		this.serialnumber = serialnumber;
	}

	public String getDevicetype() {
		return devicetype;
	}

	public void setDevicetype(String devicetype) {
		this.devicetype = devicetype;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getGeneration() {
		return generation;
	}

	public void setGeneration(String generation) {
		this.generation = generation;
	}

	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}

}
