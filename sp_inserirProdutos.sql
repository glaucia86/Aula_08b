-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `sp_inserir_produto` 
(
	in p_nome_produto 		nvarchar(50)	,
	in p_preco_produto 		decimal(18,2)	,
	in p_data_compra		date			,
	in p_garantia			nvarchar(50)	,
	in p_entrega			nvarchar(10)	,
	in p_info_adicionais	nvarchar(100)
)
BEGIN

	insert into produto 
	(
		Nome_Produto		,
		Preco_Produto		,
		Data_Compra			,
		Garantia			,
		Entrega				,
		Info_Adicionais		
	)
	values 
	(
		p_nome_produto		,
		p_preco_produto		,
		p_data_compra		,
		p_garantia			,
		p_entrega			,
		p_info_adicionais	
	
	);
END