SELECT job, count(*)
FROM emp
WHERE Sal>15000
GROUP  BY job;