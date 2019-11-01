select ename,dname
FROM emp
left join dept 
on emp.deptno=dept.deptno 
where job=(select job from emp where ename="庞统");
