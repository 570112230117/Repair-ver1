package com.bru.model;

public class JobTypeBean {

	private int id;
	private String name;	
	private RequestTypeBean requestBean;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public RequestTypeBean getRequestBean() {
		return requestBean;
	}
	public void setRequestBean(RequestTypeBean requestBean) {
		this.requestBean = requestBean;
	}
	

	
}
