package com.hmusic.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.hmusic.entity.Comment;

@Repository("commentDao")
public interface CommentDao {
	/**
	 * 根据給定comment对象添加评论
	 * @param comment
	 */
	 public void addComment(Comment comment);
	 /**
	  * 根据给定id删除对应评论
	  * @param commentid
	  */
	 public void deleteComment(Integer commentid);
	 /**
	  * 更新评论点赞数
	  * @param commentid
	  * @param likenum
	  */
	 public void updateLikenum(@Param("commentid") Integer commentid,@Param("likenum") Integer likenum);
	 /**
	  * 根据音乐id查找该音乐所有评论
	  * @param musicid
	  * @return
	  */
	 public List<Comment> findByMusicid(Integer musicid);
}
