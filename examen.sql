create database if not exists Pizza_fiesta; 

use Pizza_fiesta;


create table if not exists cliente (
	id_cliente int auto_increment primary key,
	nombre_cliente varchar(100) not null,
	numero_contacto int not null,
	direccion varchar(100)
);

create table if not exists menu(
	id_menu int auto_increment primary key,
	pizzas int not null,
	bebidas int not null,
	extras int not null,
	combos int not null,
	foreign key (pizzas) references pizza(id_pizza),
	foreign key (bebidas) references bebida(id_bebida),
	foreign key (extras) references extra(id_extra),
	foreign key (combos) references combo(id_combo)
);


create table if not exists pizza(
	id_pizza int auto_increment primary key,
	pizza varchar(50) not null,
	ingredientes varchar(100) not null,
	tamaño enum("pequeña", "mediana", "grande") not null,
	precio int not null
);


create table if not exists bebida(
	id_bebida int auto_increment primary key,
	bebida varchar(50) not null,
	tamaño enum("pequeña", "mediana", "grande") not null,
	precio int not null
);


create table if not exists extra(
	id_extra int auto_increment primary key,
	extra varchar(50) not null,
	cantidad int not null
);


create table if not exists combo(
	id_combo int auto_increment primary key,
	combo varchar (100) not null,
	precio int not null
);


create table if  not exists pedido(
	id_pedido int auto_increment primary key,
	cliente int not null,
	pizza int,
	bebida int,
	extra int,
	combo int,
	precio int not null,
	foreign key (cliente) references cliente(id_cliente),
	foreign key (pizza) references menu(id_menu),
	foreign key (bebida) references menu(id_menu),
	foreign key (extra) references menu(id_menu),
	foreign key (combo) references menu(id_menu)
);


insert into combo(combo, precio) values
("pizza de queso pequeña-coca cola pequeña", 22);

select * from combo;



# Consultas
1. **Registrar un nuevo cliente:**


insert into cliente(nombre_cliente, numero_contacto, direccion) values
("Juan", 319, "calle 57 N 42-03");

select * from cliente;

2. **Agregar un nuevo producto (pizza) al menú:**



insert into pizza(pizza, ingredientes, tamaño, precio ) values
("pizza de queso", "queso", "pequeña", 20),
("pizza de queso", "queso", "mediana", 40),
("pizza de queso", "queso", "grande", 60);

select * from pizza;


3. **Registrar una bebida en el menú:**



insert into bebida(bebida, tamaño, precio ) values
("coca cola", "pequeña", 2),
("coca cola", "mediana", 4),
("coca cola", "grande", 6);

select * from bebida;



4. **Agregar un ingrediente a la base de datos:**


insert into extra(extra, cantidad) values
("queso", 1),
("queso", 2),
("queso", 3);

select * from extra;



5. **Crear un pedido para un cliente:**



insert into pedido(cliente, pizza, bebida, extra, combo, precio) values

select * from menu;

6. **Añadir productos a un pedido específico:**



```sql



```



7. **Añadir ingredientes adicionales a una pizza en un pedido:**



```sql



```



8. **Consultar el detalle de un pedido (productos y sus ingredientes):**



```sql



```



9. **Actualizar el precio de una pizza en el menú:**



```sql



```



10. **Actualizar la dirección de un cliente:**



```sql



```



11. **Eliminar un producto del menú (bebida):**



```sql



```



12. **Eliminar un ingrediente de la base de datos:**



```sql



```



13. **Consultar todos los pedidos de un cliente:**



```sql



```



14. **Listar todos los productos disponibles en el menú (pizzas y bebidas):**



```sql



```



15. **Listar todos los ingredientes disponibles para personalizar una pizza:**



```sql



```



16. **Calcular el costo total de un pedido (incluyendo ingredientes adicionales):**



```sql



```



17. **Listar los clientes que han hecho más de 5 pedidos:**



```sql



```



18. **Buscar pedidos programados para recogerse después de una hora específica:**



```sql



```



19. **Listar todos los combos de pizzas con bebidas disponibles en el menú:**



```sql



```



20. **Buscar pizzas con un precio mayor a $100:**



```sql



```



21. calcular el total de ingresos por día, semana y mes. 



**Ingresos por Día:**



```sql



```



**Ingresos por Semana:**



```sql



```



**Ingresos por Mes:**



```sql



```































