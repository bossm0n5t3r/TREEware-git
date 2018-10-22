package com.treeware.address.controller;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.address.model.AddressDto;
import com.treeware.address.model.AddressGroupDto;
import com.treeware.address.service.AddressService;

@Controller
@RequestMapping("/member/address")
public class AddressController {

	@Autowired
	private AddressService addressService;
	
	// 주소록 메인 페이지
	@RequestMapping("/main.tree")
	public String main() {
		return "member/address/main";
	}
	
	@RequestMapping("/inside.tree")
	public String inside() {
		return "member/address/inside";
	}
	
	@RequestMapping("/outside.tree")
	public String outside() {
		return "member/address/outside";
	}
	
	@RequestMapping("/bookmark.tree")
	public String bookmark() {
		return "member/address/bookmark";
	}
	
	@RequestMapping(value="/register.tree", method=RequestMethod.GET)
	public String register() {
		return "member/address/register";
	}
	
	@RequestMapping(value="/getAddrGrpList.tree", method=RequestMethod.GET)
	public @ResponseBody String getAddrGrpList(@RequestParam Map<String, String> map) {
		JSONObject object = new JSONObject();
		JSONArray array = new JSONArray();
		List<AddressGroupDto> list = addressService.getAddrGrpList(map.get("emp_sq"));
		for (AddressGroupDto dto : list) {
			JSONObject aGrpDto = new JSONObject();
			aGrpDto.put("ADDR_GRP_SQ", dto.getAddr_grp_sq());
			aGrpDto.put("ADDR_GRP_NM", dto.getAddr_grp_nm());
			array.put(aGrpDto);
		}
		object.put("addrGrpList", array);
		return object.toString();
	}
	
	@RequestMapping(value="/register.tree", method=RequestMethod.POST)
	public ModelAndView register(AddressDto addressDto, @RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView("member/address/outside");
		if (map.get("emp_zip").length() * map.get("emp_addr").length() > 0) {
			addressDto.setAddr_addr(map.get("emp_zip") + " " + map.get("emp_addr") + " " + map.get("emp_addr_dt"));
		} else {
			addressDto.setAddr_addr("-");
		}
		addressService.registerAddress(addressDto);
		return mav;
	}
	
}
