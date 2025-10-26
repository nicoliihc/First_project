USE venda_celulares;

/* insercao de dados nas tabelas */
INSERT INTO Cliente (nome, cpf, telefone, email, endereco) VALUES
('Caio Silva', '123.456.789-00', '(11) 98765-4321', 'caio.silva@email.com', 'Av Mazzei, 123, São Paulo-SP'),
('Maria Santos', '987.654.321-00', '(13) 97654-3210', 'maria.santos@email.com', 'Rua Leonardo Nunes, 456, São Vicente-SP'),
('Tiago Oliveira', '456.789.123-00', '(21) 96543-2109', 'tiago.oliveira@email.com', 'Rua Copacabana, 789, Rio de Janeiro-RJ');

INSERT INTO Vendedor (nome, cpf, telefone, email, comissao_percentual) VALUES
('Carlos', '111.222.333-44', '(11) 91554-5678', 'carlos.vendedor@loja.com', 5.00),
('Ana', '555.666.777-88', '(11) 92345-5589', 'ana.consultora@loja.com', 4.50),
('José', '999.808.777-66', '(11) 93456-7550', 'jose.gerente@loja.com', 6.00);

INSERT INTO Celular (marca, modelo, armazenamento, cor, preco, quantidade_estoque, status) VALUES
('Samsung', 'Galaxy S25 ultra', '256GB', 'Preto', 7999.00, 16, 'disponível'),
('Apple', 'iPhone 15 Pro', '512GB', 'Titânio', 8999.00, 0, 'indisponível'),
('Xiaomi', 'Redmi Note 13', '128GB', 'Azul', 1599.00, 0, 'indisponível'),
('Motorola', 'Edge 40', '256GB', 'Verde', 2799.00, 12, 'disponível'),
('Samsung', 'Galaxy A54', '128GB', 'Branco', 2199.00, 20, 'disponível');

INSERT INTO Pedido (id_cliente, id_vendedor, id_celular, data_pedido, valor_total, status_pedido) VALUES
(1, 1, 1, '2025-10-25', 4999.00, 'confirmado'),
(2, 2, 2, '2025-09-25', 8999.00, 'entregue'),
(3, 1, 3, '2025-05-24', 1599.00, 'pendente');

INSERT INTO Pagamento (id_pedido, forma_pagamento, valor_pago, data_pagamento, status_pagamento) VALUES
(1, 'cartão crédito', 4999.00, '2025-10-20', 'aprovado'),
(2, 'PIX', 8999.00, '2025-10-21', 'aprovado'),
(3, 'Débito', 1599.00, '2025-10-22','pendente');