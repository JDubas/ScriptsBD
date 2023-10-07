-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2022-08-16 15:02:42 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



DROP TABLE t_rhstu_bairro CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_cidade CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_consulta CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_consulta_forma_pagto CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_contato_paciente CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_email_paciente CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_endereco_paciente CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_estado CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_forma_pagamento CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_logradouro CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_medicamento CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_medico CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_paciente CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_paciente_plano_saude CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_plano_saude CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_prescicao_medica CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_telefone_paciente CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_tipo_contato CASCADE CONSTRAINTS;

DROP TABLE t_rhstu_unid_hospitalar CASCADE CONSTRAINTS;

--
-- Script incorporado a mão
--
DROP SEQUENCE sq_rhstu_unid_hosp;
DROP SEQUENCE sq_rhstu_tipo_contato;
DROP SEQUENCE sq_rhstu_presc_medica;
DROP SEQUENCE sq_rhstu_plano_saude;
DROP SEQUENCE sq_rhstu_paciente_ps;
DROP SEQUENCE sq_rhstu_paciente;
DROP SEQUENCE sq_rhstu_medico;
DROP SEQUENCE sq_rhstu_medicamento;
DROP SEQUENCE sq_rhstu_logradouro;
DROP SEQUENCE sq_rhstu_forma_pagto;
DROP SEQUENCE sq_rhstu_estado;
DROP SEQUENCE sq_rhstu_end_paciente;
DROP SEQUENCE sq_rhstu_pac_email;
DROP SEQUENCE sq_rhstu_cons_form_pagto;
DROP SEQUENCE sq_rhstu_cidade;
DROP SEQUENCE sq_rhstu_bairro;