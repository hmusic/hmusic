package com.hmusic.dao;

import java.util.List;

import com.hmusic.entity.SingerType;

public interface SingerTypeDao {
	 /**
     * 此方法对应于数据库中的表 ,SingerType
     * 新写入数据库记录
     *
     * @param record
     */
	public void addSingerType(SingerType singertype);
	 /**
     * 此方法对应于数据库中的表 ,SingerType
     * 根据主键来更新符合条件的数据库记录
     *
     * @param record
     */
	public void updateSingerType(SingerType singertype);
	 /**
     * 此方法对应于数据库中的表 ,SingerType
     * 根据主键删除数据库的记录
     *
     * @param id
     */
	public void deleteSingerType(Integer singertypeid);
	
	 /**
     * 此方法对应于数据库中的表 ,SingerType
     * 根据指定主键获取一条数据库记录
     *
     * @param id
     */
	public SingerType findSingerTypeByID(Integer singertypeid);
	/**
     * 此方法对应于数据库中的表 ,SingerType
     * 查询所有数据库记录
     */
	List<SingerType> findAllSingerType();
	
	/**
	 * 根据歌手类型名找到歌手类型
	 * @param singerTypeName
	 * @return
	 */
	public SingerType findSingerTypeByName (String singertypename);
}
