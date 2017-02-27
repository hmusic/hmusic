INSERT INTO `user`(username,userpassword,userphoto,email,sex,telephone) VALUES
('466','466413559',null,'466413559@qq.com','男',null),
('466413','466413559',null,'466413559@qq.com','男',null),
('466413559','466413559',null,'466413559@qq.com','男',null),
('466413559123','466413559',null,'466413559@qq.com','男',null),
('466413559456','466413559',null,'466413559@qq.com','男',null);


INSERT INTO `songlist`(songlistname) VALUES
('默认歌单'),
('我喜欢'),
('默认歌单'),
('我喜欢'),
('默认歌单'),
('我喜欢'),
('默认歌单'),
('我喜欢'),
('默认歌单'),
('我喜欢'),
('默认歌单'),
('我喜欢'),
('默认歌单'),
('我喜欢');

INSERT INTO `user_songlist`(userid,songlistid) VALUES
(1,1),
(1,2),
(2,1),
(2,2),
(3,1),
(3,2),
(4,1),
(4,2),
(5,1),
(5,2);


INSERT INTO `songlist_music`(songlistid,musicid) VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(2,1),
(2,2),
(2,4),
(2,6),
(3,4),
(3,7),
(3,8),
(3,9),
(4,1),
(4,6),
(5,1),
(5,4);