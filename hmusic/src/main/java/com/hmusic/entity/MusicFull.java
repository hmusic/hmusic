package com.hmusic.entity;

public class MusicFull {
	private Music music;
	private MusicType musictype;
	private Singer singer;
	public Music getMusic() {
		return music;
	}
	public void setMusic(Music music) {
		this.music = music;
	}
	public MusicType getMusictype() {
		return musictype;
	}
	public void setMusictype(MusicType musictype) {
		this.musictype = musictype;
	}
	public Singer getSinger() {
		return singer;
	}
	public void setSinger(Singer singer) {
		this.singer = singer;
	}

}
