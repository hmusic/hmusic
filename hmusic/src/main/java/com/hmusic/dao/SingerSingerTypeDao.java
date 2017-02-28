package com.hmusic.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.hmusic.entity.SingerSingerType;



@Repository("singerSingerTypeDao")
public interface SingerSingerTypeDao {

	/**
	 * 根据给定对象添加数据
	 * @param singerSingerType
	 */
	public void add(SingerSingerType singerSingerType);
	/**
	 * 根绝给定歌曲id删除数据
	 * @param singerid
	 */
	public void deleteBySingerid(Integer singerid);
	/**
	 * 根据给定记录id删除数据
	 * @param id
	 */
	public void deleteById(Integer id);
	/**
	 * 根据给定歌曲类别id删除该类别所有歌曲
	 * @param singertypeid
	 */
	public void deleteBySingerTypeId(Integer singertypeid);
	/**
	 * 根据给定对象更新歌曲类别信息
	 * @param singerSingerType
	 */
	public void updateBySingerid(SingerSingerType singerSingerType);
	/**
	 * 根据给定对象更新歌曲类别信息
	 * @param singerSingerType
	 */
	public void updateById(SingerSingerType singerSingerType);
	/**
	 * 根据给定歌曲id和该歌曲类别更新歌曲类别信息
	 * @param singerid
	 * @param singertypeid
	 */
	public void update(@Param("singerid")Integer singerid,@Param("singertypeid")Integer singertypeid);
	/**
	 * 根据给定歌曲id得到对象
	 * @param singerid
	 * @return
	 */
	public SingerSingerType findBySingerid(Integer singerid);
	/**
	 * 根据给定歌曲类别id得到该类别所有歌曲集合
	 * @param singertypeid
	 * @return
	 */
	public List<SingerSingerType> findBySingerTypeId(Integer singertypeid);
}
