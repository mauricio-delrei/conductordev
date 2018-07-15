/*
***************************************************************************************|																				 	
|Analista      : Mauricio A. Del Rei												   |
|Data          : 14/07/2018															   |
|Versão		   : 1.0.0																   |
|Objetivo      : Desenvolver uma aplicacao que acesse o banco de dados e gere um       | 
|                arquivo a partir da Tabela de Transacoes.							   |
|				 Geracao de um arquivo com as Transacoes de acordo com a data informada|  
|                como   parametro na execucao da aplicacao;	                           |
|Script		   : Criacao da Tabela de Transacoes.					 													   |										                   
***************************************************************************************|
*/
CREATE TABLE T_TRANSACOES
(
	idTransacao 	    INTEGER		Primary Key,	
	nm_cartao 			NUMBER  			   ,
	valor_transacao 	NUMBER(9,2)            ,
	data_transacao      Date                   ,
	data_nascimento		Date
);



COMMENT ON TABLE T_TRANSACOES IS 'Tabela de Transacoes para Geracao de Arquivos';

COMMENT ON COLUMN T_TRANSACOES.idTransacao     IS 'Identificador da Tabela de Transacao';
COMMENT ON COLUMN T_TRANSACOES.nm_cartao       IS 'Número do Cartao do Cliente';
COMMENT ON COLUMN T_TRANSACOES.valor_transacao IS 'Valor de Cada Transacao Realizada';
COMMENT ON COLUMN T_TRANSACOES.data_transacao  IS 'Data da Transacao';
COMMENT ON COLUMN T_TRANSACOES.data_nascimento IS 'Data de Nascimento do Cliente';
/