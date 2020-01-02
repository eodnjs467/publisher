##[13일차 숙제]################################################

1) EMP와 DEPT Table을 Join 하여 
부서번호(DEPTNO), 부서명(DNAME), 이름(ENAME), 급여(SAL) 출력

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

2) 이름이 'ALLEN'인 사원의 부서명(DNAME), 부서번호(DEPTNO), 이름(ENAME) 을 출력

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

3) 모든 사원의 이름(ENAME), 부서 번호(DEPTNO), 부서명(DNAME),
급여(SAL) 출력. 단, DEPT Table에 있는 모든 부서를 출력 되어야함

-- SQL92
SELECT e.ename, d.deptno, d.dname, e.sal
  FROM emp e, dept d
 WHERE e.deptno(+) = d.deptno;

-- SQL99
SELECT e.ename, d.deptno, d.dname, e.sal
  FROM emp e right outer join dept d ON (e.deptno = d.deptno);

--------------------------------------------------------------

4) 'SMITH의 매니저는 FORD이다;

-- SQL92
SELECT e1.ename || '의 매니저는 ' || e2.ename || '이다' AS emp_mgr
  FROM emp e1, emp e2
 WHERE e1.mgr = e2.empno;

-- SQL99
SELECT e1.ename || '의 매니저는 ' || e2.ename || '이다' AS emp_mgr
  FROM emp e1 join emp e2 ON (e1.mgr = e2.empno);

--------------------------------------------------------------

5) 모든 사원의 사원번호(EMPNO), 이름(ENAME), 부서 번호(DEPTNO), 부서명(DNAME), 급여(SAL), 급여등급(GRADE), 상급자의 사원번호(MGR_EMPNO), 상급자의 이름(MGR_ENAME) 출력.

단, DEPT Table에 있는 모든 부서를 출력
- 뒤에 상급자의 부서번호, 부서명도 붙여보자 (필수아님)

- 필요한 테이블 : EMP * 2, DEPT, SALGRADE
-> 절대 절대 절대 절대!!! SQL 한번에 만들려고 하면 안된다.

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

조인 : 여러개 테이블을 옆으로 붙이는거
-> 컬럼의 개수가 늘어나는 효과

집합연산자 : 여러개 sql문 결과를 위아래로 붙이는거
-> 로우 개수가 늘어나는 효과

관계형데이터베이스 : 근간에 집합이론이 있다.
-> 테이블 하나를 집합, 혹은 SELECT 결과도 하나의 집합

집합연산자 주의사항
- 위아래 SELECT문의 컬럼 개수가 동일
- 위아래 SELECT문의 각 컬럼의 데이터타입 일치
- 위아래 SELECT문의 각 컬럼의 이름은 상관없음
-> 출력될때는 위에 SELECT문의 컬럼이름으로 출력

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

UNION : 합집합, 중복제거

SELECT deptno FROM emp
UNION ALL
SELECT deptno FROM dept;

UNION ALL : 합집합, 중복을 제거하지 않고 모두 출력
-> 실무에서는 더 많이 사용된다. (이유는 모르겠음)

MINUS : 차집합을 의미
-> 위에 SELECT문 결과에서 밑에 SELECT문결과랑
  동일한 로우를 제외하고 출력

SELECT deptno FROM dept
MINUS 
SELECT deptno FROM emp;

INTERSECT : 교집합을 의미
-> 위에 있는 SELECT문 결과와, 아래에 있는 SELECT문 결과가
   동일한 로우만 출력

SELECT deptno FROM emp
INTERSECT 
SELECT deptno FROM dept;

##############################################################

ORDER BY 절

- SELECT문의 결과를 정렬할 때 사용
- SELECT문에서 가장 마지막에 작성
-> SELECT문에서 가장 마지막에 수행

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

ORDER BY 써야하는 이유
- SELECT문은 결과 로우의 출력 순서를 [절대] 보장하지 않는다.

ORDER BY 사용 주의사항
- ORDER BY 는 SELECT문의 효율을 획기적으로 떨어뜨린다.

##############################################################

오라클 자격증(국제 공인 자격증)
OCA -> OCP -> OCM
- 응시료 비싸다!
- OCP 부터는 공인교육을 들어야 응시 가능
- OCA는 시험 두번, OCP 시험 4~5번, OCM 보통 일본가서 친다

만약에 오라클 자격증 있었으면 좋겠다 싶으면
OCA 정도로 준비해보자!

SQL 자격증(국내 자격증)
SQLD -> SQLP
-> 우리 수업때 한 내용과 연관된 부분이 많다.
-> SQL 기본 문법에 매우 충실
-> 표준 SQL만 나온다.

그래도 가성비는 정보처리 기사 짱!

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

GROUP BY 주의사항
- GROUP BY 절이 있는 SELECT문에서는
  SELECT절에 복수행함수 
  혹은 GROUP BY절에 명시된 컬럼밖에 오지 못한다.

SELECT empno, AVG(sal)
  FROM emp
GROUP BY deptno;

SELECT COUNT(*), deptno
  FROM emp
GROUP BY deptno;

SELECT deptno, job, AVG(sal)
  FROM emp
GROUP BY deptno, job;

HAVING 절!
- 반드시 GROUP BY 절이 있어야 사용가능
- GROUP BY 절 바로 다음에 작성
- 출력될 그룹을 제한할 때 사용
-> WHERE랑은 좀 다르다, 조건식을 사용

SELECT deptno, avg(sal)
  FROM emp
GROUP BY deptno
HAVING avg(sal) >= 2000;

SELECT deptno, avg(sal)
  FROM emp
GROUP BY deptno
HAVING ename LIKE '%S%';

- WHERE 절 : 결과 로우를 걸러내기 위해서 사용
- HAVING 절 : 결과 그룹을 걸러내기 위해서 사용

##############################################################

SELECT문의 구성!!

SELECT 
  FROM
 WHERE
GROUP BY
HAVING 
ORDER BY 

- FROM 제일 먼저 1순위
- WHERE 가 HAVING 보다 먼저!
- ORDER BY 는 맨 마지막!

##############################################################

WITH 절
- 임시로 SELECT문의 결과를 가상의 테이블 처럼 등록
-> 여러개도 가능
-> 가상의 테이블 : 인라인 뷰 (Inline View)

- 실제로 수행되어야하는 SELECT문에서 마치 테이블처럼 쓸수 있게 한다

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

