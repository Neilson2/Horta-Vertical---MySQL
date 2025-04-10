create table Usuarios (
id int auto_increment primary key,
nome varchar(100),
email varchar(100),    -- Tabela Usuario
senha varchar(255)
);

create table Hortas (
id int auto_increment primary key,
usuario_id int,
nome varchar(50),      -- Tabela Horta
foreign key (usuario_id) references Usuarios(id)
);

create table Estruturas (
id int auto_increment primary key,
horta_id int,
tipo varchar(50),  -- Exemplos: 'vertical', 'horizontal'.
foreign key (hora_id) references Hortas(id)
);

create table Plantas (
id int auto_increment primary key,
horta_id int,
especie varchar(100),     -- Tabela Plantas
foreign key (horta_id) references Hortas(id)
);

create table Irrigacao (
id int auto_increment primary key,
horta_id int,
horario time,        -- Tabela Sistema de Irrigação 
duracao int,    -- Ex: Para colocar em Minutos
foreign key (horta_id) references Hortas(id)
);

insert into Usuarios (nome, email, senha) values ('Neilson', 'neilson@email.com', 'senha1234');
insert into Hortas (usuario_id, nome) values (1, 'Horta de Neilson');
insert into Estruturas (horta_id, tipo) values (1, 'vertical');
insert into Plantas (horta_id, especie, quantidade) values (1,'Alface', 10);
insert into Irrigacao (horta_id, horario, duracao) values (1,'08:00:00', 15);

-- Atualizar
update Plantas set quantidade = 12 where id = 1;
update Estruturas set quantidade = 1 where id = 1;

-- Remover
delete from Irrigacao where id = 1;
delete from Plantas where id = 1;
delete from Estruturas where id = 1;

-- Consultar Planta/Horta
select * from Plantas where horta_id = 1;
select nome from Hortas where usuario_id = 1;




