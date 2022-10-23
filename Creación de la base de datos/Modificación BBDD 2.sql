-- CREACIÓN DE LA TABLA ActividadMejora Y NORMALIZACIÓN DE LA TABLA SOLICITUD

DROP TABLE SolicitudAsesoria;

CREATE TABLE ActividadMejora 
    ( 
     ID_ActividadMejora INTEGER  NOT NULL , 
     NombreMejora VARCHAR2 (20) , 
     DescripcionMejora VARCHAR2 (300) 
    ) 
;



ALTER TABLE ActividadMejora 
    ADD CONSTRAINT ActividadMejora_PK PRIMARY KEY ( ID_ActividadMejora ) ;


CREATE TABLE Solicitud 
    ( 
     ID_Solicitud NUMBER (8)  NOT NULL , 
     Fecha DATE  NOT NULL , 
     Descripcion VARCHAR2 (300)  NOT NULL , 
     Clientes_RUT_Client CHAR (9)  NOT NULL , 
     TipoSolicitud_ID_TipoSolicitud INTEGER  NOT NULL 
    ) 
;



ALTER TABLE Solicitud 
    ADD CONSTRAINT SolicitudAsesoria_PK PRIMARY KEY ( ID_Solicitud ) ;



CREATE TABLE TipoSolicitud 
    ( 
     ID_TipoSolicitud INTEGER  NOT NULL , 
     TipoSolicitud VARCHAR2 (10) 
    ) 
;



ALTER TABLE TipoSolicitud 
    ADD CONSTRAINT TipoSolicitud_PK PRIMARY KEY ( ID_TipoSolicitud ) ;




ALTER TABLE Solicitud 
    ADD CONSTRAINT SolicitudAsesoria_Clientes_FK FOREIGN KEY 
    ( 
     Clientes_RUT_Client
    ) 
    REFERENCES Clientes 
    ( 
     RUT_Client
    ) 
;


ALTER TABLE Solicitud 
    ADD CONSTRAINT Solicitud_TipoSolicitud_FK FOREIGN KEY 
    ( 
     TipoSolicitud_ID_TipoSolicitud
    ) 
    REFERENCES TipoSolicitud 
    ( 
     ID_TipoSolicitud
    ) 
;
