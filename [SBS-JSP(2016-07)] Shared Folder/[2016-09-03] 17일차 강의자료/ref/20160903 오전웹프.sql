##[16일차 숙제]#######################################################

1. 아래의Column 형식대로EMP_HW Table을생성
- 생략

---------------------------------------------------------------------

2. EMP_HW Table을삭제
- 생략

---------------------------------------------------------------------

3. EMP_HW Table을EMP Table과동일하게생성

CREATE TABLE EMP_HW
AS SELECT * FROM EMP;

---------------------------------------------------------------------

4. EMP_HW Table 에 가변형 문자열20 크기로 비고(BIGO) Column을 추가

ALTER TABLE EMP_HW
ADD BIGO VARCHAR2(20);

---------------------------------------------------------------------

5. 위에 생성하였던 비고Column의 크기를 30으로 변경

ALTER TABLE EMP_HW
MODIFY BIGO VARCHAR2(30);

---------------------------------------------------------------------

6. 비고 Column의 이름을 REMARK로 변경

ALTER TABLE EMP_HW
RENAME COLUMN BIGO TO REMARK;

---------------------------------------------------------------------

7. EMP Table 의 주석을 '숙제사원테이블' 
   비고 Column 의 주석을 '비고' 로 설정

COMMENT ON TABLE EMP_HW
IS '숙제 사원 테이블';

COMMENT ON COLUMN EMP_HW.REMARK
IS '비고';

#####################################################################

뷰(VIEW) 
- 가상의 논리적인 테이블 같이 생긴 녀석
-> 얘는 테이블이 아니다.

- 특정 SELECT문만 저장하고 있는 오라클의 객체
-> 데이터가 저장되어 있는게 아니다
-=> 저장공간을 거의 할애하지 않는다.

- 회사에서 만약에 
  '아이고 뷰 만들면 용량이 너무 많이 차지하지 않나?'
  -> 멍청한 사람 : 너무 뭐라하지 말자... 침묵은 금...

참고) 실무에서는 뷰 테이블이라고도 부른다.

CREATE VIEW empvw30
AS SELECT empno, ename, sal
     FROM emp
    WHERE deptno = 30;

-- 권한이 없네?

SQLPLUS SYSTEM/ORACLE

GRANT CREATE VIEW TO SCOTT;

DESC empvw30;

VIEW에도 INSERT가 가능할까?
- 가능한 경우도 있고, 안되는 경우도 있다

- 가능하더라도 절대 하지말자

INSERT INTO empvw30
VALUES (1111, '홍길동', 3000, 30);

CREATE OR REPLACE VIEW empvw30
AS SELECT empno, ename, sal, deptno
     FROM emp
    WHERE deptno = 30;

--------------------------------------------------------------------

인덱스(INDEX)

- SELECT문(조회,검색) 효율을 높이기 위해,
  테이블의 컬럼에 만들어주는 객체
-> 책에 색인과 동일한 효과
-> 로우 아이디 (Row ID) 얘랑 관련이 있다.

- 프로그래머가 인덱스에 관여하는 경우는 드물다.
-> 좀 직급이 되면, 다뤄야할수도 있다.
-> 실행계획 (Execution Plan)
-> SQL Tunning 이랑 관련이 있다.

CREATE INDEX IDX_EMP_ENAME
    ON EMP(ENAME);

질문) 인덱스가 검색 속도 향상을 위해 사용하는 거라면
      테이블의 모든 컬럼에 인덱스를 만들어주는것이 좋을까?
-> 아니오...

SELECT index_name, index_type
  FROM user_indexes;

인덱스의 삭제는 DROP 명령을 쓰는데,
나중에 배울 제약조건(컬럼에 데이터가 어떻게 들어가야하는지 기준)
이 인덱스에 있을 경우, 제약조건 삭제후 삭제가능하다.

--------------------------------------------------------------------

시퀀스(Sequence)
- 번호 자동 생성기

CREATE SEQUENCE dept_deptno
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 100
  NOCACHE 
  NOCYCLE;

INSERT INTO dept
VALUES(dept_deptno.NEXTVAL, 'A', 'B');

시퀀스는 우리가 직접 제작하거나, 변경하는 일은 드물다
(최소 과장까진)
- 얘는 시퀀스이름명.NEXTVAL 써서 다음 숫자 얻어오는 방법만
  기억해두자. (많이 쓴다)

--------------------------------------------------------------------

시노님(Synonym)
- 객체의 공식 별칭 (오라클에 저장되는 별명)

CREATE TABLE copy_emp1
AS SELECT * FROM emp;

CREATE SYNONYM ce FOR copy_emp1;

-------------------------------------------------------------------

뷰, 인덱스, 시퀀스, 시노님

뷰 : 개념, SELECT

인덱스 : 개념, 
         만드는 방법, 수정하는 방법까진 암기할 필요는 없다.

시퀀스 : 만드는 방법 X
         사용하는 방법 (기억)

시노님 : 존재만 알고 있으면된다 (실무에서 사용을 잘 안함)

####################################################################

제약조건(Constraint)
- 특정 컬럼에 들어갈수 있는 데이터를 제한할 때 사용

제약조건의 종류

- Primary Key
-> 이 제약조건이 걸린 컬럼에는
   NULL 불가, 중복도 불가

- Not Null
-> 이 컬럼에는 NULL 값 불가. 중복은 가능.

- Unique
-> 이 컬럼에는 중복 데이터 불가. NULL값을 가능.

- Check 
-> 이 컬럼에 들어갈수 있는 데이터의 범위
   SAL 컬럼의 범위는 500~5000

- Foreign Key
-> 다른 테이블의 컬럼을 참조하는 컬럼임을 명시
   우리가 학습한 테이블에서는 emp테이블의 deptno가 대표적인 예

-> 얘는 프로그래머가 매우 싫어하는 제약조건
   그래서 실제로는 잘 안 쓰는경우가 많다.

CREATE TABLE dept1(
  deptno number(2) PRIMARY KEY,
  dname varchar2(20) UNIQUE,
  loc varchar2(20)
);

INSERT INTO dept1 VALUES(NULL, NULL, NULL);

CREATE TABLE emp1(
   empno number(4) CONSTRAINT emp1_empno_pk PRIMARY KEY,
   ename varchar2(20) NOT NULL,
   sal number(7,2),
   deptno number(2),
   CONSTRAINT emp1_sal_ck CHECK (sal BETWEEN 500 AND 5000),
   CONSTRAINT emp1_deptno_fk FOREIGN KEY (deptno) 
                             REFERENCES dept1(deptno)
);

SELECT constraint_name,
       constraint_type,
       table_name
       search_condition
  FROM user_constraints
 WHERE table_name IN ('EMP1', 'DEPT1');

- P : Primary KEY 
- U : UNIQUE
- C : CHECK (NOT NULL을 포함)
- R : Foreign KEY 

#####################################################################

내일부터 JSP
- 오라클 포맷 (삭제 방법은 인터넷 검색)

- JSP 책을 준비

- 보통 3시간 수업 하고, 1시간 숙제
-> 코드 제공 X
-> 메일로 보내주시면, 잘 만들어주신 분껄 공유

- 하루 한 챕터씩 진도
-> 하루 빠지면 못따라와요

- 숙제가 남은 1시간동안 안 풀리는경우
-> 주말수업있는 날 외에도 좀 작업

- 3~4개월차에 배우는 JSP
-> 기본중에 기본
-> 취업하면 이건 이미 안다고 전제하고 공부를 어마어마 더 해야돼

- 코딩을 엄청 많이 할꺼다.

