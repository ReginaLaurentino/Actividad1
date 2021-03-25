create database Actividad_1_2_C
go

use Actividad_1_2_C
go


/*Creamos una tercera tabla para la relación entre empleados y sucursales*/

create table Empleados(
CodEmpleado smallint not null primary key, 
DNI int not null unique,
Nombre varchar(30) not null,
Apellido varchar(30) not null
)
go

create table Sucursales(
CodSucursal smallint not null primary key,
Nombre varchar(30) not null,

)
go

create table Horarios( 
CodEmpleado smallint not null  foreign key references Empleados(CodEmpleado), 
CodSucursal smallint not null foreign key references Sucursales(CodSucursal),
turno varchar(6) not null check(turno='tarde' or turno='mañana'),  
dia date not null 

)
go

		
