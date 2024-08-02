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
insert into professor ( nome,cpf) values ("Jorge", "123.456.789-00");
insert into professor ( nome,cpf) values ("Mateus", "123.456.789-00");
insert into professor ( nome,cpf) values ("Jurema", "123.456.789-00");
insert into professor ( nome,cpf) values ("Beatriz", "123.456.789-00");

update professor set (nome= "Jorge" where pk=2,
