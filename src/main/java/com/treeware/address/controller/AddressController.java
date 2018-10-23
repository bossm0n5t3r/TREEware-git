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
	
	// 해당 사원의 주소록 그룹 가져오기
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
	
	// 해당 사원의 모든 주소 가져오기
	@RequestMapping(value="/getAddrList.tree", method=RequestMethod.POST)
	public @ResponseBody String getAddrList(@RequestParam Map<String, String> map) {
		JSONObject object = new JSONObject();
		List<AddressDto> list = addressService.getAddrList(map.get("emp_sq"));
		JSONArray addrArray = new JSONArray();
		for (AddressDto dto : list) {
			JSONObject addrDto = new JSONObject();
			addrDto.put("addr_sq", dto.getAddr_sq());
			addrDto.put("addr_grp_sq", dto.getAddr_grp_sq());
			addrDto.put("addr_grp_nm", dto.getAddr_grp_nm());
			addrDto.put("addr_nm", dto.getAddr_nm());
			addrDto.put("addr_tel", dto.getAddr_tel() == null ? "-" : dto.getAddr_tel());
			addrDto.put("addr_email", dto.getAddr_email() == null ? "-" : dto.getAddr_email());
			addrDto.put("addr_cpn_tel", dto.getAddr_cpn_tel() == null ? "-" : dto.getAddr_cpn_tel());
			addrDto.put("addr_addr", dto.getAddr_addr() == null ? "-" : dto.getAddr_addr());
			addrDto.put("addr_mm", dto.getAddr_mm() == null ? "-" : dto.getAddr_mm());
			addrArray.put(addrDto);
		}
		object.put("addrList", addrArray);
		object.put("page", list.size());
		return object.toString();
	}
	
	// 주소록에 주소 추가하기
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
