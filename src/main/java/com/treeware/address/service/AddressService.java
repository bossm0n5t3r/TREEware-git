package com.treeware.address.service;

import java.util.List;

import com.treeware.address.model.AddressDto;
import com.treeware.address.model.AddressGroupDto;

public interface AddressService {
	public List<AddressGroupDto> getAddrGrpList(String emp_sq);
	public List<AddressDto> getAddrList(String emp_sq);
	public int registerAddress(AddressDto addressDto);
}
