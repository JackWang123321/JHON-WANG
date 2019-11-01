SELECT a.empno,a.ename,a.deptno,dept.dname
FROM emp as a,emp as b,dept
WHERE a.mgr=b.empno and 
a.hirEdate<b.hirEdate
and a.deptno=dept.deptno;