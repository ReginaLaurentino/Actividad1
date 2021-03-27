create database Actividad_1_2_A
go

use Actividad_1_2_A
go


/*Para la relación 1:1 creamos 2 tablas productos y codigo donde la relación es complementaria */
/*PENSAMOS EN CENCOSUD QUE TIENE VARIAS CADENAS, EN LA TABLA DE CODIGO SE CARGARIA LOS DATOS DEL PRODUCTO Y SE ASIGNARIA A QUE CADENA CORREPSONDEN Y EN PRODUCTOS SERIA LOS DATOS QUE APARECIA AL PASAR DICHO PRODUCTO POR LA CAJA. */

create table Codigo(
CodBarra int not null primary key,
CodigoInterno int not null, 
Origen varchar(30) not null check(Origen= 'Argentina' or Origen= 'Chile' or Origen= 'Brasil' ) ,
Stock int not null,
Cadena varchar(30) not null check(Cadena='Jumbo' or Cadena='Vea' or Cadena='Disco')

)
go

create table Producto(
CodBarra  int not null primary key foreign key references Codigo(CodBarra), 
Descripcion varchar(30) not null,
unidades tinyint not null,
precio money not null

)
go