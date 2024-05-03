Use pnu;
select CONCAT(D.주관학과명,'-', D.sname ) AS Name, A.교과구분, D.sname as 교과목명, D.sno as 교과목번호, A.분반, A.제한인원,C.교수명,A.시간표
from course A, dept B, instructor C, subject D 
WHERE A.dno=B.dno and A.ino=C.ino and A.dno=D.dno and A.sno=D.sno;

SELECT Reverse('010-1111-2222')