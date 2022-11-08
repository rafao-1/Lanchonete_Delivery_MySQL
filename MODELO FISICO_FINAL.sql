drop database if exists Lanchonete;
create database lanchonete;

create table Lanchonete.Cliente(
	idCliente int,
    nomeCliente varchar(45),
    telefoneCliente varchar(45),
    enderecoLogradouro varchar(45),
    enderecoBairro varchar(45),
    enderecoNum varchar(5),
    primary key(idCliente)
);

create table Lanchonete.Sanduiches(
	idSanduiche int,
    nomeSanduiche varchar(45),
    precoSanduiche decimal(10,2),
    primary key(idSanduiche)
	);

create table Lanchonete.Entregador(
	idEntregador int,
    nomeEntregador varchar(45),
    telefoneEntregador varchar(45),
    primary key(idEntregador)
    );



create table Lanchonete.Pedido(
	idPedido int,
    statusPedido varchar(45),
    dtEmissao varchar(45),
    idCliente int,
    qtdSanduiche int,
    idSanduiche int,
    idEntregador int,
    primary key(idPedido),
	foreign key(idCliente) references Lanchonete.Cliente(idCliente),
    foreign key(idSanduiche) references Lanchonete.Sanduiches(idSanduiche),
    foreign key(idEntregador) references Lanchonete.Entregador(idEntregador)
    );


insert into Lanchonete.Cliente values (1, "Joao Victor", "04198787878787", "Rua Almirante", "Centro", "101");
insert into Lanchonete.Cliente values (2, "Rafael Calixto", "041989898989", "Rua Pessego", "Heliopolis", "171");
insert into Lanchonete.Cliente values (3, "Franciele Borges", "04298777555", "Rua Belo Horizonte", "Jardins", "1005");
insert into Lanchonete.Cliente values (4, "Juliane A", "047555888899", "Rua Maringa", "Gleba", "107");
insert into Lanchonete.Cliente values (5, "Pedro Nadu", "043985452458", "Rua Cersei Lannister", "Alem da Muralha", "008");

insert into Lanchonete.Sanduiches values (1, "X-Miseria", 14.50);
insert into Lanchonete.Sanduiches values (2, "X-Fartura", 25.90);
insert into Lanchonete.Sanduiches values (3, "X-Colosso", 29.90);
insert into Lanchonete.Sanduiches values (4, "X-Bacon Duplo", 26.90);
insert into Lanchonete.Sanduiches values (5, "X-Bacteria", 34.90);

insert into Lanchonete.Entregador values (21, "Guilherme", "0488888888");
insert into Lanchonete.Entregador values (31, "Lucas", "0499999999");
insert into Lanchonete.Entregador values (41, "Vitor", "04389999999");
insert into Lanchonete.Entregador values (51, "Mario", "04387777777");
insert into Lanchonete.Entregador values (61, "Ze", "0438766777");

insert into Lanchonete.Pedido values (1, 1, "25-08-2022", 1, 2, 1, 21);
insert into Lanchonete.Pedido values (5, 0, "24-08-2022", 4, 1, 2, 31);
insert into Lanchonete.Pedido values (6, 2, "26-08-2022", 2, 3, 3, 41);
insert into Lanchonete.Pedido values (7, 1, "26-08-2022", 5, 2, 4, 51);
insert into Lanchonete.Pedido values (10, 2, "25-08-2022", 3, 4, 5, 61);

select * from Lanchonete.Pedido where statusPedido = 0;
    