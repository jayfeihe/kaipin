package com.service.stu;

import com.model.stu.StuUser;

public interface IStuUserService {

	public int deleteByPrimaryKey(String id);

	public int insertSelective(StuUser record);

	public StuUser selectByPrimaryKey(String id);

	public int updateByPrimaryKeySelective(StuUser record);
}
