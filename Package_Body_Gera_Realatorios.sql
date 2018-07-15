/*
***************************************************************************************|																				 	
|Analista      : Mauricio A. Del Rei												   |
|Data          : 14/07/2018															   |
|Versão		   : 1.0.0																   |
|Objetivo      : Desenvolver uma aplicacao que acesse o banco de dados e gere um       | 
|                arquivo a partir da Tabela de Transacoes.							   |
|				 Geracao de um arquivo com as Transacoes de acordo com a data informada|  
|                como   parametro na execucao da aplicacao;	                           |
|Script		   : Criacao da Package Body.					 						   |										                   
***************************************************************************************|
*/
CREATE OR REPLACE PACKAGE BODY PKG_GERA_RELATORIO IS

PROCEDURE p_transacoes(p_data_transacao  T_TRANSACOES.data_transacao%TYPE)IS
--
  CURSOR c1
  IS

    SELECT T.NM_CARTAO,
		   T.VALOR_TRANSACAO,
		   T.DATA_NASCIMENTO
    FROM   T_TRANSACOES T
    WHERE  DATA_TRANSACAO=p_data_transacao;
  r1 c1%rowtype;
  --
  meu_arquivo utl_file.file_type;
  --
BEGIN
  --
  meu_arquivo := utl_file.fopen('C:\Conductor','relatorio_transacoes.txt', 'w');
  --
  OPEN c1;
  --
  LOOP
    FETCH c1 INTO r1;
    EXIT
  WHEN c1%notfound;
    utl_file.put_line(meu_arquivo,
									'NUMERO DO CARTAO  ' || ' : ' || r1.NM_CARTAO ||
									'VALOR DA TRANSACAO  ' || LPAD(r1.VALOR_TRANSACAO, 11, '0') || ' : ' ||
									'DATA DE NASCIMENTO  ' || TO_CHAR(r1.DATA_NASCIMENTO,'DDMMYYYY'));
  END LOOP;
  --
  CLOSE c1;
  --
  utl_file.fclose(meu_arquivo);
  --
EXCEPTION
	--
	WHEN utl_file.invalid_path THEN
		utl_file.fclose(meu_arquivo);
		dbms_output.put_line ('Caminho ou nome do arquivo válido');
	WHEN utl_file.invalid_mode THEN
		utl_file.fclose(meu_arquivo);
		dbms_output.put_line ('Modo de abertura inválido');
END;
/
