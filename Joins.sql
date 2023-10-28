--Joins Exemplos

---------------------------EQUIJOIN (Igualdade)---------------------------
/*
Equijoin é usado quando voce quer juntar duas tabelas aonde um valor seja correspondente a outro 
Ex: o cd_depto ser igual em ambas as tabelas
*/

-- Este comando funciona em todos os bancos de dados
SELECT F.cd_func
       ,F.cd_depto
       ,D.nm_depto
       ,F.nm_funcionario
       ,F.vl_salario
FROM T_SIP_FUNCIONARIO F INNER JOIN T_SIP_DEPTO D 
       ON (F.cd_depto = D.cd_depto);
       
-- Este comando funciona APENAS em bancos ORACLE
SELECT F.cd_func
       ,F.cd_depto
       ,d.nm_depto
       ,F.nm_funcionario
       ,F.vl_salario
FROM T_SIP_FUNCIONARIO F, T_SIP_DEPTO D 
       WHERE (F.cd_depto = D.cd_depto);
       
       
---------------

SELECT F.cd_func
       ,F.cd_depto
       ,F.nm_funcionario
       ,F.vl_salario
       ,d.id_dependente
       ,d.nm_dependente
FROM T_SIP_FUNCIONARIO F INNER JOIN T_SIP_DEPENDENTE D 
       ON (F.cd_func = D.cd_func);
/*
#################################################################################
*/

---------------------------LEFT JOIN---------------------------

/*
LEFT JOIN ira pegar todos os dados de uma tabela, e quando ela tiver uma correspondecia ela ira exibir se não, sera apenas NULL
*/

SELECT F.cd_func
       ,F.cd_depto
       ,F.nm_funcionario
       ,F.vl_salario
       ,d.id_dependente
       ,d.nm_dependente
FROM T_SIP_FUNCIONARIO F LEFT JOIN T_SIP_DEPENDENTE D 
       ON (F.cd_func = D.cd_func);
       
---------------
SELECT F.cd_func
       ,F.cd_depto
       ,F.nm_funcionario
       ,F.vl_salario
       ,d.nm_dependente
FROM T_SIP_FUNCIONARIO F LEFT JOIN T_SIP_DEPENDENTE D 
       ON (F.cd_func = D.cd_func)
       WHERE D.id_dependente IS NULL;


/*
#################################################################################
*/
---------------------------RIGHT JOIN---------------------------

/*
RIGHT JOIN é que nem o LEFT, porem você pega os valores da outra tabela
*/

SELECT P.nm_projeto
,P.dt_inicio
,P.dt_termino
,E.ds_papel_func_proj
,E.dt_entrada
,E.dt_saida
FROM T_SIP_EXECUCAO_PROJ E RIGHT JOIN T_SIP_PROJETO P
ON (E.cd_projeto = P.cd_projeto);

/*
#################################################################################
*/

---------------------------INNER JOIN---------------------------

/*
INNER JOIN com 3 tabelas
Para peegar informações de qual funcionario trabalhou em qual projeto,e por quanto tempo
*/

SELECT F.cd_func
       ,F.cd_depto
       ,F.nm_funcionario
       ,F.vl_salario
       ,P.nm_projeto
       ,P.dt_inicio
       ,E.ds_papel_func_proj
       ,E.dt_entrada
       ,E.dt_saida
FROM T_SIP_FUNCIONARIO F INNER JOIN T_SIP_EXECUCAO_PROJ E 
       ON (F.cd_func = E.cd_func) INNER JOIN T_SIP_PROJETO P
       ON (E.cd_projeto = P.cd_projeto);
       
/*
#################################################################################
*/

---------------------------FULL JOIN---------------------------

/*
FULL JOIN, é quando voce quer pegar TODOS os dados de ambas as tabelas
*/
SELECT F.cd_func
       ,F.cd_depto
       ,F.nm_funcionario
       ,F.vl_salario
       ,P.nm_projeto
       ,P.dt_inicio
       ,E.ds_papel_func_proj
       ,E.dt_entrada
       ,E.dt_saida
FROM T_SIP_FUNCIONARIO F FULL JOIN T_SIP_EXECUCAO_PROJ E 
       ON (F.cd_func = E.cd_func) FULL JOIN T_SIP_PROJETO P
       ON (E.cd_projeto = P.cd_projeto);
       
---------------     

SELECT F.cd_func
       ,F.cd_depto
       ,F.nm_funcionario
       ,F.vl_salario
       ,P.nm_projeto
       ,P.dt_inicio
       ,E.ds_papel_func_proj
       ,E.dt_entrada
       ,E.dt_saida
FROM T_SIP_FUNCIONARIO F FULL JOIN T_SIP_EXECUCAO_PROJ E 
       ON (F.cd_func = E.cd_func) FULL JOIN T_SIP_PROJETO P
       ON (E.cd_projeto = P.cd_projeto)
       WHERE F.cd_func IS NOT NULL AND P.cd_projeto IS NOT NULL ;

/*
#################################################################################
*/

---------------------------SELF JOIN---------------------------

/*
SELF JOIN, você usa um join na mesma tabela
Neste exemplo, existe a tabela pessoa, aonde cada pessoa tem um codigo do gestor dela, que é uma pessoa na propria tabela
*/

SELECT P.cd_pessoa
        ,P.nm_pessoa
        ,P.ds_papel
        ,P.dt_inicio
        ,G.cd_pessoa "CD_GESTOR"
        ,G.nm_pessoa "NM_GESTOR"
FROM T_PESSOA P LEFT JOIN T_PESSOA G
ON (P.cd_pessoa_gestor = g.cd_pessoa)
ORDER BY P.cd_pessoa;

/*
#################################################################################
*/

---------------------------CROSS JOIN---------------------------

/*
O CROSS JOIN pega ambas as tabelas e junta ela com todas as posições posiveis ele não é realmente muito usado, pois acaba gerando valores "aleatorios"
*/

SELECT F.cd_func
       ,F.cd_depto
       ,D.cd_depto
       ,D.nm_depto
       ,F.nm_funcionario
       ,F.vl_salario
FROM T_SIP_FUNCIONARIO F CROSS JOIN T_SIP_DEPTO D
ORDER BY F.cd_func;