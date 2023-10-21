--Usando Selects.

--Sintaxe
SELECT * FROM T_SIP_FUNCIONARIO;

------------


SELECT T_SIP_FUNCIONARIO.cd_func FROM T_SIP_FUNCIONARIO;

------------

SELECT T_SIP_FUNCIONARIO.cd_func
        ,T_SIP_FUNCIONARIO.nm_funcionario
        ,T_SIP_FUNCIONARIO.dt_nascimento
        ,T_SIP_FUNCIONARIO.cd_depto
FROM T_SIP_FUNCIONARIO;

------------

SELECT F.cd_func
        ,F.nm_funcionario
        ,F.dt_nascimento
        ,F.cd_depto
FROM T_SIP_FUNCIONARIO F;

------------

SELECT * FROM T_SIP_FUNCIONARIO F WHERE F.CD_DEPTO = 6;

------------

SELECT UNIQUE F.CD_DEPTO FROM T_SIP_FUNCIONARIO F;


-----------


SELECT F.cd_func
        ,F.nm_funcionario
        ,F.dt_nascimento
        ,F.cd_depto
        ,F.vl_salario as "Base"
        ,(F.vl_salario *12)+1000 as "Anual"
FROM T_SIP_FUNCIONARIO F;


--------

SELECT D.cd_depto, D.nm_depto 
    FROM T_SIP_DEPTO D
    ORDER BY D.nm_depto, D.cd_depto;
-- DESC ou ASC (ASC é o padrão)

--------

SELECT F.cd_func as Matriculoa
        ,F.nm_funcionario as Nome
        ,F.vl_salario as "Salario Bruto"
        ,F.cd_depto "Codigo departamento"
FROM T_SIP_FUNCIONARIO F
ORDER BY F.vl_salario;


------------------
SELECT F.cd_func as Matriculoa
        ,F.nm_funcionario as Nome
        ,F.vl_salario as "Salario Bruto"
        ,F.cd_depto "Codigo departamento"
FROM T_SIP_FUNCIONARIO F
WHERE F.nm_funcionario = 'Julieta Sampaio Gusmao';

------------------

SELECT F.cd_func as Matriculoa
        ,F.nm_funcionario as Nome
        ,F.vl_salario as "Salario Bruto"
        ,F.cd_depto "Codigo departamento"
FROM T_SIP_FUNCIONARIO F
WHERE F.vl_salario >= 10000;

------------------


SELECT F.cd_func as Matriculoa
        ,F.nm_funcionario as Nome
        ,F.vl_salario as "Salario Bruto"
        ,F.cd_depto "Codigo departamento"
FROM T_SIP_FUNCIONARIO F
WHERE F.dt_admissao >= to_date('01/01/2018','DD/MM/YYYY');


------------------

SELECT F.cd_func as Matriculoa
        ,F.nm_funcionario as Nome
        ,F.vl_salario as "Salario Bruto"
        ,F.cd_depto "Codigo departamento"
FROM T_SIP_FUNCIONARIO F
WHERE F.dt_admissao BETWEEN to_date('01/01/2018','DD/MM/YYYY') AND to_date('31/12/2018','DD/MM/YYYY');


------------------

SELECT F.cd_func as Matriculoa
        ,F.nm_funcionario as Nome
        ,F.vl_salario as "Salario Bruto"
        ,F.cd_depto "Codigo departamento"
FROM T_SIP_FUNCIONARIO F
WHERE F.vl_salario BETWEEN 2000 AND 3000;


------------------

SELECT F.cd_func as Matriculoa
        ,F.nm_funcionario as Nome
        ,F.vl_salario as "Salario Bruto"
        ,F.cd_depto "Codigo departamento"
FROM T_SIP_FUNCIONARIO F
WHERE F.cd_depto IN (7,4);

------------------

SELECT F.cd_func as Matriculoa
        ,F.nm_funcionario as Nome
        ,F.vl_salario as "Salario Bruto"
        ,F.cd_depto "Codigo departamento"
FROM T_SIP_FUNCIONARIO F
WHERE TO_CHAR(F.dt_admissao, 'YYYY') IN ('1018','2019');

------------------

SELECT *
FROM T_SIP_PROJETO P
WHERE P.dt_termino IS NOT NULL;

------------------

SELECT F.cd_func as Matriculoa
        ,F.nm_funcionario as Nome
        ,F.vl_salario as "Salario Bruto"
        ,F.cd_depto "Codigo departamento"
FROM T_SIP_FUNCIONARIO F
WHERE F.nm_funcionario LIKE '%Ju%';

-----
SELECT D.cd_depto, D.nm_depto 
    FROM T_SIP_DEPTO D
    WHERE D.nm_depto LIKE 'CO%'; 
    
-----
SELECT D.cd_depto, D.nm_depto 
    FROM T_SIP_DEPTO D
    WHERE D.nm_depto LIKE '%E'; 
    
-----

SELECT 'O Funcionario ' || F.nm_funcionario ||' De código ' || F.cd_func as Nome
FROM T_SIP_FUNCIONARIO F;

------
SELECT rownum,D.cd_depto, D.nm_depto 
    FROM T_SIP_DEPTO D;
    
------

SELECT rownum,D.cd_depto, D.nm_depto 
    FROM T_SIP_DEPTO D
    WHERE rownum <4;
    
    
SELECT * FROM (
SELECT F.nm_funcionario as Nome
,F.vl_salario
FROM T_SIP_FUNCIONARIO F
ORDER BY F.vl_salario desc) func_maiores  WHERE rownum <4;
 