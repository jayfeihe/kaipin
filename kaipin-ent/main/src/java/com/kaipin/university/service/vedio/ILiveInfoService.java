package com.kaipin.university.service.vedio;

import java.util.List;
import java.util.Map;

import com.kaipin.university.model.vedio.LiveInfo;

public interface ILiveInfoService {

	public int deleteByPrimaryKey(String id);


	/**
     * 插入房间信息
     * @param map
     * @return
     */
	public int insertRoom(Map<String,Object> map);
	
	/**
     * 插入点播视频信息
     * @param map
     * @return
     */
	public int insertVedio(Map<String,Object> map);
    
	public int insertSelective(LiveInfo record);

	public LiveInfo selectByPrimaryKey(String id);

	public int updateByPrimaryKeySelective(LiveInfo record);
	/**
     * 更新视频表
     * @param map
     * @return
     */
	public int updateVedio(Map<String,Object> map);

    
    /**
     * 获取list
     * @param map
     * @return
     */
	public List<LiveInfo> getList(Map<String,Object> map);
    
    
    /**
     * 获取
     * @param map
     * @return
     */
	public List<Map<String,Object>> getListCounts(Map<String,Object> map);
    
    /**
     * 获取宣讲会和附件信息
     * @return
     */
	public Map<String,Object> getMap(Map<String,Object> map);
}
