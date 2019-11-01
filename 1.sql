SELECT a.empno,a.ename,a.deptno 
FROM emp as a,emp as b
WHERE a.mgr=b.empno and 
a.hirEdate<b.hirEdate;