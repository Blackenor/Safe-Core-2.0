-- SP Y SEQUENCE DE BBDD SafeCore --


-- NEXT VALUE METHODS --

CREATE SEQUENCE actividadmejora_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/   
CREATE SEQUENCE contratoclient_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE; 
/   
CREATE SEQUENCE contratoprof_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/ 
CREATE SEQUENCE pagos_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/
CREATE SEQUENCE reportea_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/
CREATE SEQUENCE reportg_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/
CREATE SEQUENCE servicio_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/
CREATE SEQUENCE solicitud_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/
CREATE SEQUENCE usuarios_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/
CREATE SEQUENCE visitas_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
/


-- ACTIVIDADMEJORA --

-- PROCESO ALMACENADO DE CREATE DE ACT MEJORA
create or replace procedure SP_CREATE_ACTIVIDADMEJORA(v_actividadmejora number, v_nombre varchar2, v_descripcion varchar2) as
begin
    insert into actividadmejora values (actividadmejora_seq.nextval, v_nombre, v_descripcion);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE ACT MEJORA
create or replace procedure SP_UPDATE_MEJORA(v_actividadmejora number, v_nombremejora varchar2, v_descripcion varchar2) as
begin
    UPDATE actividadmejora
    SET nombremejora = v_nombremejora,
        descripcionmejora  = v_descripcion
    where id_actividadmejora = v_actividadmejora;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE PRODUCTO
create or replace procedure SP_DELETE_MEJORA(v_actmejora number) as
begin
    delete from actividadmejora where id_actividadmejora = v_actmejora;
    commit;
end;
/



-- CLIENTES --

-- PROCESO ALMACENADO DE CREATE DE CLIENTES
create or replace procedure SP_CREATE_CLIENTES(v_rut CHAR, v_nombre varchar2, v_direccion VARCHAR2, v_telefono varchar2, v_correo varchar2, v_rubro VARCHAR2) as
begin
    insert into clientes values (v_rut, v_nombre, v_direccion, v_telefono, v_correo, v_rubro);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE CLIENTES
create or replace procedure SP_UPDATE_CLIENTES(v_rut CHAR, v_nombre varchar2, v_direccion varchar2, v_telefono varchar2,
                                               v_correo varchar2,
                                               v_rubro varchar2) as
begin
    UPDATE clientes
    SET nombre = v_nombre,
        direccion = v_direccion,
        telefono  = v_telefono,
        correo = v_correo,
        rubro    = v_rubro
    where rut_client = v_rut;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE CLIENTES
create or replace procedure SP_DELETE_CLIENTES(v_rut number) as
begin
    delete from clientes where rut_client = v_rut;
    commit;
end;
/




-- CONTRATOCLIENT --

-- PROCESO ALMACENADO DE CREATE DE CONTRATOCLIENT
create or replace procedure SP_CREATE_CONTRATOCLIENT(v_idcontr number, v_activo CHAR, v_fechainicio date, v_fechatermino date,
                                               v_rutclient CHAR) as
begin
    insert into contratoclient values (contratoclient_seq.nextval, v_activo, v_fechainicio, v_fechatermino, v_rutclient);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE CONTRATOCLIENT
create or replace procedure SP_UPDATE_CONTRATOCLIENT(v_idcontr number, v_activo CHAR, v_fechainicio date, v_fechatermino date,
                                               v_rutclient CHAR) as
begin
    UPDATE contratoclient
    SET activo = v_activo,
        fechainicio = v_fechainicio,
        fechatermino  = v_fechatermino,
        clientes_rut_client = v_rutclient
    where id_contr = v_idcontr;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE CONTRATOCLIENT
create or replace procedure SP_DELETE_CONTRATOCLIENT(v_idcontr number) as
begin
    delete from contratoclient where id_contr = v_idcontr;
    commit;
end;
/




-- CONTRATOPROF --

-- PROCESO ALMACENADO DE CREATE DE CONTRATOPROF
create or replace procedure SP_CREATE_CONTRATOPROF(v_idcontr number, v_fechainicio date, v_fechatermino date,
                                               v_historial varchar2, v_rutprof char) as
begin
    insert into contratoprof values (contratoprof_seq.nextval, v_fechainicio, v_fechatermino, v_historial, v_rutprof);
    commit;
end;
/




-- PROCESO ALMACENADO DE UPDATE DE PRODUCTO
create or replace procedure SP_UPDATE_CONTRATOPROF(v_idcontr number, v_fechainicio date, v_fechatermino date,
                                               v_historial varchar2, v_rutprof char) as
begin
    UPDATE contratoprof
    SET fechainicio = v_fechainicio,
        fechatermino = v_fechatermino,
        historial  = v_historial,
        profesional_rut_prof = v_rutprof
    where id_contr = v_idcontr;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE PRODUCTO

create or replace procedure SP_DELETE_CONTRATOPROF(v_idcontr number) as

begin
    delete from contratoprof where id_contr = v_idcontr;
    commit;
end;
/




-- PAGOS --

-- PROCESO ALMACENADO DE CREATE DE PAGOS
create or replace procedure SP_CREATE_PAGOS(v_idpago number, v_fecha date, v_monto number, v_rutclient CHAR) as
begin
    insert into pagos values (pagos_seq.nextval, v_fecha, v_monto, v_rutclient);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE PAGOS

create or replace procedure SP_UPDATE_PRODUCTO(v_idpago number, v_fecha date, v_monto number, v_rutclient CHAR) as
begin
    UPDATE pagos
    SET fecha = v_fecha,
        monto = v_monto,
        clientes_rut_client  = v_rutclient
    where id_pago = v_idpago;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE PAGOS
create or replace procedure SP_DELETE_PAGOS(v_idpago number) as
begin
    delete from pagos where id_pago = v_idpago;
    commit;
end;
/




-- PROFESIONAL --

-- PROCESO ALMACENADO DE CREATE DE PROFESIONAL
create or replace procedure SP_CREATE_PROFESIONAL(v_rutprof CHAR, v_activo CHAR, v_nombre varchar2, v_apellido varchar2,
                                               v_genero varchar2, v_direccion varchar2, v_telefono varchar2, v_correo varchar2) as
begin
    insert into profesional values ( v_rutprof, v_activo, v_nombre, v_apellido, v_genero, v_direccion, v_telefono, v_correo);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE PROFESIONAL
create or replace procedure SP_UPDATE_PROFESIONAL(v_rutprof CHAR, v_activo CHAR, v_nombre varchar2, v_apellido varchar2,
                                               v_genero varchar2, v_direccion varchar2, v_telefono varchar2, v_correo varchar2) as
begin
    UPDATE PROFESIONAL
    SET activo = v_activo,
        nombre = v_nombre,
        apellido  = v_apellido,
        genero = v_genero,
        direccion    = v_direccion,
        telefono    = v_telefono,
        correo    = v_correo
    where rut_prof = v_rutprof;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE PROFESIONAL
create or replace procedure SP_DELETE_PROFESIONAL(v_rutprof number) as
begin
    delete from profesional where rut_prof = v_rutprof;
    commit;
end;
/




-- REPORTEACCIDENTE --

-- PROCESO ALMACENADO DE CREATE DE REPORTEACCIDENTE
create or replace procedure SP_CREATE_REPORTEACCIDENTE(v_idreport number, v_rutclient CHAR, v_fechaaccidente date, v_descripcion varchar2) as
begin
    insert into reporteaccidente values (reportea_seq.nextval, v_rutclient, v_fechaaccidente, v_descripcion);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE REPORTEACCIDENTE
create or replace procedure SP_UPDATE_REPORTEACCIDENTE(v_idreport number, v_rutclient CHAR, v_fechaaccidente date, v_descripcion varchar2) as
begin
    UPDATE REPORTEACCIDENTE
    SET clientes_rut_client = v_rutclient,
        fechaaccidente = v_fechaaccidente,
        descripcion  = v_descripcion
    where id_reporta = v_idreport;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE REPORTEACCIDENTE
create or replace procedure SP_DELETE_REPORTEACCIDENTE(v_idreport number) as
begin
    delete from reporteaccidente where id_reporta = v_idreport;
    commit;
end;
/




-- REPORTECLIENTE --

-- PROCESO ALMACENADO DE CREATE DE REPORTECLIENTE
create or replace procedure SP_CREATE_REPORTECLIENTE(v_reportc number, v_rutclient CHAR, v_fecha date, v_descripcion varchar2) as
begin
    insert into reportecliente values (v_reportc, v_rutclient, v_fecha, v_descripcion);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE REPORTECLIENTE
create or replace procedure SP_UPDATE_REPORTECLIENTE(v_reportc number, v_rutclient CHAR, v_fecha date, v_descripcion varchar2) as
begin
    UPDATE reportecliente
    SET clientes_rut_client = v_rutclient,
        fecha = v_fecha,
        descripcion  = v_descripcion
    where id_reportc = v_reportc;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE REPORTECLIENTE
create or replace procedure SP_DELETE_REPORTECLIENTE(v_reportc number) as
begin
    delete from reportecliente where id_reportc = v_reportc;
    commit;
end;
/




-- REPORTEGLOBAL --

-- PROCESO ALMACENADO DE CREATE DE REPORTEGLOBAL
create or replace procedure SP_CREATE_REPORTEGLOBAL(v_reportg number, v_rutclient CHAR, v_fecha date, v_descripcion varchar2) as
begin
    insert into reporteglobal values (reportg_seq.nextval, v_rutclient, v_fecha, v_descripcion);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE REPORTEGLOBAL
create or replace procedure SP_UPDATE_REPORTEGLOBAL(v_reportg number, v_rutclient CHAR, v_fecha date, v_descripcion varchar2) as
begin
    UPDATE reporteglobal
    SET clientes_rut_client = v_rutclient,
        fecha = v_fecha,
        descripcion  = v_descripcion
    where id_reportg = v_reportg;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE REPORTEGLOBAL
create or replace procedure SP_DELETE_REPORTEGLOBAL(v_reportg number) as
begin
    delete from reporteglobal where id_reportg = v_reportg;
    commit;
end;
/




-- REPORTEGLOBAL --

-- PROCESO ALMACENADO DE CREATE DE SERVICIO
create or replace procedure SP_CREATE_SERVICIO(v_idserv number, v_rutclient CHAR, v_descripcion varchar2, v_fechaservicio date,
                                               v_valor number, v_rutprof char) as
begin
    insert into servicio values (servicio_seq.nextval, v_rutclient, v_descripcion, v_fechaservicio, v_valor, v_rutprof);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE SERVICIO
create or replace procedure SP_UPDATE_SERVICIO(v_idserv number, v_rutclient CHAR, v_descripcion varchar2, v_fechaservicio date,
                                               v_valor number, v_rutprof char) as
begin
    UPDATE servicio
    SET clientes_rut_client = v_rutclient,
        descripci?n  = v_descripcion,
        fechaservicio = v_fechaservicio,
        valor = v_valor,
        profesional_rut_prof = v_rutprof
    where id_serv = v_idserv;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE SERVICIO
create or replace procedure SP_DELETE_SERVICIO(v_idserv number) as
begin
    delete from servicio where id_serv = v_idserv;
    commit;
end;
/




-- SOLICITUD --

-- PROCESO ALMACENADO DE CREATE DE SOLICITUD
create or replace procedure SP_CREATE_SOLICITUD(v_idsolicitud number, v_fecha date, v_descripcion varchar2, v_rutclient CHAR,
                                               v_idtiposolicitud number) as
begin
    insert into solicitud values (solicitud_seq.nextval, v_fecha, v_descripcion, v_rutclient, v_idtiposolicitud);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE SOLICITUD
create or replace procedure SP_UPDATE_SOLICITUD(v_idsolicitud number, v_fecha date, v_descripcion varchar2, v_rutclient CHAR,
                                               v_idtiposolicitud number) as
begin
    UPDATE solicitud
    SET fecha = v_fecha,
        descripcion = v_descripcion,
        clientes_rut_client  = v_rutclient,
        tiposolicitud_id_tiposolicitud = v_idtiposolicitud
    where id_solicitud = v_idsolicitud;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE SOLICITUD
create or replace procedure SP_DELETE_SOLICITUD(v_idsolicitud number) as
begin
    delete from solicitud where id_solicitud = v_idsolicitud;
    commit;
end;
/




-- USUARIOS --

-- PROCESO ALMACENADO DE CREATE DE USUARIOS 
create or replace procedure SP_CREATE_USUARIOS(v_iduser number, v_nombre varchar2, v_pass varchar2, v_rolid number) as
begin
    insert into usuarios values (usuarios_seq.nextval, v_nombre, v_pass, v_rolid);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE PRODUCTO
create or replace procedure SP_UPDATE_USUARIOS(v_iduser number, v_nombre varchar2, v_pass varchar2, v_rolid number) as
begin
    UPDATE usuarios
    SET nombre = v_nombre,
        pass = v_pass,
        rol_id_rol  = v_rolid
    where id_user = v_iduser;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE USUARIOS
create or replace procedure SP_DELETE_USUARIOS(v_iduser number) as
begin
    delete from usuarios where id_user = v_iduser;
    commit;
end;
/




-- VISITASTERRENO --

-- PROCESO ALMACENADO DE CREATE DE VISITASTERRENO 
create or replace procedure SP_CREATE_VISITASTERRENO(v_idvisita number, v_fechavisita date, v_rutprof CHAR, v_rutclient CHAR) as
begin
    insert into visitasterreno values (visitas_seq.nextval, v_fechavisita, v_rutprof, v_rutclient);
    commit;
end;
/
-- PROCESO ALMACENADO DE UPDATE DE VISITASTERRENO
create or replace procedure SP_UPDATE_VISITASTERRENO(v_idvisita number, v_fechavisita date, v_rutprof CHAR, v_rutclient CHAR) as
begin
    UPDATE visitasterreno
    SET fechavisita = v_fechavisita,
        profesional_rut_prof = v_rutprof,
        clientes_rut_client  = v_rutclient
    where id_visita = v_idvisita;
    commit;
end;
/
-- PROCESO ALMACENADO DE DELETE DE VISITASTERRENO
create or replace procedure SP_DELETE_VISITASTERRENO(v_idvisita number) as
begin
    delete from visitasterreno where id_visita = v_idvisita;
    commit;
end;
/