Select	StudentClass, Avg (Testscore) Average
From	Student
group by	StudentClass

Select	studentclass, count (studentclass) Noofstudent
from	Student
Group by	studentclass

select	StudentClass, min (studentage) MinAge, Max(studentage) MaxAge
From	Student
group by	StudentClass