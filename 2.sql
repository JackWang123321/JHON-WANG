SELECT a.name, b.name
FROM emp as a, emp as b
WHERE a.mgr=b.deptno;

SELECT a.ename,b.ename
FROM emp as a left join emp as b
on a.mgr=b.empno;

SELECT a.ename,
ifnull(b.ename,'老板'),
FROM emp as a left  join emp as b
on a.mgr=b.empno;