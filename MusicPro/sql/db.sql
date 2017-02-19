--用户表
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



select * from mUser;
drop table mUser;

create sequence sq_usid start with 10000

--后台管理
create table back_master(
       bm_id int primary key,          --管理员编号
       bm_name varchar2(20) not null,  --管理员姓名
       bm_pwd varchar2(40) not null,   --管理员密码
       bm_1 varchar2(40),              --预留字段1
          bm_2 varchar2(40),              --预留字段2
       bm_3 varchar2(40)                --预留字段3
);
