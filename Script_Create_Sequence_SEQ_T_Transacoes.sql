/*
***************************************************************************************|																				 	
|Analista      : Maurício A. Del Rei												   |
|Data          : 14/07/2018															   |
|Versão		   : 1.0.0																   |
|Objetivo      : Desenvolver uma aplicacao que acesse o banco de dados e gere um       | 
|                arquivo a partir da Tabela de Transacoes.							   |
|				 Geracao de um arquivo com as Transacoes de acordo com a data informada|  
|                como   parametro na execucao da aplicacao;	                           |
|Script		   : Criacao de Sequence da Tabela de Transacoes.					 	   |																                   
***************************************************************************************|
*/

CREATE SEQUENCE SEQ_T_TRANSACOES
MINVALUE	1
MAXVALUE	9999
START WITH  1
NOCYCLE
NOCACHE;
/