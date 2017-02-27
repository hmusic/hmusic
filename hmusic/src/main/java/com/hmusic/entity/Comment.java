package com.hmusic.entity;

import java.util.Date;

public class Comment {
	private Integer commentid;
	private Integer userid;
	private Integer musicid;
	private String content;
	private Date commenttime;

	public Integer getCommentid() {
		return commentid;
	}

	public void setCommentid(Integer commentid) {
		this.commentid = commentid;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Integer getMusicid() {
		return musicid;
	}

	public void setMusicid(Integer musicid) {
		this.musicid = musicid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCommenttime() {
		return commenttime;
	}

	public void setCommenttime(Date commenttime) {
		this.commenttime = commenttime;
	}
}
