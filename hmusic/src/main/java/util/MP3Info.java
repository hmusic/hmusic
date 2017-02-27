package util;

import java.sql.Time;

import org.jaudiotagger.audio.mp3.MP3AudioHeader;
import org.jaudiotagger.audio.mp3.MP3File;
import org.jaudiotagger.tag.id3.AbstractID3v2Tag;

public class MP3Info {

//	private static String mp3Path = "mmt/sda/迪玛希Dimash - 秋意浓 (Live) (原唱：张学友).mp3";//薛之谦 - 绅士 (Live) 这样爱了(电视剧《轩辕剑之天之痕》片尾曲)
	private static MP3File mp3File;
	private static final int START=6;

	//歌曲时长，单位：秒
	private int length;
	//
	private Time duration;
	//歌手名
	private String singerName;
	//歌曲名
	private String musicName;
		
	public Time getDuration(){
		int m = length / 60;
		int s = length % 60;
		Time t = new Time(0,m,s);	
		System.out.println("歌曲时长: " + t.toString()); 
		return t;
	}
	
	public int getLength() {
		System.out.println("歌曲时长: " + length); //获得时长
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public String getSingerName() {
        System.out.println("歌手:"+singerName);  
		return singerName;
	}

	public void setSingerName(String singerName) {
		this.singerName = singerName;
	}

	public String getMusicName() {
		System.out.println("歌名："+musicName);  
		return musicName;
	}

	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}

	public MP3Info(){
		
	}
	public MP3Info(String path) {
		try {
			mp3File = new MP3File(path);
			MP3AudioHeader header = mp3File.getMP3AudioHeader();
			//获得时长
			setLength(header.getTrackLength());
			
			AbstractID3v2Tag id3v2tag=  mp3File.getID3v2Tag();
			//获取歌名和歌手名
			String songName=new String(id3v2tag.frameMap.get("TIT2").toString().getBytes("ISO-8859-1"),"GB2312");//UTF-8 GB2312
            String singer=new String(id3v2tag.frameMap.get("TPE1").toString()); // .getBytes("ISO-8859-1"),"GB2312"
            
            setMusicName(songName.substring(START, songName.length()-3));
            System.out.println("歌名："+songName.substring(START, songName.length()-3));  
            setSingerName(singer.substring(START,singer.length()-3));
            
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		MP3Info m = new MP3Info("E:\\心随乐动\\赵雷 - 理想 (Live).mp3");
		//E:\\心随乐动\\赵雷 - 理想 (Live).mp3薛之谦 - 绅士 (Live).mp3 迪玛希Dimash - 秋意浓 (Live) (原唱：张学友).mp3
		m.getDuration();
		m.getLength();
		m.getMusicName();
		m.getSingerName();
	}
}
