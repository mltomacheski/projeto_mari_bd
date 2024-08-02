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
	dia_semana varchar (255),
    posicao_aula varchar (255),
	turma_fk int, foreign key(turma_fk) references turma(pk),
	disciplina_fk int, foreign key(disciplina_fk) references disciplina(pk)
);

insert into professor ( nome,disciplina) values ("Fernanda", "Sociologia");
insert into professor ( nome,disciplina) values ("Jonathan","Geografia");
insert into professor ( nome,disciplina) values ("Karolina","Educação Financeira");
insert into professor ( nome,disciplina) values ("Tiago","Quimica");
insert into professor ( nome,disciplina) values ("Norberto", "Banco de Dados");

update professor set (disciplina= "Sociologia" where pk=0,
