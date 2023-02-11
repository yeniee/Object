-- 개인포폴 object
drop database if exists object;
create database object;
use object; 
-- 회원가입 할 때 필요한 리스트
drop table if exists ob_signup;
create table ob_-- 개인포폴 object
drop database if exists object;
create database object;
use object; 
-- 회원가입 할 때 필요한 리스트
drop table if exists ob_signup;
create table ob_signup(
ob_num int auto_increment primary key,		-- 회원고유번호
ob_id varchar(20), 							-- 회원 아이디 (대소문자와 숫자 포함 5~20자 까지 받을 예정)
ob_password varchar(20),					-- 회원 비밀번호 (대소문자와 특수문자 포함) 
ob_name varchar(20), 						-- 회원 이름 (한글또는 영문 20자 내외)
ob_phone varchar(13), 						-- 회원 전화번호 (하이픈이 호함된 최대 13글자)
ob_email varchar(30),						-- 회원 이메일	
ob_signup_date datetime default now(), 		-- 가입일
ob_address varchar(100),					-- 회원 주소 [ 우편번호,도로명주소,지번주소,상세주소]
ob_shop_infor boolean 						-- 쇼핑이용정보 동의 회원가입 할 때 선택사항이지만 나중에 광고나 이것저것 할 때 필요할 것 같아서 일단 담아봄
);

select * from ob_signup;

drop table if exists ob_board;
create table ob_board(
	ob_bno int auto_increment primary key, 	-- 글고유번호
	ob_btitle varchar(100), 				-- 글 제목
    ob_bcontent longtext,					-- 글 내용
    ob_bfile longtext,						-- 첨부파일
    ob_bdate datetime default now(),		-- 글 올린시간
    ob_bview int default 0	,				-- 조회 수    
    ob_num int,
    constraint obnum foreign key (ob_num) references ob_signup(ob_num)
);

select * from ob_board;


-- 카테고리 등록하기
drop table if exists ob_pcategory;
create table ob_pcategory(
	ob_pcno int auto_increment primary key,
    ob_pcname varchar(100)
);
select * from ob_pcategory;
-- 1.  카테고리 등록하기	
	-- insert into ob_pcategory(ob_pcname) value("다이어리");
-- 2. 카테고리 출력하기
	select * from ob_pcategory;

-- 제품등록하기
drop table if exists product;
create table ob_product(
	ob_pno int auto_increment primary key, -- 제품고유번호
    ob_pname varchar(100),					-- 제품이름
    ob_pprice int, 							-- 제품가격
	ob_pimg longtext, 						-- 제품 이미지
	ob_pcomment varchar(100), 				-- 제품이미지 설명
    ob_active tinyint default 0,			-- [0]은 준바중 1은 판매중 2는 품절
    ob_pdatatime datetime default now() ,	-- 제품을 작성한 날짜 
    ob_pcno int	,							-- fk
    constraint ob_pcno_fk foreign key(ob_pcno) references ob_pcategory(ob_pcno) -- 매핑
);

select * from ob_product;
-- insert into ob_product (ob_pno,ob_pname,ob_pprice,ob_pimg,ob_pcomment,ob_pactice,ob_pdatatime,ob_pcno) values('1','이쁜볼펜','3000','0','예뻐요','1',null,'1');
-- insert 문법
-- 특정 필드사용할 때 insert into 테이블명 (필드명,필드명,필드명) values(값,값,값)
-- 모든필드 사용할 때 insert into 테이블명 valuess
-- 제품 삭제하기
delete from ob_product where ob_pno='1';
-- 제품수정하기
update ob_product set ob_pname="",ob_pprice="",ob_pimg="",ob_pcomment="",ob_pactice="" where ob_pno="1";



-- 로그인
-- 해당 테이블에 동일한 아이디와 패스워드가 있냐 없냐

 -- select * from 테이블명 where 아이디=? and 비밀번호=?
 -- ex  아이디가 sdf 이면서 비밀번호가 sdf 인 레코드 
select * from ob_signup where ob_id='sdf' and ob_password='sdf';
 -- 존재하면 레코드1개 검색
 -- 존재하지 않으면 레코드가 없다.
 -- 만약에 모든 회원을 검색하고 싶은 경우에는
 select * from ob_signup;

 -- 아이디 중복체크 여부  
select * from ob_signup where ob_id= "sdf";

-- 아이디 찾기
 select * from ob_signup where ob_name='qwe' and ob_phone='010-1234-5678';

select * from ob_signup where ob_name= 'qwe';
select * from ob_signup where ob_phone='010-1234-5678';

-- 비밀번호 
-- 아이디 먼저 확인하기
select * from ob_signup where ob_id='qweqwe';
select * from ob_signup where ob_name='qwe';
select * from ob_signup where ob_email='qwe@naver.com';

-- 새로운 비밀번호 업데이트 하기
update ob_signup set ob_password ='123123123' where ob_num='1'; 

-- 회원정보 수정하기
update ob_signup set ob_name='qwe', ob_phone='qwe',ob_email='qwe',ob_address='qwe' where ob_id='qweqwe';


update ob_signup 
set ob_name='zxczxc', 
	ob_phone='010-1234-5678',
	ob_email='zxc@naver.com',
	ob_address='34062,대전 유성구 북유성대로 581,대전 유성구 안산동 303-2,10호' 
where ob_id='zxczxc';

-- insert into ob_signup(ob_id,ob_password,ob_name,ob_phone,ob_email,ob_address,ob_shop_infor) values('admin','123123123','관리자','010-1234-5678','admin@naver.com','34062,대전 유성구 북유성대로 581,대전 유성구 안산동 303-2,10호',false);signup(
ob_num int auto_increment primary key,		-- 회원고유번호
ob_id varchar(20), 							-- 회원 아이디 (대소문자와 숫자 포함 5~20자 까지 받을 예정)
ob_password varchar(20),					-- 회원 비밀번호 (대소문자와 특수문자 포함) 
ob_name varchar(20), 						-- 회원 이름 (한글또는 영문 20자 내외)
ob_phone varchar(13), 						-- 회원 전화번호 (하이픈이 호함된 최대 13글자)
ob_email varchar(30),						-- 회원 이메일	
ob_signup_date datetime default now(), 		-- 가입일
ob_address varchar(100),					-- 회원 주소 [ 우편번호,도로명주소,지번주소,상세주소]
ob_shop_infor boolean 						-- 쇼핑이용정보 동의 회원가입 할 때 선택사항이지만 나중에 광고나 이것저것 할 때 필요할 것 같아서 일단 담아봄
);

select * from ob_signup;

drop table if exists ob_board;
create table ob_board(
	ob_bno int auto_increment primary key, 	-- 글고유번호
	ob_btitle varchar(100), 				-- 글 제목
    ob_bcontent longtext,					-- 글 내용
    ob_bfile longtext,						-- 첨부파일
    ob_bdate datetime default now(),		-- 글 올린시간
    ob_bview int default 0	,				-- 조회 수    
    ob_num int,
    constraint obnum foreign key (ob_num) references ob_signup(ob_num)
);

select * from ob_board;


-- 카테고리 등록하기
drop table if exists ob_pcategory;
create table ob_pcategory(
	ob_pcno int auto_increment primary key,
    ob_pcname varchar(100)
);
select * from ob_pcategory;
-- 1.  카테고리 등록하기	
	-- insert into ob_pcategory(ob_pcname) value("다이어리");
-- 2. 카테고리 출력하기
	select * from ob_pcategory;

-- 제품등록하기
drop table if exists product;
create table ob_product(
	ob_pno int auto_increment primary key, -- 제품고유번호
    ob_pname varchar(100),					-- 제품이름
    ob_pprice int, 							-- 제품가격
	ob_pimg longtext, 						-- 제품 이미지
	ob_pcomment varchar(100), 				-- 제품이미지 설명
    ob_active tinyint default 0,			-- [0]은 준바중 1은 판매중 2는 품절
    ob_pdatatime datetime default now() ,	-- 제품을 작성한 날짜 
    ob_pcno int	,							-- fk
    constraint ob_pcno_fk foreign key(ob_pcno) references ob_pcategory(ob_pcno) -- 매핑
);

select * from ob_product;
-- insert into ob_product (ob_pno,ob_pname,ob_pprice,ob_pimg,ob_pcomment,ob_pactice,ob_pdatatime,ob_pcno) values('1','이쁜볼펜','3000','0','예뻐요','1',null,'1');
-- insert 문법
-- 특정 필드사용할 때 insert into 테이블명 (필드명,필드명,필드명) values(값,값,값)
-- 모든필드 사용할 때 insert into 테이블명 valuess

-- 로그인
-- 해당 테이블에 동일한 아이디와 패스워드가 있냐 없냐

 -- select * from 테이블명 where 아이디=? and 비밀번호=?
 -- ex  아이디가 sdf 이면서 비밀번호가 sdf 인 레코드 
 
 -- ////////////////////////////회원////////////////////////////
select * from ob_signup where ob_id='sdf' and ob_password='sdf';
 -- 존재하면 레코드1개 검색
 -- 존재하지 않으면 레코드가 없다.
 -- 만약에 모든 회원을 검색하고 싶은 경우에는
 select * from ob_signup;

 -- 아이디 중복체크 여부  
select * from ob_signup where ob_id= "sdf";

-- 아이디 찾기
 select * from ob_signup where ob_name='qwe' and ob_phone='010-1234-5678';

select * from ob_signup where ob_name= 'qwe';
select * from ob_signup where ob_phone='010-1234-5678';

-- 비밀번호 
-- 아이디 먼저 확인하기
select * from ob_signup where ob_id='qweqwe';
select * from ob_signup where ob_name='qwe';
select * from ob_signup where ob_email='qwe@naver.com';

-- 새로운 비밀번호 업데이트 하기
update ob_signup set ob_password ='123123123' where ob_num='1'; 

-- 회원정보 수정하기
update ob_signup set ob_name='qwe', ob_phone='qwe',ob_email='qwe',ob_address='qwe' where ob_id='qweqwe';


update ob_signup 
set ob_name='zxczxc', 
	ob_phone='010-1234-5678',
	ob_email='zxc@naver.com',
	ob_address='34062,대전 유성구 북유성대로 581,대전 유성구 안산동 303-2,10호' 
where ob_id='zxczxc';



select * from ob_pcategory;  -- 결과는 열이 3개 인데 8개를 호출 하고 있어요.어..