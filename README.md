Servidor REST simples em Delphi

Requisitos:

* Delphi versão 10.3 ou superior
* Firedac
* Firebird Database 2.5 ou superior
* Criar base de dados e criar tabela "pessoa"
  CREATE TABLE PESSOA(
    PES_SEQ         INTEGER NOT NULL PRIMARY key,
    PES_NOME        VARCHAR(120) NOT NULL,
    PES_DT_CRIACAO TIMESTAMP DEFAULT current_timestamp NOT NULL
  )
* Realizar alterações de conexão no objeto TFDConnection.
