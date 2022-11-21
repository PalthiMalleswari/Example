select distinct age from sailors ;
select Sname,Address,Srating from sailors where Srating>8;
select Sname,Srating,age from sailors where Srating>7 and age between 25 and 35;
select BoatName,Boatcol from boat ;
select BoatName,Boatcol from boat where Boatcol='Red';
select Sname from sailors where Sname like '____';
select Sname,Address from sailors where Sname like 'R%o';
select Sname from sailors where Sname like '___%'; 
select Sname from sailors where length(Sname)<=6;
select Sname,BoatID from sailors s join reseves r on s.sID=r.sID where BoatID=203;
select Sname,s.sID,b.BoatID,Boatcol from sailors s join (reseves r join boat b on r.BoatId=b.BoatID)
       on s.sID=r.sID where Boatcol='Red';

select b.Boatcol,b.BoatID,s.Sname from Boat b join (reseves r join sailors s on r.sId=s.sID and
        s.Sname='Rajesh')
       on b.BoatID=r.BoatID;
 
select a.Sname,a.sID,a.NoOfBoats from(
        select s.Sname,s.sID,count(r.BoatID) as NoOfBoats from 
		sailors s join reseves r on s.sID=r.sID
          group by s.sID)as a where NoOfBoats>1;
select s.Sname,s.sID,count(r.BoatID) as NoOfBoats from 
		sailors s join reseves r on s.sID=r.sID
          group by s.sID;
          
 select avg(Salary) as avg_of_All from sailors;     
 select sum(Salary) as SumOfSal,avg(Salary) as AvgOfSal from
       sailors where Srating=11;
      ---- group by sID;
select Srating,count(sID)as NoOfSailors from sailors group by Srating;

select count(sID) from sailors;
---- select age from sailors where age>min(age);
select Sname,sID,age,Srating
   from sailors s where age>(select min(age) from sailors) or Srating=7;

select  Sname,sID,Boatcol from sailors s,reseves r,boat b where
      r.BoatID=b.BoatID and Boatcol='Red' or Boatcol='Green'and s.sID=r.sID;




select s.Sname,s.sID from sailors s,reseves r1,boat b1, 
										reseves r2,boat b2
     where s.sID=r1.sID and r1.BoatID=b1.BoatID and b1.Boatcol='Red' and
		   s.sID=r2.sID and r2.BoatID=b2.BoatID and b2.Boatcol='Green';

          
          
          
          
