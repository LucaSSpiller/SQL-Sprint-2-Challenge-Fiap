INSERT INTO nk_tb_usuario (ds_email, nm_usuario, ds_senha, nm_sobrenome)
VALUES 
    ('joao@gmail.com', 'João', 'senha123', 'Silva'),
    ('maria@hotmail.com', 'Maria', '123456', 'Souza'),
    ('pedro@yahoo.com', 'Pedro', 'p@ssw0rd', 'Ribeiro'),
    ('ana@gmail.com', 'Ana', 'ana123', 'Fernandes'),
    ('lucas@outlook.com', 'Lucas', 'lucas456', 'Santos');
    
    
INSERT INTO nk_tb_produto (ds_genero, nm_produto, nr_preco)
VALUES 
    ('Masculino', 'Tênis Air Max 270', 549.90),
    ('Feminino', 'Tênis Air Zoom Pegasus 38', 399.99),
    ('Masculino', 'Moletom com Capuz', 149.90),
    ('Feminino', 'Calça Legging Sculpt', 199.90),
    ('Unissex', 'Boné Heritage86', 79.90);
    
    
INSERT INTO nk_tb_categoria (nm_categoria)
VALUES 
		('Corrida'),
   	('SNKRS'),
   	('Futebol'),
   	('Casual'),
   	('Basket'),
   	('Acessorio'),
   	('Skate'),
   	('Natação');
   	
INSERT INTO nk_tb_categoria_produto (id_produto, id_categoria)
VALUES 
   	(1, 1),
		(2, 1),
		(3, 4),
		(4, 1),
		(5, 6);
		
INSERT INTO nk_tb_carrinho (id_produto, id_usuario)
VALUES 
   	(1, 1),
		(2, 5),
		(3, 3),
		(4, 2),
		(5, 4);
		
		
