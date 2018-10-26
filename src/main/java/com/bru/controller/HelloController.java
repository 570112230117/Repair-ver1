package com.bru.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String test() {
		return "index";
	}

	@RequestMapping(path = "/Dashboard", method = RequestMethod.GET)
	public String index1() {
		return "index1";
	}

	@RequestMapping(path = "/profile", method = RequestMethod.GET)
	public String profile() {
		return "profile";
	}

	@RequestMapping(path = "/tabel", method = RequestMethod.GET)
	public String tabel() {
		return "tabel";
	}

	@RequestMapping(path = "/repair", method = RequestMethod.GET)
	public String repair() {
		return "repair";
	}

	@RequestMapping(path = "/formsuser", method = RequestMethod.GET)
	public String formsuser() {
		return "formsuser";
	}

	@RequestMapping(path = "/tabeldevice", method = RequestMethod.GET)
	public String tabeldevice() {
		return "tabeldevice";
	}

	@RequestMapping(path = "/device", method = RequestMethod.GET)
	public String device() {
		return "device";
	}

	@RequestMapping(path = "/about", method = RequestMethod.GET)
	public String about() {
		return "about";
	}

	@RequestMapping(path = "/report", method = RequestMethod.GET)
	public String report() {
		return "report";
	}

	@RequestMapping(path = "/repairsettingtype", method = RequestMethod.GET)
	public String repairsettingtype() {
		return "repairsettingtype";
	}

	@RequestMapping(path = "/status", method = RequestMethod.GET)
	public String status() {
		return "repairstatus";
	}

	@RequestMapping(path = "/membersetting", method = RequestMethod.GET)
	public String membersetting() {
		return "membersetting";
	}

	@RequestMapping(path = "/repairsetting", method = RequestMethod.GET)
	public String repairsetting() {
		return "repairsetting";
	}

	@RequestMapping(path = "/hello", method = RequestMethod.GET)
	public String hello() {
		return "hello";
	}

	@RequestMapping(path = "/repairdetail", method = RequestMethod.GET)
	public String repairdetail() {
		return "repair_detail";
	}

	@RequestMapping(path = "/customer", method = RequestMethod.GET)
	public String customer() {
		return "customer";
	}

	@RequestMapping(path = "/company", method = RequestMethod.GET)
	public String company() {
		return "company";
	}

	@RequestMapping(path = "/brandsetting", method = RequestMethod.GET)
	public String brandsetting() {
		return "brandsetting";
	}
}
