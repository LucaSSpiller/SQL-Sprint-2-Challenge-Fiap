CREATE DATABASE nike;
USE nike;

DROP TABLE NK_TB_USUARIO;
DROP TABLE NK_TB_PRODUTO;
DROP TABLE NK_TB_CATEGORIA;
DROP TABLE NK_TB_CATEGORIA_PRODUTO;
DROP TABLE NK_TB_CARRINHO;

create table nk_tb_categoria
(
    id_categoria BIGINT       not NULL		AUTO_INCREMENT
        primary key,
    nm_categoria VARCHAR(30) not null,
    constraint UN_NM_CATEGORIA
        unique (nm_categoria)
);

create table nk_tb_produto
(
    id_produto BIGINT                               not NULL		AUTO_INCREMENT
        primary key,
    ds_genero  enum ('FEMININO', 'MASCULINO', 'UNISSEX') not null,
    nm_produto VARCHAR(50)                             not null,
    nr_preco   float                                    not null
);

create table nk_tb_categoria_produto
(
    id_produto   BIGINT not NULL,
    id_categoria bigint not null,
    primary key (id_produto, id_categoria),
    constraint FK_CATEGORIA
        foreign key (id_categoria) references nk_tb_categoria (id_categoria),
    constraint FK_PRODUTO
        foreign key (id_produto) references nk_tb_produto (id_produto)
);

create table nk_tb_usuario
(
    id_usuario   BIGINT      not NULL		AUTO_INCREMENT
        primary key,
    ds_email     VARCHAR(30) not null,
    nm_usuario   VARCHAR(30) not null,
    ds_senha     VARCHAR(30) not null,
    nm_sobrenome VARCHAR(30) not null,
    constraint UK_EMAIL
        unique (ds_email)
);

create table nk_tb_carrinho
(
    id_carrinho BIGINT not NULL		AUTO_INCREMENT
        primary key,
    id_produto  bigint not null,
    id_usuario  bigint not null,
    constraint FK_PRODUTO_CARRINHO
        foreign key (id_produto) references nk_tb_produto (id_produto),
    constraint FK_USUARIO_CARRINHO
        foreign key (id_usuario) references nk_tb_usuario (id_usuario)
);

create table sq_categoria
(
    next_not_cached_value bigint(21)          not null,
    minimum_value         bigint(21)          not null,
    maximum_value         bigint(21)          not null,
    start_value           bigint(21)          not null,
    increment             bigint(21)          not null,
    cache_size            bigint(21) unsigned not NULL,
    cycle_option          tinyint(1) unsigned not null,
    cycle_count           bigint(21)          not null,
);

create table sq_produto
(
    next_not_cached_value bigint(21)          not null,
    minimum_value         bigint(21)          not null,
    maximum_value         bigint(21)          not null,
    start_value           bigint(21)          not null,
    increment             bigint(21)          not null,
    cache_size            bigint(21) unsigned not null,
    cycle_option          tinyint(1) unsigned not null,
    cycle_count           bigint(21)          not null,
);

create table sq_usuario
(
    next_not_cached_value bigint(21)          not null,
    minimum_value         bigint(21)          not null,
    maximum_value         bigint(21)          not null,
    start_value           bigint(21)          not NULL,
    increment             bigint(21)          not NULL,
    cache_size            bigint(21) unsigned not null,
    cycle_option          tinyint(1) unsigned not NULL,
    cycle_count           bigint(21)          not null
); 
