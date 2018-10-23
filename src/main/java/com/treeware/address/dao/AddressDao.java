package com.treeware.address.dao;

import java.util.List;

import com.treeware.address.model.AddressDto;
import com.treeware.address.model.AddressGroupDto;

public interface AddressDao {

	public int getNextAddrSq();
	public int getAddrGrpSq(String emp_sq);
	public List<AddressDto> getAddrList(String emp_sq);
	public List<AddressGroupDto> getAddrGrpList(String emp_sq);
	public int registerAddress(AddressDto addressDto);

}
