create database prova_bd;

use prova_bd;

create table professor(
	pk int not null auto_increment, primary key(pk),
    nome varchar(255) not null, 
    cpf varchar (45) not null
);

create table disciplina(
	pk int not null auto_increment, primary key(pk),
	nome varchar(255) not null, 
    carga_horaria int,
	professor_fk int, foreign key(professor_fk) references professor(pk)
);

create table turma(
	pk int not null auto_increment, primary key(pk),
    nome varchar(255) ,
	sala varchar(10) 
    );

create table horario(
	pk int not null auto_increment, primary key(pk),
	dia_semana date,
    posicao_aula varchar (255),
	turma_fk int, foreign key(turma_fk) references turma(pk),
	disciplina_fk int, foreign key(disciplina_fk) references disciplina(pk)
);

insert into professor ( nome,cpf) values ("Fernanda", "123.456.789-00");
insert into professor ( nome,cpf) values ("Jorge", "014-615-639-09");
insert into professor ( nome,cpf) values ("Mateus", "357-985-632-87");
insert into professor ( nome,cpf) values ("Jurema", "654-987-428-90");
insert into professor ( nome,cpf) values ("Beatriz", "145-458-783-33");

update professor set nome= "Fernanda" where pk=2;

select * from professor;

insert into disciplina ( nome,carga_horaria,professor_fk) values ("Física", "1", "2");

