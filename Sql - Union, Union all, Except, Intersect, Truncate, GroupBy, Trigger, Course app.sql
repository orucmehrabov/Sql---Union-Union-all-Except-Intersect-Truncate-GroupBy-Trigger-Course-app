CREATE TABLE Persons (
    PersonID int IDENTITY PRIMARY KEY,
    FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255),
    City varchar(255)
);

DROP TABLE Persons;


create database Course

use Course

create table Employees(
[Id] int primary key identity(1,1),
[FullName] nvarchar(100),
[Age] int
)


create table Parents(
[Id] int primary key identity(1,1),
[FullName] nvarchar(100),
[Age] int
)

select * from Employees
union
select * from Parents


select * from Employees
union all
select * from Parents



select * from Employees
intersect
select * from Parents



select * from Employees
except
select * from Parents



truncate table Employees


select COUNT(*) Age
From Employees
Group By Age;



declare @number int
set @number=1
while (@number <= 10)
begin
print 'Number is =' + convert(nvarchar,(@number))
set @number = @number + 1
end



select GETDATE()


create table EmployeeLogs(
[Id] int primary key identity(1,1),
[EmployeeId] int,
[Operation] nvarchar(100),
[Date] datetime
)



-- create trigger trg_writeLogAfterCreate on Employees
-- after insert
-- as
-- begin
-- insert into EmployeeLogs([EmployeeId],[Operation],[Date])
-- select [Id],'Insert',GETDATE() from inserted
-- end


insert into Employees([FullName],[Age])
values('Mehrabov Oruj',26)


select * from Employees
select * from EmployeeLogs




-- CREATE TRIGGER trg_writeLogAfterEdit on Employees
-- after update
-- as
-- BEGIN
-- insert into EmployeeLogs([EmployeeId],[Operation],[Date])
-- select [Id],'Update',GETDATE() from deleted
-- END


update Employees
set [Age] = 29
where [Id] = 2


select * from Employees
select * from EmployeeLogs



select * from EmployeeLogs where [Operation] = 'Update'
order by [Date] desc





create table EmployeeDatas(
[Id] int primary key identity(1,1),
[FullName] nvarchar(100),
[OldAge] int,
[NewAge]int,
[Operation] nvarchar(100),
[Date] datetime
)

select * from EmployeeDatas



-- create trigger trg_writeLogAfterEditAge on Employees
-- after update
-- as
-- begin
-- declare @oldAge int = (select [Age] from Employees  where [Id] = 2)
-- insert into EmployeeDatas([FullName],[OldAge],[NewAge],[Operation],[Date])
-- select [FullName],[OldAge],[NewAge],'Update',GETDATE() from deleted
-- end

update Employees
set [Age]= 26
where [Id]= 2


create table Sportmans(
[Id] int primary key identity(1,1),
[Email] nvarchar(100)
)

select * from Sportmans


create table SportmansLog(
[Id] int primary key identity(1,1),
[oldEmail] nvarchar(100),
[newEmail] nvarchar(100),
[Operation] nvarchar(100),
[Date] datetime
)


select * from SportmansLog


-- create trigger trg_writeLogAfterEditEmail on Sportmans
-- after update
-- as
-- begin
-- declare @oldEmail nvarchar(100) = (select [Email] from  deleted)
-- declare @newEmail nvarchar(100) = (select [Email] from  inserted)
-- insert into SportmansLog ([oldEmail],[newEmail],[Operation],[Date])
-- values (@oldEmail, @newEmail,'Update',GETDATE())
-- end



update Sportmans
set [Email] = 'mehrabov@gmail.com'
where [Id] = 1


select * from Sportmans
select * from SportmansLog