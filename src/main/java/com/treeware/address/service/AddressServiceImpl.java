package com.treeware.address.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.address.dao.AddressDao;
import com.treeware.address.model.AddressDto;
import com.treeware.address.model.AddressGroupDto;

@Service
public class AddressServiceImpl implements AddressService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int registerAddress(AddressDto addressDto) {
		int addr_sq = sqlSession.getMapper(AddressDao.class).getNextAddrSq();
		addressDto.setAddr_sq(addr_sq);
		return sqlSession.getMapper(AddressDao.class).registerAddress(addressDto);
	}

	@Override
	public List<AddressGroupDto> getAddrGrpList(String emp_sq) {
		return sqlSession.getMapper(AddressDao.class).getAddrGrpList(emp_sq);
	}

}
