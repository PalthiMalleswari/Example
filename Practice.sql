select Fname,Lname,Depname,d.Sex from employee e,dependent d
  where e.SSN=d.ESSN and d.Sex=e.Sex;
select s.Sname,s.sID from sailors s,reseves r1,boat b1, 
										reseves r2,boat b2
     where s.sID=r1.sID and r1.BoatID=b1.BoatID and b1.Boatcol='Red' and
		   s.sID=r2.sID and r2.BoatID=b2.BoatID and b2.Boatcol='Green';
select s.Sname,s.sID from sailors s,reseves r1,boat b1, 
										reseves r2,boat b2
     where (s.sID=r1.sID and r1.BoatID=b1.BoatID and b1.Boatcol='Red')-
		   (s.sID=r2.sID and r2.BoatID=b2.BoatID and b2.Boatcol='Green');
select w.Pnum,p.PName,count(*) as count from workson w,project p where p.PNumber=w.Pnum
   group by PName ;
select e.Fname,e.Lname,e.Salary from employee e inner join
  (select dno,max(Salary) as MaxSal from employee group by dno) as e2
  on e.dno=e2.dno and e.Salary=e2.MaxSal;
