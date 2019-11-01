/*SELECT a.ename,dept.dname,b.empno,s.grade
FROM emp as a,dept,emp as b,salgrade as s
WHERE a.sal>
(select avg(sal) from emp)
and a.deptno=dept.deptno
and a.mgr=b.empno
and a.sal between s.losal and s.hisal;*/

select a.ename,dept.dname,b.empno,s.grade
FROM emp as a LEFT JOIN dept
ON a.deptno=dept.deptno
LEFT JOIN emp as b
ON a.mgr=b.ename
LEFT JOIN salgrade as s
ON a.sal BETWEEN s.losal AND s.hisal
WHERE a.sal>(select avg(sal) from emp);
