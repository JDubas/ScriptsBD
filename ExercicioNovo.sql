DROP TABLE T_RHSTU_MEDICO_CONTATO


CREATE TABLE T_RHSTU_MEDICO_CONTATO(
cd_medico number(10) NOT NULL,
id_contato number(3) NOT NULL,
tp_contato varchar2(40)NOT NULL,
ds_contato varchar2(60) NOT NULL,
st_contato varchar2(1) NOT NULL,
CONSTRAINT pk_RHSTU_MEDICO_CONTATO PRIMARY KEY(cd_medico,id_contato),
CONSTRAINT fk_rhstu_medico foreign key (cd_medico) references T_RHSTU_MEDICO(cd_medico),
CONSTRAINT ck_tp_contato CHECK (tp_contato IN ('TF (Telefone Fixo)','TC (Telefone Celular)','EC (Email Contato)')),
CONSTRAINT ck_st_contato CHECK (st_contato IN ('A','I'))
);

ALTER TABLE T_RHSTU_MEDICO_CONTATO
    MODIFY  tp_contato varchar2(2);
    
insert into T_RHSTU_MEDICO (CD_MEDICO,NM_MEDICO,NR_CRM,DS_ESPECIALIDADE) values(1,'João',1234,'Um medico muito bom');



insert into T_RHSTU_MEDICO_CONTATO (cd_medico, id_contato,tp_contato,ds_contato,st_contato) values (1,1,'TF (Telefone Fixo)','Amigo da familia','A');


delete from T_RHSTU_MEDICO_CONTATO;


delete from T_RHSTU_MEDICO;


alter table T_RHSTU_MEDICO_CONTATO add DT_INCLUSAO DATE NOT NULL;

alter table T_RHSTU_MEDICO_CONTATO modify DT_INCLUSAO DATE NULL;


insert into T_RHSTU_MEDICO (CD_MEDICO,NM_MEDICO,NR_CRM,DS_ESPECIALIDADE) values(1,'João',1234,'Um medico muito bom');



insert into T_RHSTU_MEDICO_CONTATO (cd_medico, id_contato,tp_contato,ds_contato,st_contato,dt_inclusao) values (1,1,'TF (Telefone Fixo)','Amigo da familia','A',localtimestamp);

delete from T_RHSTU_MEDICO_CONTATO;

alter table T_RHSTU_MEDICO_CONTATO drop (DT_INCLUSAO);

insert into T_RHSTU_MEDICO_CONTATO (cd_medico, id_contato,tp_contato,ds_contato,st_contato) values (1,1,'TF (Telefone Fixo)','Amigo da familia','A');
