##[16���� ����]#######################################################

1. �Ʒ���Column ���Ĵ��EMP_HW Table������
- ����

---------------------------------------------------------------------

2. EMP_HW Table������
- ����

---------------------------------------------------------------------

3. EMP_HW Table��EMP Table�������ϰԻ���

CREATE TABLE EMP_HW
AS SELECT * FROM EMP;

---------------------------------------------------------------------

4. EMP_HW Table �� ������ ���ڿ�20 ũ��� ���(BIGO) Column�� �߰�

ALTER TABLE EMP_HW
ADD BIGO VARCHAR2(20);

---------------------------------------------------------------------

5. ���� �����Ͽ��� ���Column�� ũ�⸦ 30���� ����

ALTER TABLE EMP_HW
MODIFY BIGO VARCHAR2(30);

---------------------------------------------------------------------

6. ��� Column�� �̸��� REMARK�� ����

ALTER TABLE EMP_HW
RENAME COLUMN BIGO TO REMARK;

---------------------------------------------------------------------

7. EMP Table �� �ּ��� '����������̺�' 
   ��� Column �� �ּ��� '���' �� ����

COMMENT ON TABLE EMP_HW
IS '���� ��� ���̺�';

COMMENT ON COLUMN EMP_HW.REMARK
IS '���';

#####################################################################

��(VIEW) 
- ������ ������ ���̺� ���� ���� �༮
-> ��� ���̺��� �ƴϴ�.

- Ư�� SELECT���� �����ϰ� �ִ� ����Ŭ�� ��ü
-> �����Ͱ� ����Ǿ� �ִ°� �ƴϴ�
-=> ��������� ���� �Ҿ����� �ʴ´�.

- ȸ�翡�� ���࿡ 
  '���̰� �� ����� �뷮�� �ʹ� ���� �������� �ʳ�?'
  -> ��û�� ��� : �ʹ� �������� ����... ħ���� ��...

����) �ǹ������� �� ���̺��̶�� �θ���.

CREATE VIEW empvw30
AS SELECT empno, ename, sal
     FROM emp
    WHERE deptno = 30;

-- ������ ����?

SQLPLUS SYSTEM/ORACLE

GRANT CREATE VIEW TO SCOTT;

DESC empvw30;

VIEW���� INSERT�� �����ұ�?
- ������ ��쵵 �ְ�, �ȵǴ� ��쵵 �ִ�

- �����ϴ��� ���� ��������

INSERT INTO empvw30
VALUES (1111, 'ȫ�浿', 3000, 30);

CREATE OR REPLACE VIEW empvw30
AS SELECT empno, ename, sal, deptno
     FROM emp
    WHERE deptno = 30;

--------------------------------------------------------------------

�ε���(INDEX)

- SELECT��(��ȸ,�˻�) ȿ���� ���̱� ����,
  ���̺��� �÷��� ������ִ� ��ü
-> å�� ���ΰ� ������ ȿ��
-> �ο� ���̵� (Row ID) ��� ������ �ִ�.

- ���α׷��Ӱ� �ε����� �����ϴ� ���� �幰��.
-> �� ������ �Ǹ�, �ٷ���Ҽ��� �ִ�.
-> �����ȹ (Execution Plan)
-> SQL Tunning �̶� ������ �ִ�.

CREATE INDEX IDX_EMP_ENAME
    ON EMP(ENAME);

����) �ε����� �˻� �ӵ� ����� ���� ����ϴ� �Ŷ��
      ���̺��� ��� �÷��� �ε����� ������ִ°��� ������?
-> �ƴϿ�...

SELECT index_name, index_type
  FROM user_indexes;

�ε����� ������ DROP ����� ���µ�,
���߿� ��� ��������(�÷��� �����Ͱ� ��� �����ϴ��� ����)
�� �ε����� ���� ���, �������� ������ ���������ϴ�.

--------------------------------------------------------------------

������(Sequence)
- ��ȣ �ڵ� ������

CREATE SEQUENCE dept_deptno
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 100
  NOCACHE 
  NOCYCLE;

INSERT INTO dept
VALUES(dept_deptno.NEXTVAL, 'A', 'B');

�������� �츮�� ���� �����ϰų�, �����ϴ� ���� �幰��
(�ּ� �������)
- ��� �������̸���.NEXTVAL �Ἥ ���� ���� ������ �����
  ����ص���. (���� ����)

--------------------------------------------------------------------

�ó��(Synonym)
- ��ü�� ���� ��Ī (����Ŭ�� ����Ǵ� ����)

CREATE TABLE copy_emp1
AS SELECT * FROM emp;

CREATE SYNONYM ce FOR copy_emp1;

-------------------------------------------------------------------

��, �ε���, ������, �ó��

�� : ����, SELECT

�ε��� : ����, 
         ����� ���, �����ϴ� ������� �ϱ��� �ʿ�� ����.

������ : ����� ��� X
         ����ϴ� ��� (���)

�ó�� : ���縸 �˰� ������ȴ� (�ǹ����� ����� �� ����)

####################################################################

��������(Constraint)
- Ư�� �÷��� ���� �ִ� �����͸� ������ �� ���

���������� ����

- Primary Key
-> �� ���������� �ɸ� �÷�����
   NULL �Ұ�, �ߺ��� �Ұ�

- Not Null
-> �� �÷����� NULL �� �Ұ�. �ߺ��� ����.

- Unique
-> �� �÷����� �ߺ� ������ �Ұ�. NULL���� ����.

- Check 
-> �� �÷��� ���� �ִ� �������� ����
   SAL �÷��� ������ 500~5000

- Foreign Key
-> �ٸ� ���̺��� �÷��� �����ϴ� �÷����� ���
   �츮�� �н��� ���̺����� emp���̺��� deptno�� ��ǥ���� ��

-> ��� ���α׷��Ӱ� �ſ� �Ⱦ��ϴ� ��������
   �׷��� �����δ� �� �� ���°�찡 ����.

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
- C : CHECK (NOT NULL�� ����)
- R : Foreign KEY 

#####################################################################

���Ϻ��� JSP
- ����Ŭ ���� (���� ����� ���ͳ� �˻�)

- JSP å�� �غ�

- ���� 3�ð� ���� �ϰ�, 1�ð� ����
-> �ڵ� ���� X
-> ���Ϸ� �����ֽø�, �� ������ֽ� �в� ����

- �Ϸ� �� é�;� ����
-> �Ϸ� ������ ������Ϳ�

- ������ ���� 1�ð����� �� Ǯ���°��
-> �ָ������ִ� �� �ܿ��� �� �۾�

- 3~4�������� ���� JSP
-> �⺻�߿� �⺻
-> ����ϸ� �̰� �̹� �ȴٰ� �����ϰ� ���θ� �� �� �ؾߵ�

- �ڵ��� ��û ���� �Ҳ���.

