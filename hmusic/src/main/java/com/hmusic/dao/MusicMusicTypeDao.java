package com.hmusic.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.hmusic.entity.MusicMusicType;

@Repository("musicMusicTypeDao")
public interface MusicMusicTypeDao {
	/**
	 * 根据给定对象添加数据
	 * @param musicMusicType
	 */
	public void add(MusicMusicType musicMusicType);
	/**
	 * 根绝给定歌曲id删除数据
	 * @param musicid
	 */
	public void deleteByMusicid(Integer musicid);
	/**
	 * 根据给定记录id删除数据
	 * @param id
	 */
	public void deleteById(Integer id);
	/**
	 * 根据给定歌曲类别id删除该类别所有歌曲
	 * @param musictypeid
	 */
	public void deleteByMusicTypeId(Integer musictypeid);
	/**
	 * 根据给定对象更新歌曲类别信息
	 * @param musicMusicType
	 */
	public void updateByMusicid(MusicMusicType musicMusicType);
	/**
	 * 根据给定对象更新歌曲类别信息
	 * @param musicMusicType
	 */
	public void updateById(MusicMusicType musicMusicType);
	/**
	 * 根据给定歌曲id和该歌曲类别更新歌曲类别信息
	 * @param musicid
	 * @param musictypeid
	 */
	public void update(@Param("musicid")Integer musicid,@Param("musictypeid")Integer musictypeid);
	/**
	 * 根据给定歌曲id得到对象
	 * @param musicid
	 * @return
	 */
	public MusicMusicType findByMusicid(Integer musicid);
	/**
	 * 根据给定歌曲类别id得到该类别所有歌曲集合
	 * @param musictypeid
	 * @return
	 */
	public List<MusicMusicType> findByMusicTypeId(Integer musictypeid);
}
