create database HortaVertical;
use HortaVertical;

create table Usuarios (
  id int auto_increment primary key,
  nome varchar(100),
  email varchar(100),
  senha varchar(255)
);

create table Horta (
  id int auto_increment primary key,
  usuario_id int,
  nome varchar(50),
  foreign key (usuario_id) references Usuarios(id)
);

create table Estruturas (
  id int auto_increment primary key,
  horta_id int,
  tipo varchar(50),
  quantidade int,  
  foreign key (horta_id) references Horta(id)
);

create table Plantas (
  id int auto_increment primary key,
  horta_id int,
  especie varchar(100),
  quantidade int, 
  foreign key (horta_id) references Horta(id)
);

create table Irrigacao (
  id int auto_increment primary key,
  horta_id int,
  horario time,
  duracao int,
  foreign key (horta_id) references Horta(id)
);

-- Inserções
insert into Usuarios (nome, email, senha) values ('Neilson', 'neilson@email.com', 'senha1234');
insert into Horta (usuario_id, nome) values (1, 'Horta de Neilson');
insert into Estruturas (horta_id, tipo, quantidade) values (1, 'vertical', 1);
insert into Plantas (horta_id, especie, quantidade) values (1, 'Alface', 10);
insert into Irrigacao (horta_id, horario, duracao) values (1, '08:00:00', 15);

-- Atualizações
update Plantas set quantidade = 12 where id = 1;
update Estruturas set quantidade = 1 where id = 1;

-- Remoções
delete from Irrigacao where id = 1;
delete from Plantas where id = 1;
delete from Estruturas where id = 1;

-- Consultas
select * from Plantas where horta_id = 1;
select nome from Horta where usuario_id = 1;


