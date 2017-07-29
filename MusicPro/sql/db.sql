--用户表(已创建)
create table mUser(
	usid int primary key,	--用户编号
	uname varchar2(20),		--用户昵称
	utel varchar2(11),		--用户绑定电话（注册）
    upwd varchar2(12),      --密码
	unote varchar2(50),		--用户说明
	usex varchar2(2),	    --用户性别
	ubri date,				--用户生日
    uaddr varchar2(20),		--用户地址
	upic varchar2(50),		--头像地址
	uex_1 varchar2(20),
	uex_2 varchar2(20),
	uex_3 varchar2(20)
)

alter table mUser modify  uex_1 int default 1

update mUser set uex_1 = 1 where usid = 10060

update mUser set upic='/picKu/6.jpg' where usid = 10022;
alter table mUser modify  ubri varchar2(10)--修改表属性类型
select * from mUser;
drop table mUser;

update mUser set unote = '爱卷卷，爱音乐，爱生活。',usex = '男',ubri = '1996-05-08',uaddr='湖南省衡阳市',upic='/picKu/5.jpg' where uname = 'random'


update MUSER set uname = 'random',unote='听好听的歌，做想做的事。',usex='男',uaddr='湖南衡阳' where usid = 10000 

create sequence sq_usid start with 10000
update MUSER set uname = '卷卷' where utel = '18216034297';

--关系表（粉丝与关注）(已创建)
create table relationship(
	re_focus int,			--关注人id
	re_fans int				--粉丝id
)

insert into relationship values(10040,10000);--我关注廖文涛
insert into relationship values(10020,10000);--我关注卷卷
insert into relationship values(10021,10000);--我关注小小
insert into relationship values(10000,10040);--卷卷关注我
insert into relationship values(10000,10020);--廖文涛关注我

--查询我关注的人
select m.usid,m.uname from RELATIONSHIP r
inner join muser m
on m.usid = r.re_focus
inner join muser mu
on mu.usid = r.re_fans
where r.re_fans = 10000;
--查询我的粉丝
select mu.usid,mu.uname from RELATIONSHIP r
inner join muser m
on m.usid = r.re_focus
inner join muser mu
on mu.usid = r.re_fans
where r.re_focus = 10000;
--动态表
create table dynamic(
	d_id int primary key,	--动态表id
	d_usid int,				--用户id
	d_thing varchar2(200),  --描述
	d_date varchar2(10)		--时间
)

select * from dynamic where d_usid = 10000 order by d_id desc

create sequence seq_dyid start with 1
insert into dynamic values(seq_dyid.nextval,10000,'今天听了张学友的只想一生跟你走真的太好听了！','2017-03-08');
select * from dynamic
drop table dynamic
--歌手表
create table singer(
	s_id int primary key,	--歌手编号
	s_name varchar2(10),	--歌手名字
	s_show varchar2(200),	--歌手介绍
	s_hot int,				--热门歌手(1)普通歌手(0)
	s_zm varchar2(1),		--属于类别 ABCD等等 字母搜索
	s_pic varchar2(40)		--歌手图片地址	
)

select * from singer;
update singer set s_pic = '/picKu/wf.jpg' where s_id = 90002
create sequence sq_singerid start with 90000
insert into singer values(sq_singerid.nextval,'张学友','内地著名男歌手',1,'Z','/picKu/zxy.jpg');
insert into singer values(sq_singerid.nextval,'周杰伦','亚洲天王,著名男歌手',1,'Z','/picKu/zjl.jpg');
insert into singer values(sq_singerid.nextval,'王菲','天后,大陆著名女歌手',1,'W','/picKu/wf.jpg');
insert into singer values(sq_singerid.nextval,'李荣浩','当红男歌手',0,'L','/picKu/lrh.jpg');
--歌曲表
create table song(
	so_id int primary key,	--歌曲编号
	name  varchar2(30),		--歌曲名
	so_rid int,				--歌曲所属歌手编号
	singer varchar2(10),	--歌手名字
	album varchar2(30),		--属于作品集介绍
	type varchar2(10),		--音乐类型
	cover varchar2(40),		--背景图地址
	link_url varchar2(40),	--歌曲地址
	link_lrc varchar2(40),	--歌词地址
	so_click int			--歌曲点击量(根据点击量做歌曲排行)
)

alter table song add so_pic varchar2(40)
create sequence sq_songid start with 1000
insert into song values(sq_songid.nextval,'只想一生跟你走',90000,'张学友','只想一生跟你走作品集','流行音乐','/musicKu/pictuKu/cover.jpg','/musicKu/mp3Ku/1.mp3','/musicKu/lrcKu/1.lrc',100);
select * from song
delete song where so_id=1060
drop table song 

update song set link_lrc = '/musicKu/mp3Ku/1.lrc' where so_rid = 90000;


--歌单表 （歌单编号和用户编号确定唯一的一个歌单）
create table songlist(
	sl_id int,				--歌单编号
	sl_note varchar2(50)	--歌单介绍
	s_usid int,				--用户编号
	so_id int,				--歌曲编号
)

--后台管理 (已创建)
create table aUser(
       id int primary key,          --管理员编号
       username varchar2(20) not null,  --管理员姓名
       password varchar2(40) not null,   --管理员密码
       jbphone varchar2(20) not null,
       auser_1 varchar2(40),              --预留字段1
          auser_2 varchar2(40)             --预留字段2
);

insert into aUser values(1,'admin','a','15386001960','','')
insert into aUser values(2,'random','a','18216062440','','')

select * from  aUser where username='admin' and password='a'
