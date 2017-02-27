package com.hmusic.service;

import java.util.List;

import com.hmusic.entity.Music;
import com.hmusic.entity.MusicFull;
import com.hmusic.entity.Songlist;

public interface MusicFullService {
	
	/**
	 * 根据歌曲名搜索歌曲 采用模糊搜索
	 * @param name 歌曲名
	 * @param page ({int,int}) 可选数组参数，分页数据，第一个为页码，第二个为每页显示个数
	 * @return
	 */
	public List<MusicFull> getMusicFullByMusicName(String name,int...page);
	/**
	 * 根据歌曲id定点查询歌曲
	 * @param musicid 歌曲id
	 * @return
	 */
	public MusicFull getMusicFullByMusicid(Integer musicid);
	
	public MusicFull getMusicFullByMusic(Music music);
	
	/**
	 * 根据歌曲类别查询 该类型所有歌曲
	 * @param musictypeid 歌曲类别id
	 * @param sort 排序方式（上传时间、下载量、点击量）
	 * @param page （{int,int}） 可选数组参数，分页数据，第一个为页码，第二个为每页显示个数（默认查询所有）
	 * @return
	 */
	public List<MusicFull> getMusicFullByMusicTypeId(Integer musictypeid,int sort,int...page);
	/**
	 * 根据歌手名查询 该歌手的所有歌曲
	 * @param singername 歌手名
	 * @param sort 排序方式（上传时间、下载量、点击量）
	 * @param page （{int,int}） 可选数组参数，分页数据，第一个为页码，第二个为每页显示个数（默认查询所有）
	 * @return
	 */
	public List<MusicFull> getMusicFullBySingerName(String singername,int sort,int...page);
	/**
	 * 
	 * @param singerid 歌手id
	 * @param sort 排序方式（上传时间、下载量、点击量）
	 * @param page （{int,int}） 可选数组参数，分页数据，第一个为页码，第二个为每页显示个数（默认查询所有）
	 * @return
	 */
	public List<MusicFull> getMusicFullBySingerId(Integer singerid,int sort,int...page);
	/**
	 * 根据歌曲列表id查询歌曲
	 * @param songlistid 歌曲列表id
	 * @param page （{int,int}） 可选数组参数，分页数据，第一个为页码，第二个为每页显示个数（默认查询所有）
	 * @return
	 */	
	public List<MusicFull> getMusicFullBySonglistid(Integer songlistid,int...page);
	/**
	 * 删除给定歌单里面的指定歌曲
	 * @param songlistid 歌单id
	 * @param musicidList 歌曲id集合
	 */
	public void deleteSonglistByMusicId(Integer songlistid,List<Integer> musicidList);
	/**
	 * 删除指定歌单里面的所有歌曲
	 * @param songlistid
	 */
	public void deleteSonglistMusicBySonglistid(Integer songlistid);
	/**
	 * 删除用户指定的歌单
	 * @param userid 用户id
	 * @param songlistid 歌单id
	 */
	public void deleteSonglist(Integer userid,Integer songlistid);
	/**
	 * 给指定歌单添加歌曲
	 * @param songlistid 歌单id
	 * @param musicidList 歌曲id集合
	 */
	public void addMusic2Songlist(Integer songlistid,List<Integer> musicidList);
	/**
	 * 用户添加歌单
	 * @param userid 用户id
	 * @param songlist 歌单对象
	 */
	public void addSonglistByUserid(Integer userid,Songlist songlist);
		
}
