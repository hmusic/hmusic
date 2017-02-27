package com.hmusic.entity;

import java.sql.Time;
import java.util.Date;

public class Music {
    private Integer musicid;

    private String musicname;

    private String musicphoto;

    private Time duration;

    private String musicpath;

    private String lyricspath;

    private Integer clickrate;

    private Integer downloadrate;

    private Date uploadtime;

    public Integer getMusicid() {
        return musicid;
    }

    public void setMusicid(Integer musicid) {
        this.musicid = musicid;
    }

    public String getMusicname() {
        return musicname;
    }

    public void setMusicname(String musicname) {
        this.musicname = musicname == null ? null : musicname.trim();
    }

    public String getMusicphoto() {
        return musicphoto;
    }

    public void setMusicphoto(String musicphoto) {
        this.musicphoto = musicphoto == null ? null : musicphoto.trim();
    }

    public Date getDuration() {
        return duration;
    }

    public void setDuration(Time duration) {
        this.duration = duration;
    }

    public String getMusicpath() {
        return musicpath;
    }

    public void setMusicpath(String musicpath) {
        this.musicpath = musicpath == null ? null : musicpath.trim();
    }

    public String getLyricspath() {
        return lyricspath;
    }

    public void setLyricspath(String lyricspath) {
        this.lyricspath = lyricspath == null ? null : lyricspath.trim();
    }

    public Integer getClickrate() {
        return clickrate;
    }

    public void setClickrate(Integer clickrate) {
        this.clickrate = clickrate;
    }

    public Integer getDownloadrate() {
        return downloadrate;
    }

    public void setDownloadrate(Integer downloadrate) {
        this.downloadrate = downloadrate;
    }

    public Date getUploadtime() {
        return uploadtime;
    }

    public void setUploadtime(Date uploadtime) {
        this.uploadtime = uploadtime;
    }
}