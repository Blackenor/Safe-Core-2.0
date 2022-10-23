--CREATE USER SafeCore IDENTIFIED BY sc1234;
--GRANT ALL PRIVILEGES TO SafeCore;



CREATE TABLE clientes (
    rut_client   CHAR(9) NOT NULL,
    nombre       VARCHAR2(40) NOT NULL,
    direccion    VARCHAR2(40) NOT NULL,
    telefono     VARCHAR2(13) NOT NULL,
    correo       VARCHAR2(50) NOT NULL,
    rubro        VARCHAR2(200) NOT NULL
)
LOGGING;

ALTER TABLE clientes ADD CONSTRAINT clientes_pk PRIMARY KEY ( rut_client );

CREATE TABLE contratoclient (
    id_contr              NUMBER(7) NOT NULL,
    activo                CHAR(1),
    fechainicio           DATE NOT NULL,
    fechatermino          DATE,
    clientes_rut_client   CHAR(9) NOT NULL
)
LOGGING;

ALTER TABLE contratoclient ADD CONSTRAINT contratoclient_pk PRIMARY KEY ( id_contr );

CREATE TABLE contratoprof (
    id_contr               INTEGER NOT NULL,
    fechainicio            DATE NOT NULL,
    fechatermino           DATE,
    historial              VARCHAR2(300),
    profesional_rut_prof   CHAR(9) NOT NULL
)
LOGGING;

ALTER TABLE contratoprof ADD CONSTRAINT contratoprof_pk PRIMARY KEY ( id_contr );

CREATE TABLE pagos (
    id_pago               NUMBER(10) NOT NULL,
    fecha                 DATE NOT NULL,
    monto                 NUMBER(9) NOT NULL,
    clientes_rut_client   CHAR(9) NOT NULL
)
LOGGING;

ALTER TABLE pagos ADD CONSTRAINT pagos_pk PRIMARY KEY ( id_pago );

CREATE TABLE profesional (
    rut_prof    CHAR(9) NOT NULL,
    activo      CHAR(1) NOT NULL,
    nombre      VARCHAR2(100) NOT NULL,
    apellido    VARCHAR2(100) NOT NULL,
    genero      VARCHAR2(10),
    direccion   VARCHAR2(40) NOT NULL,
    telefono    VARCHAR2(13) NOT NULL,
    correo      VARCHAR2(50) NOT NULL
)
LOGGING;

ALTER TABLE profesional ADD CONSTRAINT profesional_pk PRIMARY KEY ( rut_prof );

CREATE TABLE reporteaccidente (
    id_reporta            NUMBER(10) NOT NULL,
    clientes_rut_client   CHAR(9) NOT NULL,
    fechaaccidente        DATE NOT NULL,
    descripcion           VARCHAR2(3000) NOT NULL
)
LOGGING;

ALTER TABLE reporteaccidente ADD CONSTRAINT reporteaccidente_pk PRIMARY KEY ( id_reporta );

CREATE TABLE reportecliente (
    id_reportc            NUMBER(10) NOT NULL,
    clientes_rut_client   CHAR(9) NOT NULL,
    fecha                 DATE NOT NULL,
    descripcion           VARCHAR2(3000) NOT NULL
)
LOGGING;

ALTER TABLE reportecliente ADD CONSTRAINT reportecliente_pk PRIMARY KEY ( id_reportc );

CREATE TABLE reporteglobal (
    id_reportg            NUMBER(10) NOT NULL,
    clientes_rut_client   CHAR(9) NOT NULL,
    fecha                 DATE NOT NULL,
    descripcion           VARCHAR2(3000) NOT NULL
)
LOGGING;

ALTER TABLE reporteglobal ADD CONSTRAINT reporteglobal_pk PRIMARY KEY ( id_reportg );

CREATE TABLE rol (
    id_rol      NUMBER(1) NOT NULL,
    nombrerol   VARCHAR2(20) NOT NULL
)
LOGGING;

ALTER TABLE rol ADD CONSTRAINT rol_pk PRIMARY KEY ( id_rol );

CREATE TABLE servicio (
    id_serv                NUMBER(7) NOT NULL,
    clientes_rut_client    CHAR(9) NOT NULL,
    descripci�n            VARCHAR2(300),
    fechaservicio          DATE NOT NULL,
    valor                  NUMBER(8) NOT NULL,
    profesional_rut_prof   CHAR(9) NOT NULL
)
LOGGING;

ALTER TABLE servicio ADD CONSTRAINT servicio_pk PRIMARY KEY ( id_serv );

CREATE TABLE solicitudasesoria (
    id_solicitud          NUMBER(8) NOT NULL,
    fecha                 DATE NOT NULL,
    descripcion           VARCHAR2(300) NOT NULL,
    clientes_rut_client   CHAR(9) NOT NULL
)
LOGGING;

ALTER TABLE solicitudasesoria ADD CONSTRAINT solicitudasesoria_pk PRIMARY KEY ( id_solicitud );

CREATE TABLE usuarios (
    id_user        INTEGER NOT NULL,
    nombre         VARCHAR2(200) NOT NULL,
    passwordhash   BLOB NOT NULL,
    salt           VARCHAR2(100) NOT NULL,
    rol_id_rol     NUMBER(1) NOT NULL
)
LOGGING;

ALTER TABLE usuarios ADD CONSTRAINT usuarios_pk PRIMARY KEY ( id_user );

CREATE TABLE visitasterreno (
    id_visita              NUMBER(10) NOT NULL,
    fechavisita            DATE NOT NULL,
    profesional_rut_prof   CHAR(9) NOT NULL,
    clientes_rut_client    CHAR(9) NOT NULL
)
LOGGING;

ALTER TABLE visitasterreno ADD CONSTRAINT visitasterreno_pk PRIMARY KEY ( id_visita );

ALTER TABLE contratoclient
    ADD CONSTRAINT contratoclient_clientes_fk FOREIGN KEY ( clientes_rut_client )
        REFERENCES clientes ( rut_client )
    NOT DEFERRABLE;

ALTER TABLE contratoprof
    ADD CONSTRAINT contratoprof_profesional_fk FOREIGN KEY ( profesional_rut_prof )
        REFERENCES profesional ( rut_prof )
    NOT DEFERRABLE;

ALTER TABLE pagos
    ADD CONSTRAINT pagos_clientes_fk FOREIGN KEY ( clientes_rut_client )
        REFERENCES clientes ( rut_client )
    NOT DEFERRABLE;

ALTER TABLE reporteaccidente
    ADD CONSTRAINT reporteaccidente_clientes_fk FOREIGN KEY ( clientes_rut_client )
        REFERENCES clientes ( rut_client )
    NOT DEFERRABLE;

ALTER TABLE reportecliente
    ADD CONSTRAINT reportecliente_clientes_fk FOREIGN KEY ( clientes_rut_client )
        REFERENCES clientes ( rut_client )
    NOT DEFERRABLE;

ALTER TABLE reporteglobal
    ADD CONSTRAINT reporteglobal_clientes_fk FOREIGN KEY ( clientes_rut_client )
        REFERENCES clientes ( rut_client )
    NOT DEFERRABLE;

ALTER TABLE servicio
    ADD CONSTRAINT servicio_clientes_fk FOREIGN KEY ( clientes_rut_client )
        REFERENCES clientes ( rut_client )
    NOT DEFERRABLE;

ALTER TABLE servicio
    ADD CONSTRAINT servicio_profesional_fk FOREIGN KEY ( profesional_rut_prof )
        REFERENCES profesional ( rut_prof )
    NOT DEFERRABLE;

ALTER TABLE solicitudasesoria
    ADD CONSTRAINT solicitudasesoria_clientes_fk FOREIGN KEY ( clientes_rut_client )
        REFERENCES clientes ( rut_client )
    NOT DEFERRABLE;

ALTER TABLE usuarios
    ADD CONSTRAINT usuarios_rol_fk FOREIGN KEY ( rol_id_rol )
        REFERENCES rol ( id_rol )
    NOT DEFERRABLE;

ALTER TABLE visitasterreno
    ADD CONSTRAINT visitasterreno_clientes_fk FOREIGN KEY ( clientes_rut_client )
        REFERENCES clientes ( rut_client )
    NOT DEFERRABLE;

ALTER TABLE visitasterreno
    ADD CONSTRAINT visitasterreno_profesional_fk FOREIGN KEY ( profesional_rut_prof )
        REFERENCES profesional ( rut_prof )
    NOT DEFERRABLE;



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            13
-- CREATE INDEX                             0
-- ALTER TABLE                             25
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
