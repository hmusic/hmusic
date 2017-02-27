package com.hmusic.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.MusicDao;
import com.hmusic.dao.MusicMusicTypeDao;
import com.hmusic.dao.MusicTypeDao;
import com.hmusic.dao.SingerDao;
import com.hmusic.dao.SingerMusicDao;
import com.hmusic.dao.SonglistDao;
import com.hmusic.dao.SonglistMusicDao;
import com.hmusic.dao.UserSonglistDao;
import com.hmusic.entity.Music;
import com.hmusic.entity.MusicFull;
import com.hmusic.entity.MusicMusicType;
import com.hmusic.entity.MusicType;
import com.hmusic.entity.Singer;
import com.hmusic.entity.SingerMusic;
import com.hmusic.entity.Songlist;
import com.hmusic.entity.SonglistMusic;
import com.hmusic.service.MusicFullService;

@Repository("musicFullService")
@Transactional
public class MusicFullServiceImpl implements MusicFullService {

	@Autowired
	private MusicDao musicDao;
	@Autowired
	private MusicTypeDao musicTypeDao;
	@Autowired
	private MusicMusicTypeDao musicMusicTypeDao;
	@Autowired
	private SingerDao singerDao;
	@Autowired
	private SonglistDao songlistDao;
	@Autowired
	private SonglistMusicDao songlistMusicDao;
	@Autowired
	private UserSonglistDao userSonglistDao;
	@Autowired
	private SingerMusicDao singerMusicDao;

	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public List<MusicFull> getMusicFullByMusicName(String name, int... page) {
		// TODO Auto-generated method stub
		List<MusicFull> musicFullList = new ArrayList<MusicFull>();
		if (page.length == 0) {
			List<Music> musicList = musicDao.findByMusicname(name);
			for (Music music : musicList) {
				MusicFull musicFull = getMusicFullByMusic(music);
				musicFullList.add(musicFull);
			}
		}
		return musicFullList;
	}

	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public MusicFull getMusicFullByMusicid(Integer musicid) {
		// TODO Auto-generated method stub
		Music music = musicDao.findById(musicid);
		return getMusicFullByMusic(music);
	}

	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public List<MusicFull> getMusicFullByMusicTypeId(Integer musictypeid, int sort, int... page) {
		// TODO Auto-generated method stub
		List<MusicFull> musicFullList = new ArrayList<MusicFull>();
		if (page.length == 0) {
			List<MusicMusicType> musicMusictypeList = musicMusicTypeDao.findByMusicTypeId(musictypeid);
			for (MusicMusicType musicMusicType : musicMusictypeList) {
				Integer musicid = musicMusicType.getMusicid();
				Music music = musicDao.findById(musicid);
				MusicFull musicFull = getMusicFullByMusic(music);
				musicFullList.add(musicFull);
			}
		}
		return musicFullList;
	}

	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public List<MusicFull> getMusicFullBySingerName(String singername, int sort, int... page) {
		// TODO Auto-generated method stub

		Singer singer = singerDao.findSingerByName(singername);
		List<MusicFull> musicFullList = getMusicFullBySinger(singer);
		return musicFullList;
	}

	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public List<MusicFull> getMusicFullBySingerId(Integer singerid, int sort, int... page) {
		// TODO Auto-generated method stub
		Singer singer = singerDao.findSingerByID(singerid);
		List<MusicFull> musicFullList = getMusicFullBySinger(singer);
		return musicFullList;
	}

	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public List<MusicFull> getMusicFullBySonglistid(Integer songlistid, int... page) {
		// TODO Auto-generated method stub
		List<MusicFull> musicFullList = new ArrayList<MusicFull>();
		if (page.length == 0) {
			List<SonglistMusic> songlistMusicList = songlistMusicDao.findBySonglistid(songlistid);
			for (SonglistMusic songlistMusic : songlistMusicList) {
				MusicFull musicFull = getMusicFullByMusicid(songlistMusic.getMusicid());
				musicFullList.add(musicFull);
			}
		}
		return musicFullList;
	}

	
	public void deleteSonglistByMusicId(Integer songlistid, List<Integer> musicidList) {
		// TODO Auto-generated method stub

	}

	public void deleteSonglistMusicBySonglistid(Integer songlistid) {
		// TODO Auto-generated method stub
		
	}

	public void deleteSonglist(Integer userid, Integer songlistid) {
		// TODO Auto-generated method stub
		
	}

	
	public void addMusic2Songlist(Integer songlistid, List<Integer> musicidList) {
		// TODO Auto-generated method stub

	}

	
	public void addSonglistByUserid(Integer userid, Songlist songlist) {
		// TODO Auto-generated method stub

	}
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public MusicFull getMusicFullByMusic(Music music) {
		Integer musicid = music.getMusicid();
		System.out.println("MusicID:"+musicid);
		Integer singerid = singerMusicDao.findByMusicid(musicid).getSingerid();
		Integer musictypeid = musicMusicTypeDao.findByMusicid(musicid).getMusictypeid();

		MusicFull musicFull = new MusicFull();
		Singer singer = singerDao.findSingerByID(singerid);
		MusicType musictype = musicTypeDao.findById(musictypeid);
		musicFull.setMusic(music);
		musicFull.setSinger(singer);
		musicFull.setMusictype(musictype);
		return musicFull;
	}
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	private List<MusicFull> getMusicFullBySinger(Singer singer) {
		List<MusicFull> musicFullList = new ArrayList<MusicFull>();
		List<SingerMusic> singerMusicList = singerMusicDao.findBySingerid(singer.getSingerid());
		for (SingerMusic singerMusic : singerMusicList) {
			Integer musicid = singerMusic.getMusicid();
			MusicFull musicFull = getMusicFullByMusic(musicDao.findById(musicid));
			musicFullList.add(musicFull);
		}
		return musicFullList;
	}

	
	

}
