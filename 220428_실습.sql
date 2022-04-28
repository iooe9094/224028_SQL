-- �˻�(R)
-- * : ALL COLUMN (DEPTNO, DNAME, LOC) ���
--SELECT * FROM DEPT;
SELECT DEPTNO, DNAME, LOC FROM DEPT;
-- �ϳ��� �÷��� ����
SELECT DEPTNO FROM DEPT;
-- �ٸ� �÷��鵵 �� ���� ����
SELECT DNAME FROM DEPT;
SELECT LOC FROM DEPT;

-- ���ǿ� �´� ������ ��������
-- WHERE [������] : ���� ����
-- DEPT ���̺� ���� DNAME(�μ��̸�)�� 'SALES'�� �����͸� ��������
SELECT DNAME FROM DEPT WHERE DNAME = 'SALES';

-- �������� 1. DEPT ���̺��� DEPTNO�� 10�� �����͸� ��������
SELECT DEPTNO FROM DEPT WHERE DEPTNO = 10;

-- WHERE[�����÷�] LIKE 'S%'
-- �����÷��� S�� ���۵Ǵ� ���ڿ��� ��� �������� (�̷� ���� ���� �����)
SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%';

-- �������� 2. EMP ���̺��� JOB�� J�� ���۵Ǵ� ���ڿ��� ���� �����͸� ��� ��������
-- SELECT ���� �÷��� ��ġ�� ���� ������ ��� ������ �ٲ�
SELECT JOB FROM EMP WHERE JOB LIKE 'M%';
-- EMP���� JOB, ENAME�� �����µ�, (���ǹ�) JOB���� M���� ���۵Ǵ� ���� ��������.
SELECT JOB, ENAME FROM EMP WHERE JOB LIKE 'M%';
 
-- �����Լ� UPPER/LOWER
-- UPPER : �빮�ڷ� ���� / LOWER : �ҹ��ڷ� ����
-- DB ���̺� �����ʹ� ��ҹ��ڸ� ������ ���ڿ��� �ν���
SELECT ENAME, JOB FROM EMP WHERE JOB = UPPER('Manager');

-- ���� : ��������
-- SELECT�� ���� ORDER BY �÷��� ASC;
-- DNAME(�μ���)�� ������������ �����ϱ� (A->Z)
SELECT * FROM DEPT ORDER BY DNAME ASC;

-- ���� : ��������
-- SELECT�� ���� ORDER BY �÷��� DESC;
-- DNAME(�μ���)�� ������������ �����ϱ� (Z->A)
SELECT * FROM DEPT ORDER BY DNAME DESC;

-- �������� 3. EMP ���̺��� JOB�� 'MANAGER'�� ���� �����͸� �̾Ƽ� ENAME(�����̸�) ������������ �����ϱ�
-- ��������(ASC)�� ��� ���� ����
SELECT * FROM EMP WHERE JOB = UPPER('manager') ORDER BY ENAME ASC;

-- �������� 4. EMP ���̺��� JOB�� 'CLERK'�� ���� �����͸� �̾Ƽ� ENAME ������������ �����ϱ�
SELECT * FROM EMP WHERE JOB LIKE 'C%' ORDER BY ENAME DESC;

-- ��������. EMP ���̺��� JOB�� 'CLERK' �����͸� �̾Ƽ� ENAME, EMPNO ������� �������� ����
-- 2���� �̻� �������� �Ǵ� ���������� �̿��Ϸ��� ���������� �÷��̸� + ����(����)����, �÷��̸� + ����(����)���� ���·� ���
SELECT * FROM EMP WHERE JOB = 'CLERK' ORDER BY ENAME DESC, EMPNO DESC;