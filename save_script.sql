create database prova;

use prova;

create table professor(
	pk int not null, primary key(pk),
    nome varchar(255) not null, 
    disciplina varchar (255)
);

create table agenda_professor(
	pk int not null, primary key(pk),
    disciplina varchar (255),
	horario_aula varchar (255),
	aula_dia int,
	professor_fk int, foreign key(professor_fk) references professor(pk)
);

create table turma(
	pk int not null, primary key(pk),
    horario int ,
	capacidade int 
    );

create table disciplina(
	pk int not null, primary key(pk),
	nome varchar(255) not null, 
	professor varchar (255),
    carga_horaria_total varchar (255),
	professor_fk int, foreign key(professor_fk) references professor(pk),
    turma_fk int, foreign key(turma_fk) references turma(pk)
);

create table grade_curricular(
	pk int not null, primary key(pk),
	carga_horaria_total varchar (255),
	turma_fk int, foreign key(turma_fk) references turma(pk),
	agenda_professor_fk int, foreign key(agenda_professor_fk) references agenda_professor(pk)
);



