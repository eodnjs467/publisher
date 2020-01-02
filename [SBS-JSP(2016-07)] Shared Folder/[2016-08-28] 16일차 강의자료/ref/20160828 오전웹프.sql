##[15���� ����]#################################################

01. 'ALLEN' �� ����(JOB)�� ���� ����� �̸�(ENAME), �μ���(DNAME), �޿�(SAL), ����(JOB)�� ���

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

02. 'JONES' �� �����ִ� �μ��� ��� ����� �����ȣ(ENAME), �̸�(ENAME), �Ի���(HIREDATE), �޿�(SAL)�� ���

SELECT DEPTNO
  FROM EMP
 WHERE ENAME = 'JONES';

SELECT EMPNO, ENAME, HIREDATE, SAL
  FROM EMP
 WHERE DEPTNO = (SELECT DEPTNO
                   FROM EMP
                  WHERE ENAME = 'JONES');

------------------------------------------------------------

03. ��ü ����� ��� �ӱݺ��� ���� ����� �����ȣ(EMPNO), �̸�(ENAME), �μ���(DNAME), �Ի���(HIREDATE), ����(LOC), �޿�(SAL)�� ���

SELECT AVG(SAL)
  FROM EMP;

SELECT E.EMPNO, E.ENAME, D.DNAME, E.HIREDATE, D.LOC, E.SAL
  FROM EMP E, DEPT D
 WHERE E.DEPTNO = D.DEPTNO
   AND SAL > (SELECT AVG(SAL)
                FROM EMP);

------------------------------------------------------------

04. 10�� �μ� ����� �߿��� 20�� �μ��� ����� ���� ����(JOB)�� �ϴ� ����� �����ȣ(EMPNO), �̸�(ENAME), �μ���(DNAME), �Ի���(HIREDATE), ����(LOC)�� ���

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

05.10�� �μ� �߿��� 30�� �μ����� ���� ����(JOB)�� �ϴ� ����� �����ȣ(EMPNO), �̸�(ENAME), �μ���(DNAME), �Ի���(HIREDATE), ����(LOC)�� ����϶�

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

06.10�� �μ��� ���� ���� �ϴ� ����� �����ȣ(EMPNO), �̸�(ENAME), �μ���(DNAME), ����(LOC), �޿�(SAL)�� �޿��� ���� ������ ���

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

07. 'MARTIN' �̳� 'SCOTT' �� �޿�(SAL)�� ���� ����� �����ȣ(EMPNO), �̸�(ENAME), �޿�(SAL)�� ���

SELECT SAL
  FROM EMP
 WHERE ENAME IN ('MARTIN', 'SCOTT');

SELECT EMPNO, ENAME, SAL
  FROM EMP
 WHERE SAL IN (SELECT SAL
                 FROM EMP
                WHERE ENAME IN ('MARTIN', 'SCOTT') );

------------------------------------------------------------

08. �޿��� 30�� �μ��� �ְ� �޿����� ���� ����� �����ȣ(EMPNO), �̸�(ENAME), �޿�(SAL)�� ���
(Multiple Row Function ���/���� �ΰ��� �������)

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

09. �޿��� 30�� �μ��� ���� �޿����� ���� ����� �����ȣ(EMPNO), �̸�(ENAME), �޿�(SAL)�� ���
(Multiple Row Function ���/���� �ΰ��� �������)

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

10. EMP, DEPT, SALGRADE Table �� EMP2, DEPT2, SALGRADE2 �� ����

CREATE TABLE EMP2
AS SELECT * FROM EMP;

CREATE TABLE DEPT2
AS SELECT * FROM DEPT;

CREATE TABLE SALGRADE2
AS SELECT * FROM SALGRADE;

------------------------------------------------------------

11. DEPT2 Table�� 50, 60, 70, 80�μ� 4���� �߰�����. ������ ����

INSERT INTO DEPT2 VALUES(50, 'JAVA'   , '�λ�');

INSERT INTO DEPT2 VALUES(60, 'ORACLE' , '�ϻ�');

INSERT INTO DEPT2 VALUES(70, 'JSP'    , '��õ');

INSERT INTO DEPT2 VALUES(80, 'SERVLET', '�д�');

------------------------------------------------------------

12. EMP2 Table�� 50, 60, 70, 80 �μ���ȣ�� ������ ��������� �� �μ��� �� �� �̻� �߰�����. ������ ���� (�׷����ϰ�)

EMPNO ENAME JOB MGR HIREDATE SAL COMM DEPTNO

CLERK SALESMAN MANAGER ANALYST

INSERT INTO EMP2
VALUES(7201, '������1', 'MANAGER', 7788, SYSDATE-800, 4500, NULL, 50);

INSERT INTO EMP2
VALUES(7202, '������2', 'CLERK', 7201, SYSDATE-750, 1800, NULL, 50);

INSERT INTO EMP2
VALUES(7203, '������3', 'ANALYST', 7201, SYSDATE-700, 3400, NULL, 60);

INSERT INTO EMP2
VALUES(7204, '������4', 'SALESMAN', 7201, SYSDATE-650, 2700, NULL, 60);

INSERT INTO EMP2
VALUES(7205, '������5', 'CLERK', 7201, SYSDATE-600, 2600, NULL, 70);

INSERT INTO EMP2
VALUES(7206, '������6', 'CLERK', 7201, SYSDATE-550, 2600, NULL, 70);

INSERT INTO EMP2
VALUES(7207, '������7', 'LECTURER', 7201, SYSDATE-500, 2300, NULL, 80);

INSERT INTO EMP2
VALUES(7208, '������8', 'STUDENT', 7201, SYSDATE-3, 1200, NULL, 80);

------------------------------------------------------------

13. 50�� �μ��� ��� �޿� ���� ���� �޿��� �ް� �ִ� ����� 70�� �μ��� �μ��̵� ��ų ��

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

14. 60�� �μ����� �Ի����� ���� ���� ������� �ʰ� �Ի��� ����� �޿��� 10% �λ� ��Ű�� 80�� �μ��� �μ��̵� ��ų ��

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

15. EMP2�� ������ �÷� ������ ������ EMP3 Table�� ������, �޿� ����� 5 �� ����� EMP3�� �߰�


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

16. EMP2���� �޿� ����� 5�� ����� ����

DELETE FROM EMP2
  WHERE EMPNO IN (SELECT EMPNO
                    FROM EMP2 E, SALGRADE2 S
                   WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
                     AND S.GRADE = 5);

------------------------------------------------------------
##################################################################

TCL(Transaction Control Language)

Ʈ����� (Transaction)

scott/tiger ����

@@@@@@@@@@@@@@[session ����]@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

--TRANSACTION 01 ���� --------------------------------------

select~
insert~
update~
delete~
DML : �����͸� �ٲٴ� ��ɾ�
-> �����ͺ��̽��� ����� ������ ������ �ݿ� : COMMIT
-> ���ݱ��� �ߴ� �۾��� ��� : ROLLBACK 

TCL(COMMIT, ROLLBACK) ��� ����Ǹ�

--TRANSACTION 01 ���� --------------------------------------
--TRANSACTION 02 ���� --------------------------------------

delete~
select~
insert~
update~

TCL(COMMIT, ROLLBACK) ��� ����Ǹ�

--TRANSACTION 02 ���� --------------------------------------
--TRANSACTION 03 ���� --------------------------------------
--TRANSACTION 03 ���� --------------------------------------

toad �� �����ϰų�, sqlplus [exit]
@@@@@@@@@@@@@@[session ����]@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

##################################################################

Data Dictionary Table

�̰Ŵ� ���α׷��Ӵ� ������ ���� ����.

SELECT * FROM USER_TABLES;
- ���� ������ ������ ������ ���̺� ��� 

SELECT * FROM ALL_TABLES;
- ���� ������ ������ ����Ҽ� �ִ� ���̺� ���
-> �ٸ� ���� ������ ���̺��̶� ����� �㰡�Ǿ��ִ� ���̺�

##################################################################

DDL(Data Definition Language)
- ����Ŭ���� �����ϴ� ���̺�� ����
  Object�� �����ϰų�, �����ϰų�, �����ϴ� ���

- DML�̶� ���� ������ ���� �����.

- CREATE(�����ͺ��̽� �ȿ� ��ü ����),
  ALTER(�����ͺ��̽� �ȿ� �����Ǿ� �ִ� ��ü�� Ư�� ����),
  DROP(�����ͺ��̽��� �����Ǿ��ִ� ��ü�� ����)
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
     IS '�������';

COMMENT ON 
  COLUMN emp_test.empno
     IS '�����ȣ';



     
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