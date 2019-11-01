SELECT  a.*,
concat((a.zz-b.zz)/b.zz*100,"%")
AS '年度利润比'
FROM yearprofit as a left join 
yearprofit as b 
on a.year=b.year+1;
