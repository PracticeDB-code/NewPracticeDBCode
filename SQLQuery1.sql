select * from sys.tables;

create database practice
on
(
 name = 'practice_DB',
 filename = 'E:\Practice_SQL_Data\Practice_data.mdf',
 size     = 50MB,
 filegrowth = 10MB
)
log on
(
name = 'practice_DB_log',
filename = 'E:\Practice_SQL_Data\Practice_data.ldf',
size = 20MB,
filegrowth = 5MB
)

select * from sys.databases where name in  ('practice_DB','practice_DB_log')

SELECT name
FROM sys.databases
WHERE name = 'practice';

select db_name()

use practice
go

exec sp_helpdb;

dbcc sqlperf(logspace)