show tables;

create table USERS (
	id int,
	name varchar(255),
	lastname varchar(255),
	username varchar(20),
	pass varchar(100),
	tipDoc char(5),
	nroDoc varchar(20),
	enable int
)
/*Añadimos id como primary key*/
alter table USERS add primary key (id) ;

/*Hacemos el campo id autoincremental y que no permita registros null*/
ALTER TABLE moduloseg.users MODIFY COLUMN ID int(11) DEFAULT NULL auto_increment NOT NULL;



/*Insertar*/

insert into USERS (name, lastname,username,pass,tipDoc,nroDoc,enable)
values ('Jesus', 'Zuniga','DNI73267572','123456','DNI','73267572',1);

insert into USERS (name, lastname,username,pass,tipDoc,nroDoc,enable)
values ('Maria', 'Santillan','DNI46299021','123456','DNI','46299021',1);


/*Actualizar*/
update USERS set name='Mariana' where username ='DNI46299021';

/*Eliminar*/
delete from USERS where username ='DNI73267572';


/*Consultar*/
select * from USERS