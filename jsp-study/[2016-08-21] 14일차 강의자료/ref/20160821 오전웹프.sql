##[13���� ����]################################################

1) EMP�� DEPT Table�� Join �Ͽ� 
�μ���ȣ(DEPTNO), �μ���(DNAME), �̸�(ENAME), �޿�(SAL) ���

-- SQL92
SELECT d.deptno, d.dname, e.ename, e.sal
  FROM emp e, dept d
 WHERE e.deptno = d.deptno;

-- SQL99
SELECT deptno, d.dname, e.ename, e.sal
  FROM emp e NATURAL join dept d;

SELECT deptno, d.dname, e.ename, e.sal
  FROM emp e join dept d USING (deptno);

SELECT d.deptno, d.dname, e.ename, e.sal
  FROM emp e join dept d ON (e.deptno = d.deptno);

--------------------------------------------------------------

2) �̸��� 'ALLEN'�� ����� �μ���(DNAME), �μ���ȣ(DEPTNO), �̸�(ENAME) �� ���

-- SQL92
SELECT d.dname, d.deptno, e.ename
  FROM emp e, dept d
 WHERE e.deptno = d.deptno
   AND e.ename = 'ALLEN';

-- SQL99
SELECT d.dname, deptno, e.ename
  FROM emp e NATURAL join dept d
 WHERE ename = 'ALLEN';

SELECT d.dname, d.deptno, e.ename
  FROM emp e join dept d ON ( (e.deptno = d.deptno) 
                           AND(e.ename = 'ALLEN'));

--------------------------------------------------------------

3) ��� ����� �̸�(ENAME), �μ� ��ȣ(DEPTNO), �μ���(DNAME),
�޿�(SAL) ���. ��, DEPT Table�� �ִ� ��� �μ��� ��� �Ǿ����

-- SQL92
SELECT e.ename, d.deptno, d.dname, e.sal
  FROM emp e, dept d
 WHERE e.deptno(+) = d.deptno;

-- SQL99
SELECT e.ename, d.deptno, d.dname, e.sal
  FROM emp e right outer join dept d ON (e.deptno = d.deptno);

--------------------------------------------------------------

4) 'SMITH�� �Ŵ����� FORD�̴�;

-- SQL92
SELECT e1.ename || '�� �Ŵ����� ' || e2.ename || '�̴�' AS emp_mgr
  FROM emp e1, emp e2
 WHERE e1.mgr = e2.empno;

-- SQL99
SELECT e1.ename || '�� �Ŵ����� ' || e2.ename || '�̴�' AS emp_mgr
  FROM emp e1 join emp e2 ON (e1.mgr = e2.empno);

--------------------------------------------------------------

5) ��� ����� �����ȣ(EMPNO), �̸�(ENAME), �μ� ��ȣ(DEPTNO), �μ���(DNAME), �޿�(SAL), �޿����(GRADE), ������� �����ȣ(MGR_EMPNO), ������� �̸�(MGR_ENAME) ���.

��, DEPT Table�� �ִ� ��� �μ��� ���
- �ڿ� ������� �μ���ȣ, �μ��� �ٿ����� (�ʼ��ƴ�)

- �ʿ��� ���̺� : EMP * 2, DEPT, SALGRADE
-> ���� ���� ���� ����!!! SQL �ѹ��� ������� �ϸ� �ȵȴ�.

--SQL92
SELECT e.empno, e.ename, d.deptno, d.dname, e.mgr,
       e.sal, 
       s.grade, s.losal, s.hisal,
       e2.empno AS mgr_empno,
       e2.ename AS mgr_ename
  FROM emp e, dept d, emp e2, salgrade s
 WHERE e.deptno(+) = d.deptno
   AND e.mgr = e2.empno(+)
 AND e.sal BETWEEN s.losal(+) AND s.hisal(+);
 
 --AND e.sal >= s.losal(+)
 --AND e.sal <= s.hisal(+);
 
--SQL99
SELECT e.empno, e.ename, d.deptno, d.dname, e.mgr,
       e.sal,
       s.grade, s.losal, s.hisal,
       e2.empno AS mgr_empno,
       e2.ename AS mgr_ename
  FROM emp e right outer join dept d 
                           ON (e.deptno = d.deptno)
             left  outer join emp e2 
	                   ON (e.mgr = e2.empno)
	         left  outer join salgrade s 
		           ON (e.sal BETWEEN s.losal AND s.hisal);

##############################################################

���� : ������ ���̺��� ������ ���̴°�
-> �÷��� ������ �þ�� ȿ��

���տ����� : ������ sql�� ����� ���Ʒ��� ���̴°�
-> �ο� ������ �þ�� ȿ��

�����������ͺ��̽� : �ٰ��� �����̷��� �ִ�.
-> ���̺� �ϳ��� ����, Ȥ�� SELECT ����� �ϳ��� ����

���տ����� ���ǻ���
- ���Ʒ� SELECT���� �÷� ������ ����
- ���Ʒ� SELECT���� �� �÷��� ������Ÿ�� ��ġ
- ���Ʒ� SELECT���� �� �÷��� �̸��� �������
-> ��µɶ��� ���� SELECT���� �÷��̸����� ���

SELECT empno FROM emp
UNION 
SELECT deptno, dname FROM dept;

SELECT dname, deptno FROM dept
UNION
SELECT deptno, dname FROM dept;

SELECT empno, ename FROM emp
UNION 
SELECT deptno, dname FROM dept;

SELECT deptno FROM emp
UNION 
SELECT deptno FROM dept;

UNION : ������, �ߺ�����

SELECT deptno FROM emp
UNION ALL
SELECT deptno FROM dept;

UNION ALL : ������, �ߺ��� �������� �ʰ� ��� ���
-> �ǹ������� �� ���� ���ȴ�. (������ �𸣰���)

MINUS : �������� �ǹ�
-> ���� SELECT�� ������� �ؿ� SELECT�������
  ������ �ο츦 �����ϰ� ���

SELECT deptno FROM dept
MINUS 
SELECT deptno FROM emp;

INTERSECT : �������� �ǹ�
-> ���� �ִ� SELECT�� �����, �Ʒ��� �ִ� SELECT�� �����
   ������ �ο츸 ���

SELECT deptno FROM emp
INTERSECT 
SELECT deptno FROM dept;

##############################################################

ORDER BY ��

- SELECT���� ����� ������ �� ���
- SELECT������ ���� �������� �ۼ�
-> SELECT������ ���� �������� ����

SELECT
  FROM
 WHERE
ORDER BY

SELECT ename, sal
  FROM emp
ORDER BY sal ASC;

SELECT ename, sal
  FROM emp
ORDER BY sal desc, ename asc;

ORDER BY ����ϴ� ����
- SELECT���� ��� �ο��� ��� ������ [����] �������� �ʴ´�.

ORDER BY ��� ���ǻ���
- ORDER BY �� SELECT���� ȿ���� ȹ�������� ����߸���.

##############################################################

����Ŭ �ڰ���(���� ���� �ڰ���)
OCA -> OCP -> OCM
- ���÷� ��δ�!
- OCP ���ʹ� ���α����� ���� ���� ����
- OCA�� ���� �ι�, OCP ���� 4~5��, OCM ���� �Ϻ����� ģ��

���࿡ ����Ŭ �ڰ��� �־����� ���ڴ� ������
OCA ������ �غ��غ���!

SQL �ڰ���(���� �ڰ���)
SQLD -> SQLP
-> �츮 ������ �� ����� ������ �κ��� ����.
-> SQL �⺻ ������ �ſ� ���
-> ǥ�� SQL�� ���´�.

�׷��� ������� ����ó�� ��� ¯!

##############################################################

GROUP BY, HAVING

SELECT AVG(sal), 10 as deptno FROM emp WHERE deptno = 10
UNION ALL
SELECT AVG(sal), 20 as deptno FROM emp WHERE deptno = 20
UNION ALL 
SELECT AVG(sal), 30 as deptno FROM emp WHERE deptno = 30;

SELECT AVG(sal), deptno
  FROM emp
GROUP BY deptno;

GROUP BY ���ǻ���
- GROUP BY ���� �ִ� SELECT��������
  SELECT���� �������Լ� 
  Ȥ�� GROUP BY���� ��õ� �÷��ۿ� ���� ���Ѵ�.

SELECT empno, AVG(sal)
  FROM emp
GROUP BY deptno;

SELECT COUNT(*), deptno
  FROM emp
GROUP BY deptno;

SELECT deptno, job, AVG(sal)
  FROM emp
GROUP BY deptno, job;

HAVING ��!
- �ݵ�� GROUP BY ���� �־�� ��밡��
- GROUP BY �� �ٷ� ������ �ۼ�
- ��µ� �׷��� ������ �� ���
-> WHERE���� �� �ٸ���, ���ǽ��� ���

SELECT deptno, avg(sal)
  FROM emp
GROUP BY deptno
HAVING avg(sal) >= 2000;

SELECT deptno, avg(sal)
  FROM emp
GROUP BY deptno
HAVING ename LIKE '%S%';

- WHERE �� : ��� �ο츦 �ɷ����� ���ؼ� ���
- HAVING �� : ��� �׷��� �ɷ����� ���ؼ� ���

##############################################################

SELECT���� ����!!

SELECT 
  FROM
 WHERE
GROUP BY
HAVING 
ORDER BY 

- FROM ���� ���� 1����
- WHERE �� HAVING ���� ����!
- ORDER BY �� �� ������!

##############################################################

WITH ��
- �ӽ÷� SELECT���� ����� ������ ���̺� ó�� ���
-> �������� ����
-> ������ ���̺� : �ζ��� �� (Inline View)

- ������ ����Ǿ���ϴ� SELECT������ ��ġ ���̺�ó�� ���� �ְ� �Ѵ�

WITH 
dept_costs AS (SELECT   d.deptno, sum(e.sal) AS dept_total
                 FROM   emp e, dept d
		WHERE   e.deptno = d.deptno
	       GROUP BY d.deptno),
avg_costs  AS (SELECT sum(dept_total) / count(*) AS dept_avg
                 FROM dept_costs)
SELECT *
  FROM dept_costs
 WHERE dept_total > (SELECT dept_avg
                       FROM avg_cost)
ORDER BY deptno;

