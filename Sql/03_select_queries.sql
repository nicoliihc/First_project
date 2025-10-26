use venda_celulares;

/* Consultas */
/* Ver todos os clientes */
SELECT * FROM CLIENTE;

/* Ver todos os celulares disponíveis */
SELECT * FROM CELULAR WHERE status = 'disponível';

/* Ver celulares com preço maior que 5000 */
SELECT * FROM Celular WHERE preco > 5000.00;

/* Ver celulares com estoque menor que 15 unidades */
SELECT * FROM Celular
WHERE quantidade_estoque < 15;

/* Ver pedidos de um cliente específico com o id =1 */
SELECT * FROM Pedido WHERE id_cliente = 1;

/* Ver todos os pagamentos aprovados */
SELECT * FROM Pagamento WHERE status_pagamento = 'aprovado';
