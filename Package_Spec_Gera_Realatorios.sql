/*
***************************************************************************************|																				 	
|Analista      : Mauricio A. Del Rei												   |
|Data          : 14/07/2018															   |
|Versão		   : 1.0.0																   |
|Objetivo      : Desenvolver uma aplicacao que acesse o banco de dados e gere um       | 
|                arquivo a partir da Tabela de Transacoes.							   |
|				 Geracao de um arquivo com as Transacoes de acordo com a data informada|  
|                como   parametro na execucao da aplicacao;	                           |
|Script		   : Criacao da Package Specificaton.					 				   |										                   
***************************************************************************************|
*/
CREATE OR REPLACE PACKAGE PKG_GERA_RELATORIO IS

PROCEDURE p_transacoes(p_data_transacao  T_TRANSACOES.data_transacao%TYPE);
--
END PKG_GERA_RELATORIO;
/