-- 학생 테이블 생성
CREATE TABLE student_free (
id VARCHAR(20) NOT NULL Primary Key,
passwd VARCHAR(20) NOT NULL,
username VARCHAR(20) NOT NULL,
snum VARCHAR(20) NOT NULL,
depart VARCHAR(10),
mobile VARCHAR(15),
email VARCHAR(30)
);

-- 학생 샘플 삽입
insert into student_free values( 'test1', 'test1', 'test1', '2012111001', '컴퓨터공학과',
'01000000001', '2012111001@tukorea.ac.kr');

insert into student_free values( 'test2', 'test2', 'test2', '2012111002', '경영학과',
'01000000002', '2012111002@tukorea.ac.kr');

insert into student_free values( 'test3', 'test3', 'test3', '2012111003', '전자공학과',
'01000000003', '2012111003@tukorea.ac.kr');

insert into student_free values( 'test4', 'test4', 'test4', '2012111004', '화학공학과',
'01000000004', '2012111004@tukorea.ac.kr');

insert into student_free values( 'test5', 'test5', 'test5', '2012111005', '기계공학과',
'01000000005', '2012111005@tukorea.ac.kr');

insert into student_free values( 'test6', 'test6', 'test6', '2012111006', '경제학과',
'01000000006', '2012111006@tukorea.ac.kr');

insert into student_free values( 'test7', 'test7', 'test7', '2012111007', '국어국문학과',
'01000000007', '2012111007@tukorea.ac.kr');

insert into student_free values( 'test8', 'test8', 'test8', '2012111008', '사학과',
'01000000008', '2012111008@tukorea.ac.kr');

insert into student_free values( 'test9', 'test9', 'test9', '2012111009', '철학과',
'01000000009', '2012111009@tukorea.ac.kr');

insert into student_free values( 'test10', 'test10', 'test10', '2012111010', '생물공학과',
'01000000010', '2012111010@tukorea.ac.kr');

-- 게시물 테이블 생성
create table board_free(
  bno int not null auto_increment,
  title varchar(50) not null,
  content text not null,
  writer varchar(30) not null,
  regDate timestamp not null default now(),
  viewCnt int default 0,
  primary key(bno)
);

-- 게시물 샘플 생성
insert into board_free(title, content, writer)
  values('테스트 제목1', '테스트 내용1', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목2', '테스트 내용2', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목3', '테스트 내용3', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목4', '테스트 내용4', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목5', '테스트 내용5', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목6', '테스트 내용6', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목7', '테스트 내용7', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목8', '테스트 내용8', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목9', '테스트 내용9', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목10', '테스트 내용10', 'test10');

insert into board_free(title, content, writer)
  values('테스트 제목11', '테스트 내용11', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목12', '테스트 내용12', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목13', '테스트 내용13', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목14', '테스트 내용14', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목15', '테스트 내용15', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목16', '테스트 내용16', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목17', '테스트 내용17', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목18', '테스트 내용18', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목19', '테스트 내용19', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목20', '테스트 내용20', 'test10');
  
insert into board_free(title, content, writer)
  values('테스트 제목21', '테스트 내용21', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목22', '테스트 내용22', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목23', '테스트 내용23', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목24', '테스트 내용24', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목25', '테스트 내용25', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목26', '테스트 내용26', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목27', '테스트 내용27', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목28', '테스트 내용28', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목29', '테스트 내용29', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목30', '테스트 내용30', 'test10');

insert into board_free(title, content, writer)
  values('테스트 제목31', '테스트 내용31', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목32', '테스트 내용32', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목33', '테스트 내용33', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목34', '테스트 내용34', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목35', '테스트 내용35', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목36', '테스트 내용36', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목37', '테스트 내용37', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목38', '테스트 내용38', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목39', '테스트 내용39', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목40', '테스트 내용40', 'test10');

insert into board_free(title, content, writer)
  values('테스트 제목41', '테스트 내용41', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목42', '테스트 내용42', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목43', '테스트 내용43', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목44', '테스트 내용44', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목45', '테스트 내용45', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목46', '테스트 내용46', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목47', '테스트 내용47', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목48', '테스트 내용48', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목49', '테스트 내용49', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목50', '테스트 내용50', 'test10');
  
insert into board_free(title, content, writer)
  values('테스트 제목51', '테스트 내용51', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목52', '테스트 내용52', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목53', '테스트 내용53', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목54', '테스트 내용54', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목55', '테스트 내용55', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목56', '테스트 내용56', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목57', '테스트 내용57', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목58', '테스트 내용58', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목59', '테스트 내용59', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목60', '테스트 내용60', 'test10');
  
insert into board_free(title, content, writer)
  values('테스트 제목61', '테스트 내용61', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목62', '테스트 내용62', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목63', '테스트 내용63', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목64', '테스트 내용64', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목65', '테스트 내용65', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목66', '테스트 내용66', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목67', '테스트 내용67', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목68', '테스트 내용68', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목69', '테스트 내용69', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목70', '테스트 내용70', 'test10');
  
insert into board_free(title, content, writer)
  values('테스트 제목71', '테스트 내용71', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목72', '테스트 내용72', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목73', '테스트 내용73', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목74', '테스트 내용74', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목75', '테스트 내용75', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목76', '테스트 내용76', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목77', '테스트 내용77', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목78', '테스트 내용78', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목79', '테스트 내용79', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목80', '테스트 내용80', 'test10');

insert into board_free(title, content, writer)
  values('테스트 제목81', '테스트 내용81', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목82', '테스트 내용82', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목83', '테스트 내용83', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목84', '테스트 내용84', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목85', '테스트 내용85', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목86', '테스트 내용86', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목87', '테스트 내용87', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목88', '테스트 내용88', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목89', '테스트 내용89', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목90', '테스트 내용90', 'test10');

insert into board_free(title, content, writer)
  values('테스트 제목91', '테스트 내용91', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목92', '테스트 내용92', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목93', '테스트 내용93', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목94', '테스트 내용94', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목95', '테스트 내용95', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목96', '테스트 내용96', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목97', '테스트 내용97', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목98', '테스트 내용98', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목99', '테스트 내용99', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목100', '테스트 내용100', 'test10');
  
insert into board_free(title, content, writer)
  values('테스트 제목101', '테스트 내용101', 'test1');

insert into board_free(title, content, writer)
  values('테스트 제목102', '테스트 내용102', 'test2');

insert into board_free(title, content, writer)
  values('테스트 제목103', '테스트 내용103', 'test3');

insert into board_free(title, content, writer)
  values('테스트 제목104', '테스트 내용104', 'test4');

insert into board_free(title, content, writer)
  values('테스트 제목105', '테스트 내용105', 'test5');
  
insert into board_free(title, content, writer)
  values('테스트 제목106', '테스트 내용106', 'test6');

insert into board_free(title, content, writer)
  values('테스트 제목107', '테스트 내용107', 'test7');

insert into board_free(title, content, writer)
  values('테스트 제목108', '테스트 내용108', 'test8');

insert into board_free(title, content, writer)
  values('테스트 제목109', '테스트 내용109', 'test9');

insert into board_free(title, content, writer)
  values('테스트 제목110', '테스트 내용110', 'test10');

-- 댓글 테이블 생성
CREATE TABLE reply_free (
    rno         int             not null auto_increment,
    bno         int             not null,
    writer     varchar(30) not null,
    content     text             not null,
    regDate     timestamp     not null default now(),
    PRIMARY KEY(rno)
);

-- 테이블 삭제
drop table student_free;
drop table board_free;
drop table reply_free;
