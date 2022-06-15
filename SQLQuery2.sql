create database DW;
use DW;
create table dateV(
			CodeDate varchar(30) not null primary key,
			Jour varchar(30) not null ,
			Mois varchar(30) not null,
			Annee varchar(30) not null);
create table Destination(
			CodeDes varchar(30) not null primary key,
			Hotel varchar(30) not null ,
			Ville varchar(30) not null,
			Pays varchar(30) not null);

create table client(
			CodeClient varchar(30) not null primary key,
			Nom varchar(30) not null ,
			Age int not null,
			NbreEnfant int not null,
			ville varchar(30) not null,
			Pays varchar(30) not null,
			Revenu float not null);

create table compagnieA(
			CodeCom varchar(30) not null primary key,
			Nom varchar(30) not null ,
			Pays varchar(30) not null,
			);

create table voyage(
			CodeDate varchar(30),
			CodeCom varchar(30),
			CodeClient varchar(30),
			CodeDes varchar(30),
			Montant float not null,
			NbreJour int not null,
			foreign key (CodeDate) references dateV(CodeDate),
			foreign key (CodeCom) references compagnieA(CodeCom),
			foreign key (CodeClient) references client(CodeClient),
			foreign key (CodeDes) references destination(CodeDes));



			);