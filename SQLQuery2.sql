
select dateadd(day,5,'2026-01-01')

select dateadd(month,-1,'2026-01-01')

select datediff(day,'2026-01-01','2026-01-10')

select datediff(MONTH,'2026-01-01','2026-06-15')-1

select datename (WEEKDAY,getdate())

select datename (mm,getdate())

select year('2026-01-01') as ext_year
select month('2026-05-25')as ext_mon
select day('2026-10-13') as ext_day

select eomonth('2026-10-13') as month_end

select dateadd(day,1,eomonth('2026-10-13',-1))as month_start

select cast(getdate() as date ) as to_date, cast(getdate() as time) as pre_time

select datename(weekday,getdate()) as today_day,datename(month,getdate()) as curr_month

declare @dt datetime = getdate();

select convert(date,@dt,126)
select convert(varchar,@dt,126) 

select @@CONNECTIONS

select @@lock_timeout

select @@CPU_BUSY

select @@SERVERNAME

select @@PACK_RECEIVED

select @@PACK_SENT

select @@PACKET_ERRORS

select @@SPID as 'session_id', SYSTEM_USER as 'login',user as 'user_name'

select iif(1!=1,'null','not null')

select convert(date,'31-12-2025',105)

select try_convert(date,'31-12-25',105)


exec sp_addtype city,'nvarchar(30)', null;

exec sp_droptype city;

alter table city_detials
drop column city_name,state_name

alter table city_detials
add  city_name varchar(30),state_name varchar(30)

if object_id('city_detials','U') is not null
begin 
  drop table city_detials
end;
go


create table city_detials
(
   city_id int identity (1,1) primary key not null,
   city_code int not null,
   city_name varchar(30) ,
   city_pin_code int not null,
   state_id int not null,
   state_name varchar(30)
)
 

 select * from city_detials
