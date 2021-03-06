package com.kaipin.task.service.web.common;

import java.util.Map;

public interface ICommonService {

	/**
	 * 获取企业信息
	 * @param companyId
	 * @return
	 */
	public Map<String,Object> getCompanyInfo(String companyId);
	
	/**
	 * 获取学校信息
	 * @param companyId
	 * @return
	 */
	public Map<String,Object> getSchoolInfo(String schId);
	
	/**
	 * 获取学生信息
	 * @param companyId
	 * @return
	 */
	public Map<String,Object> getStudentInfo(String stuId);
}
