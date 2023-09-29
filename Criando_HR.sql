---CRIANDO AS  TABELAS
CREATE TABLE T_DDD_CLIENTE (
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    cpf_pessoa VARCHAR2(20),
    email VARCHAR2(60),
    senha VARCHAR(60),
    CONSTRAINT pk_ddd_cliente PRIMARY KEY (id)    
);

CREATE TABLE T_DDD_PESSOA (
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR2(60),
    idade NUMBER,
    cpf VARCHAR2(20) UNIQUE,
    CONSTRAINT pk_ddd_pessoa PRIMARY KEY (id,cpf)    
);

ALTER TABLE T_DDD_CLIENTE ADD CONSTRAINT fk_ddd_cliente FOREIGN KEY (cpf_pessoa) REFERENCES T_DDD_PESSOA (cpf);

CREATE TABLE T_DDD_PRODUTO (
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR2(60),
    tipo VARCHAR2(60),
    descricao VARCHAR2(200),
    CONSTRAINT pk_ddd_produto PRIMARY KEY (id)    
);

---FAZENDO  O PRIMEIROS INSERTS PARA TER CONTEUDO  PARA  TESTE

INSERT  INTO T_DDD_PESSOA (nome,idade,cpf)
    VALUES (
        'Maria Silva', 30, '123.456.789-00'
    );
INSERT  INTO T_DDD_PESSOA (nome,idade,cpf)
    VALUES (
        'João Santos', 25, '987.654.321-01'
    );
INSERT  INTO T_DDD_PESSOA (nome,idade,cpf)
    VALUES (
       'Ana Pereira', 35, '456.789.123-02'
    );
-----------------------
INSERT  INTO T_DDD_CLIENTE (cpf_pessoa,email,senha)
    VALUES (
        '123.456.789-00','Maria@email.com', 'Senha'
    );
INSERT  INTO T_DDD_CLIENTE (cpf_pessoa,email,senha)
    VALUES (
        '987.654.321-01','Joao@email.com', '123'
    );
INSERT  INTO T_DDD_CLIENTE (cpf_pessoa,email,senha)
    VALUES (
        '456.789.123-02','Ana@email.com', 'abc'
    );
------------------------
INSERT  INTO T_DDD_PRODUTO (nome,tipo,descricao)
    VALUES (
        'Monitor LG', 'Periféricos', 'Monitor LG 54 polegadas 4k'
    );
INSERT  INTO T_DDD_PRODUTO (nome,tipo,descricao)
    VALUES (
        'Mouse hero', 'Periféricos', 'Mouse logitech hero G502 99999'
    );
INSERT  INTO T_DDD_PRODUTO (nome,tipo,descricao)
    VALUES (
       'RTX 4090 Ti', 'Placa de video', 'Placa de video Asus RTX 4090 Ti'
    );
    
commit;