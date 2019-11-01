select ename
from emp
where sal>
ALl (select sal from emp where deptno=30);

/*
select ename,sal,dept.dname
from emp left join dept
on emp.deptno=dept.deptno
where sal>(select MAX(sal) from emp where deptno=30);*/