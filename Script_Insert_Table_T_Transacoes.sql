/*
***************************************************************************************|																				 	
|Analista      : Mauricio A. Del Rei												   |
|Data          : 14/07/2018															   |
|Versão		   : 1.0.0																   |
|Objetivo      : Desenvolver uma aplicacao que acesse o banco de dados e gere um       | 
|                arquivo a partir da Tabela de Transacoes.							   |
|				 Geracao de um arquivo com as Transacoes de acordo com a data informada|  
|                como   parametro na execucao da aplicacao;	                           |
|Script		   : Insercao de Registros na Tabela de Transacoes.					 	   |										                   
***************************************************************************************|
*/
BEGIN
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555666677778884,5500,TRUNC(SYSDATE-1),TO_DATE('01/01/1971','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,4012001037141112,6500,TRUNC(SYSDATE-10),TO_DATE('02/02/1972','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,3764490473330055,7500,TRUNC(SYSDATE-2),TO_DATE('03/03/1973','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,3649010246266111,4500,TRUNC(SYSDATE-4),TO_DATE('04/04/1974','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555666677658884,15500,TRUNC(SYSDATE-3),TO_DATE('05/05/1975','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5544666677778884,10500,TRUNC(SYSDATE-11),TO_DATE('06/06/1976','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5533666677778884,3500,TRUNC(SYSDATE-12),TO_DATE('07/07/1977','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5522666677778884,8500,TRUNC(SYSDATE-15),TO_DATE('08/08/1978','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5511666677778884,9500,TRUNC(SYSDATE-10),TO_DATE('09/09/1979','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5500666677778884,25500,TRUNC(SYSDATE-9),TO_DATE('10/10/1980','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555699667777884,11500,TRUNC(SYSDATE-30),TO_DATE('11/11/1971','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555688677778884,2500,TRUNC(SYSDATE-20),TO_DATE('12/12/1972','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555677677778884,3500,TRUNC(SYSDATE-45),TO_DATE('01/02/1973','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555642677778884,4500,TRUNC(SYSDATE-21),TO_DATE('02/03/1974','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555663177778884,5500,TRUNC(SYSDATE-11),TO_DATE('03/04/1975','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555668777778884,23500,TRUNC(SYSDATE-1),TO_DATE('04/05/1976','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555666787778884,11500,TRUNC(SYSDATE-15),TO_DATE('05/06/1977','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555699677778884,14500,TRUNC(SYSDATE-13),TO_DATE('06/07/1978','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555674677778884,1500,TRUNC(SYSDATE-14),TO_DATE('07/08/1979','DD/MM/YYYY'));
INSERT INTO T_TRANSACOES(idTransacao,nm_cartao,valor_transacao,data_transacao,data_nascimento)
		VALUES(SEQ_T_TRANSACOES.NEXTVAL,5555636577778884,6500,TRUNC(SYSDATE),TO_DATE('08/09/1980','DD/MM/YYYY'));		
		--
		IF SQL%ROWCOUNT =1 THEN
			--
			COMMIT;
			DBMS_OUTPUT.PUT_LINE('  DADOS INSERIDO COM SUCESSO!!!! ' || SQL%ROWCOUNT);
			--
		ELSE
			--
			ROLLBACK;
			DBMS_OUTPUT.PUT_LINE(' FALHA AO INSERIR DADOS!!!! ' || SQLERRM || ' - ' || SQLCODE);
			--
		END IF;
EXCEPTION 
	WHEN OTHERS THEN
		ROLLBACK;
		DBMS_OUTPUT.PUT_LINE(' FALHA AO INSERIR DADOS!!!! ' || SQLERRM || ' - ' || SQLCODE);
END;
/
	
 		

 