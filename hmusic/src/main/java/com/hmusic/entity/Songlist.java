package com.hmusic.entity;

public class Songlist {
	private Integer songlistid;
	private String songlistname;

	public Integer getSonglistid() {
		return songlistid;
	}

	public void setSonglistid(Integer songlistid) {
		this.songlistid = songlistid;
	}

	public String getSonglistname() {
		return songlistname;
	}

	public void setSonglistname(String songlistname) {
		this.songlistname = songlistname == null ?"默认歌单":songlistname.trim();
	}

}
