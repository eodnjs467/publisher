##[15일차 숙제]#################################################

01. 'ALLEN' 의 직무(JOB)와 같은 사원의 이름(ENAME), 부서명(DNAME), 급여(SAL), 직무(JOB)를 출력

SELECT JOB
  FROM EMP
 WHERE ENAME = 'ALLEN';

SELECT E.ENAME, D.DNAME, E.SAL, E.JOB
  FROM EMP E, DEPT D
 WHERE E.DEPTNO = D.DEPTNO
   AND JOB = (SELECT JOB
                FROM EMP
               WHERE ENAME = 'ALLEN');

------------------------------------------------------------

02. 'JONES' 가 속해있는 부서의 모든 사람의 사원번호(ENAME), 이름(ENAME), 입사일(HIREDATE), 급여(SAL)를 출력

SELECT DEPTNO
  FROM EMP
 WHERE ENAME = 'JONES';

SELECT EMPNO, ENAME, HIREDATE, SAL
  FROM EMP
 WHERE DEPTNO = (SELECT DEPTNO
                   FROM EMP
                  WHERE ENAME = 'JONES');

------------------------------------------------------------

03. 전체 사원의 평균 임금보다 많은 사원의 사원번호(EMPNO), 이름(ENAME), 부서명(DNAME), 입사일(HIREDATE), 지역(LOC), 급여(SAL)를 출력

SELECT AVG(SAL)
  FROM EMP;

SELECT E.EMPNO, E.ENAME, D.DNAME, E.HIREDATE, D.LOC, E.SAL
  FROM EMP E, DEPT D
 WHERE E.DEPTNO = D.DEPTNO
   AND SAL > (SELECT AVG(SAL)
                FROM EMP);

------------------------------------------------------------

04. 10번 부서 사람들 중에서 20번 부서의 사원과 같은 업무(JOB)를 하는 사원의 사원번호(EMPNO), 이름(ENAME), 부서명(DNAME), 입사일(HIREDATE), 지역(LOC)을 출력

SELECT JOB
  FROM EMP
 WHERE DEPTNO = 20;

SELECT E.EMPNO, E.ENAME, E.JOB, D.DNAME, E.HIREDATE, D.LOC
  FROM EMP E, DEPT D
 WHERE E.DEPTNO = D.DEPTNO
   AND E.DEPTNO = 10
   AND E.JOB IN (SELECT JOB
                   FROM EMP
                  WHERE DEPTNO = 20);

------------------------------------------------------------

05.10번 부서 중에서 30번 부서에는 없는 업무(JOB)를 하는 사원의 사원번호(EMPNO), 이름(ENAME), 부서명(DNAME), 입사일(HIREDATE), 지역(LOC)을 출력하라

SELECT JOB
  FROM EMP
 WHERE DEPTNO = 30;

SELECT E.EMPNO, E.ENAME, E.JOB, D.DNAME, E.HIREDATE, D.LOC
  FROM EMP E, DEPT D
 WHERE E.DEPTNO = D.DEPTNO
   AND E.DEPTNO = 10
   AND E.JOB NOT IN (SELECT JOB
                       FROM EMP
                      WHERE DEPTNO = 30);

--------------------------------------------------------------

06.10번 부서와 같은 일을 하는 사원의 사원번호(EMPNO), 이름(ENAME), 부서명(DNAME), 지역(LOC), 급여(SAL)를 급여가 많은 순으로 출력

SELECT JOB
  FROM EMP
 WHERE DEPTNO = 10;

SELECT   E.EMPNO, E.ENAME, D.DNAME, D.LOC, E.SAL
    FROM EMP E, DEPT D
   WHERE E.DEPTNO = D.DEPTNO
     AND JOB IN (SELECT JOB
                 FROM EMP
                WHERE DEPTNO = 10)
ORDER BY E.SAL DESC;

------------------------------------------------------------

07. 'MARTIN' 이나 'SCOTT' 의 급여(SAL)와 같은 사원의 사원번호(EMPNO), 이름(ENAME), 급여(SAL)를 출력

SELECT SAL
  FROM EMP
 WHERE ENAME IN ('MARTIN', 'SCOTT');

SELECT EMPNO, ENAME, SAL
  FROM EMP
 WHERE SAL IN (SELECT SAL
                 FROM EMP
                WHERE ENAME IN ('MARTIN', 'SCOTT') );

------------------------------------------------------------

08. 급여가 30번 부서의 최고 급여보다 높은 사원의 사원번호(EMPNO), 이름(ENAME), 급여(SAL)를 출력
(Multiple Row Function 사용/비사용 두가지 방식으로)

SELECT SAL
  FROM EMP
 WHERE DEPTNO = 30;

SELECT EMPNO, ENAME, SAL
  FROM EMP
 WHERE SAL > ALL (SELECT SAL
                    FROM EMP
		   WHERE DEPTNO = 30);

SELECT MAX(SAL)
  FROM EMP
 WHERE DEPTNO = 30;

SELECT EMPNO, ENAME, SAL
  FROM EMP
 WHERE SAL > (SELECT MAX(SAL)
                FROM EMP
	       WHERE DEPTNO = 30);

------------------------------------------------------------

09. 급여가 30번 부서의 최저 급여보다 높은 사원의 사원번호(EMPNO), 이름(ENAME), 급여(SAL)를 출력
(Multiple Row Function 사용/비사용 두가지 방식으로)

SELECT SAL
  FROM EMP
 WHERE DEPTNO = 30;

SELECT EMPNO, ENAME, SAL
  FROM EMP
 WHERE SAL > ANY (SELECT SAL
                    FROM EMP
		   WHERE DEPTNO = 30);

SELECT MIN(SAL)
  FROM EMP
 WHERE DEPTNO = 30;

SELECT EMPNO, ENAME, SAL
  FROM EMP
 WHERE SAL > (SELECT MIN(SAL)
                FROM EMP
               WHERE DEPTNO = 30);

------------------------------------------------------------

10. EMP, DEPT, SALGRADE Table 을 EMP2, DEPT2, SALGRADE2 로 복사

CREATE TABLE EMP2
AS SELECT * FROM EMP;

CREATE TABLE DEPT2
AS SELECT * FROM DEPT;

CREATE TABLE SALGRADE2
AS SELECT * FROM SALGRADE;

------------------------------------------------------------

11. DEPT2 Table에 50, 60, 70, 80부서 4개를 추가하자. 내용은 자유

INSERT INTO DEPT2 VALUES(50, 'JAVA'   , '부산');

INSERT INTO DEPT2 VALUES(60, 'ORACLE' , '일산');

INSERT INTO DEPT2 VALUES(70, 'JSP'    , '인천');

INSERT INTO DEPT2 VALUES(80, 'SERVLET', '분당');

------------------------------------------------------------

12. EMP2 Table에 50, 60, 70, 80 부서번호를 가지는 사원정보를 각 부서별 두 명 이상씩 추가하자. 내용은 자유 (그럴듯하게)

EMPNO ENAME JOB MGR HIREDATE SAL COMM DEPTNO

CLERK SALESMAN MANAGER ANALYST

INSERT INTO EMP2
VALUES(7201, '이지훈1', 'MANAGER', 7788, SYSDATE-800, 4500, NULL, 50);

INSERT INTO EMP2
VALUES(7202, '이지훈2', 'CLERK', 7201, SYSDATE-750, 1800, NULL, 50);

INSERT INTO EMP2
VALUES(7203, '이지훈3', 'ANALYST', 7201, SYSDATE-700, 3400, NULL, 60);

INSERT INTO EMP2
VALUES(7204, '이지훈4', 'SALESMAN', 7201, SYSDATE-650, 2700, NULL, 60);

INSERT INTO EMP2
VALUES(7205, '이지훈5', 'CLERK', 7201, SYSDATE-600, 2600, NULL, 70);

INSERT INTO EMP2
VALUES(7206, '이지훈6', 'CLERK', 7201, SYSDATE-550, 2600, NULL, 70);

INSERT INTO EMP2
VALUES(7207, '이지훈7', 'LECTURER', 7201, SYSDATE-500, 2300, NULL, 80);

INSERT INTO EMP2
VALUES(7208, '이지훈8', 'STUDENT', 7201, SYSDATE-3, 1200, NULL, 80);

------------------------------------------------------------

13. 50번 부서의 평균 급여 보다 많은 급여를 받고 있는 사원을 70번 부서로 부서이동 시킬 것

SELECT AVG(SAL)
  FROM EMP2
 WHERE DEPTNO = 50;

UPDATE EMP2
   SET DEPTNO = 70
 WHERE SAL > (SELECT AVG(SAL)
                FROM EMP2
               WHERE DEPTNO = 50);

SELECT EMPNO, ENAME, JOB, DEPTNO AS BEFORE_DEPTNO,
       CASE
         WHEN SAL > (SELECT AVG(SAL) FROM EMP2 WHERE DEPTNO=50) THEN 70
	 ELSE DEPTNO
       END AS AFTER_DEPTNO
  FROM EMP2;

------------------------------------------------------------

14. 60번 부서에서 입사일이 가장 빠른 사원보다 늦게 입사한 사원의 급여를 10% 인상 시키고 80번 부서로 부서이동 시킬 것

SELECT MIN(HIREDATE)
  FROM EMP2
 WHERE DEPTNO = 60;

UPDATE EMP2
   SET SAL = SAL*1.1, DEPTNO = 80
 WHERE HIREDATE > (SELECT MIN(HIREDATE)
                     FROM EMP2
                    WHERE DEPTNO = 60);

SELECT EMPNO, ENAME, JOB, HIREDATE,
       (SELECT MIN(HIREDATE) 
          FROM EMP2 
	 WHERE DEPTNO = 60) AS MIN60HIREDATE,
       SAL AS BEFORE_SAL,
       CASE
         WHEN HIREDATE > (SELECT MIN(HIREDATE)
                            FROM EMP2
                           WHERE DEPTNO = 60)   THEN SAL*1.1
         ELSE SAL
       END AS AFTER_SAL,
       DEPTNO AS BEFORE_DEPTNO,
       CASE
         WHEN HIREDATE > (SELECT MIN(HIREDATE)
                            FROM EMP2
                           WHERE DEPTNO = 60)   THEN 80
         ELSE DEPTNO
       END AS AFTER_DEPTNO
  FROM EMP2;

------------------------------------------------------------

15. EMP2와 동일한 컬럼 구성을 가지는 EMP3 Table을 만든후, 급여 등급이 5 인 사원을 EMP3에 추가


CREATE TABLE EMP3
AS SELECT * 
     FROM EMP2
    WHERE 1 <> 1;

CREATE TABLE EMP3
AS SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, 
          E.HIREDATE, E.SAL, E.COMM, E.DEPTNO
     FROM EMP2 E, SALGRADE2 S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
      AND S.GRADE = 5;

------------------------------------------------------------

16. EMP2에서 급여 등급이 5인 사원을 삭제

DELETE FROM EMP2
  WHERE EMPNO IN (SELECT EMPNO
                    FROM EMP2 E, SALGRADE2 S
                   WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
                     AND S.GRADE = 5);

------------------------------------------------------------
##################################################################

TCL(Transaction Control Language)

트랜잭션 (Transaction)

scott/tiger 접속

@@@@@@@@@@@@@@[session 시작]@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

--TRANSACTION 01 시작 --------------------------------------

select~
insert~
update~
delete~
DML : 데이터를 바꾸는 명령어
-> 데이터베이스에 변경된 내용을 영구히 반영 : COMMIT
-> 지금까지 했던 작업을 취소 : ROLLBACK 

TCL(COMMIT, ROLLBACK) 요게 실행되면

--TRANSACTION 01 종료 --------------------------------------
--TRANSACTION 02 시작 --------------------------------------

delete~
select~
insert~
update~

TCL(COMMIT, ROLLBACK) 요게 실행되면

--TRANSACTION 02 종료 --------------------------------------
--TRANSACTION 03 시작 --------------------------------------
--TRANSACTION 03 종료 --------------------------------------

toad 를 종료하거나, sqlplus [exit]
@@@@@@@@@@@@@@[session 종료]@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

##################################################################

Data Dictionary Table

이거는 프로그래머는 쓸일이 별로 없다.

SELECT * FROM USER_TABLES;
- 현재 접속한 계정이 소유한 테이블 목록 

SELECT * FROM ALL_TABLES;
- 현재 접속한 계정이 사용할수 있는 테이블 목록
-> 다른 계정 소유의 테이블이라도 사용이 허가되어있는 테이블

##################################################################

DDL(Data Definition Language)
- 오라클에서 제공하는 테이블과 같은
  Object를 생성하거나, 수정하거나, 삭제하는 명령

- DML이랑 같이 면접때 많이 물어본다.

- CREATE(데이터베이스 안에 객체 생성),
  ALTER(데이터베이스 안에 생성되어 있는 객체의 특성 수정),
  DROP(데이터베이스에 생성되어있는 객체를 삭제)
-> Auto Commit;

CREATE TABLE emp_test(
   empno char(3),
   ename varchar2(15)
)

ALTER TABLE emp_test
MODIFY ename varchar2(20);

DROP TABLE emp_test;

RENAME emp_test
    TO emp_test_1;

COMMENT ON 
  TABLE emp_test
     IS '사원정보';

COMMENT ON 
  COLUMN emp_test.empno
     IS '사원번호';



     
CREATE TABLE copy_emp(
   empno char(3),
   ename varchar2(15)
)

SELECT empno, ename, ROWNUM 
  FROM emp;

SELECT ename, sal, ROWNUM 
  FROM (SELECT ename, sal FROM emp
        ORDER BY sal desc)
 WHERE ROWNUM <= 3;