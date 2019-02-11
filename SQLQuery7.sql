/* This statement is getting an employee count for a big shot named Ali*/
use [New class]
Select  deptid, count(*) DeptEmpcnt
From	emp
Where	empid = 1
And		empname = 'Ali'
Group by	deptid
Having	count(*) > 1
order by	deptid

If @Novedea = 'Y'
Begin	
Select  deptid, count(*) DeptEmpcnt
From	emp
Where	empid = 1
And		empname = 'Ali'
Group by	deptid
Having	count(*) > 1
order by	deptid
If	@Goodstudent = 'Y'
begin
select	*
from	emp
End
End