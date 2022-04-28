-- 검색(R)
-- * : ALL COLUMN (DEPTNO, DNAME, LOC) 출력
--SELECT * FROM DEPT;
SELECT DEPTNO, DNAME, LOC FROM DEPT;
-- 하나의 컬럼만 보기
SELECT DEPTNO FROM DEPT;
-- 다른 컬럼들도 한 개씩 보기
SELECT DNAME FROM DEPT;
SELECT LOC FROM DEPT;

-- 조건에 맞는 데이터 가져오기
-- WHERE [조건절] : 조건 문법
-- DEPT 테이블 안의 DNAME(부서이름)이 'SALES'인 데이터를 가져오기
SELECT DNAME FROM DEPT WHERE DNAME = 'SALES';

-- 연습문제 1. DEPT 테이블의 DEPTNO가 10인 데이터를 가져오기
SELECT DEPTNO FROM DEPT WHERE DEPTNO = 10;

-- WHERE[조건컬럼] LIKE 'S%'
-- 조건컬럼에 S로 시작되는 문자열을 모두 가져오기 (이런 형태 많이 사용함)
SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%';

-- 연습문제 2. EMP 테이블의 JOB에 J로 시작되는 문자열을 가진 데이터를 모두 가져오기
-- SELECT 들어가는 컬럼의 위치에 따라 데이터 출력 순서가 바뀜
SELECT JOB FROM EMP WHERE JOB LIKE 'M%';
-- EMP안의 JOB, ENAME을 들고오는데, (조건문) JOB에서 M으로 시작되는 값만 가져오기.
SELECT JOB, ENAME FROM EMP WHERE JOB LIKE 'M%';
 
-- 내장함수 UPPER/LOWER
-- UPPER : 대문자로 변경 / LOWER : 소문자로 변경
-- DB 테이블 데이터는 대소문자를 별개의 문자열로 인식함
SELECT ENAME, JOB FROM EMP WHERE JOB = UPPER('Manager');

-- 정렬 : 오름차순
-- SELECT문 끝에 ORDER BY 컬럼명 ASC;
-- DNAME(부서명)을 오름차순으로 정렬하기 (A->Z)
SELECT * FROM DEPT ORDER BY DNAME ASC;

-- 정렬 : 내림차순
-- SELECT문 끝에 ORDER BY 컬럼명 DESC;
-- DNAME(부서명)을 내림차순으로 정렬하기 (Z->A)
SELECT * FROM DEPT ORDER BY DNAME DESC;

-- 연습문제 3. EMP 테이블에서 JOB이 'MANAGER'인 값의 데이터를 뽑아서 ENAME(직원이름) 오름차순으로 정렬하기
-- 오름차순(ASC)일 경우 생략 가능
SELECT * FROM EMP WHERE JOB = UPPER('manager') ORDER BY ENAME ASC;

-- 연습문제 4. EMP 테이블에서 JOB이 'CLERK'인 값의 데이터를 뽑아서 ENAME 내림차순으로 정렬하기
SELECT * FROM EMP WHERE JOB LIKE 'C%' ORDER BY ENAME DESC;

-- 도전과제. EMP 테이블에서 JOB이 'CLERK' 데이터를 뽑아서 ENAME, EMPNO 대상으로 내림차순 정렬
-- 2가지 이상 내림차순 또는 오름차순을 이용하려면 순차적으로 컬럼이름 + 오름(내림)차순, 컬럼이름 + 오름(내림)차순 형태로 사용
SELECT * FROM EMP WHERE JOB = 'CLERK' ORDER BY ENAME DESC, EMPNO DESC;