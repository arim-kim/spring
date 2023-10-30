create database if not exists springtest;
use springtest;

drop table if exists attendance;
drop table if exists userinfo;

create table userinfo(
	id varchar(20) primary key, # 아이디
    pw varchar(20) not null, # 비밀번호
    position varchar(20) not null, # 직위(관리자 or 교육생)
    usernumber varchar(20) unique, #학번
    name varchar(20) not null, # 사용자명
    rname varchar(20) not null, #지역명
	rclass int default null # 교육생반
);

create table attendance(
	ano varchar(20) primary key, # 출결 이슈 번호
	usernumber varchar(20) not null, #학번
   	issuedate varchar(20), # 출결 이슈 발생 날짜
   	issue varchar(100), # 사유
    constraint fk_info_atten foreign key(usernumber) references userinfo(usernumber)
);

# 관리자 등록
insert into userinfo values("ssafy", 'ssafy', '관리자', null,'김싸피','서울', null);
# 교육생 등록
insert into userinfo values("student01", 'ssafy', '교육생', '100001','김서울','서울', 9);
insert into userinfo values("student02", 'ssafy', '교육생', '100002','박대전','대전', 5);
insert into userinfo values("student03", 'ssafy', '교육생', '100003','이구미','구미', 4);
insert into userinfo values("student04", 'ssafy', '교육생', '100004','김광주','광주',4);
insert into userinfo values("student05", 'ssafy', '교육생', '100005','박부울경','부울경', 3);
# 출결 이슈 등록
insert into attendance  values
('att01','100001', '2023-10-31','몸살감기'), 			
('att02','100002', '2023-11-01', '코딩테스트'),
('att03','100003', '2023-11-01','개인 사정' ), 
('att04', '100004', '2023-11-02', '병원 방문'), 
('att05', '100005', '2023-11-02', '개인 사유'), 
('att06','100003','2023-11-02','개인사유' );
commit;