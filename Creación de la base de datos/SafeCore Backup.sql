--------------------------------------------------------
-- Archivo creado  - s�bado-octubre-22-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACTIVIDADMEJORA
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."ACTIVIDADMEJORA" 
   (	"ID_ACTIVIDADMEJORA" NUMBER(*,0), 
	"NOMBREMEJORA" VARCHAR2(20 BYTE), 
	"DESCRIPCIONMEJORA" VARCHAR2(300 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."CLIENTES" 
   (	"RUT_CLIENT" CHAR(9 BYTE), 
	"NOMBRE" VARCHAR2(40 BYTE), 
	"DIRECCION" VARCHAR2(40 BYTE), 
	"TELEFONO" VARCHAR2(13 BYTE), 
	"CORREO" VARCHAR2(50 BYTE), 
	"RUBRO" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CONTRATOCLIENT
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."CONTRATOCLIENT" 
   (	"ID_CONTR" NUMBER(7,0), 
	"ACTIVO" CHAR(1 BYTE), 
	"FECHAINICIO" DATE, 
	"FECHATERMINO" DATE, 
	"CLIENTES_RUT_CLIENT" CHAR(9 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CONTRATOPROF
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."CONTRATOPROF" 
   (	"ID_CONTR" NUMBER(*,0), 
	"FECHAINICIO" DATE, 
	"FECHATERMINO" DATE, 
	"HISTORIAL" VARCHAR2(300 BYTE), 
	"PROFESIONAL_RUT_PROF" CHAR(9 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PAGOS
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."PAGOS" 
   (	"ID_PAGO" NUMBER(10,0), 
	"FECHA" DATE, 
	"MONTO" NUMBER(9,0), 
	"CLIENTES_RUT_CLIENT" CHAR(9 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROFESIONAL
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."PROFESIONAL" 
   (	"RUT_PROF" CHAR(9 BYTE), 
	"ACTIVO" CHAR(1 BYTE), 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"APELLIDO" VARCHAR2(100 BYTE), 
	"GENERO" VARCHAR2(10 BYTE), 
	"DIRECCION" VARCHAR2(40 BYTE), 
	"TELEFONO" VARCHAR2(13 BYTE), 
	"CORREO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REPORTEACCIDENTE
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."REPORTEACCIDENTE" 
   (	"ID_REPORTA" NUMBER(10,0), 
	"CLIENTES_RUT_CLIENT" CHAR(9 BYTE), 
	"FECHAACCIDENTE" DATE, 
	"DESCRIPCION" VARCHAR2(3000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REPORTECLIENTE
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."REPORTECLIENTE" 
   (	"ID_REPORTC" NUMBER(10,0), 
	"CLIENTES_RUT_CLIENT" CHAR(9 BYTE), 
	"FECHA" DATE, 
	"DESCRIPCION" VARCHAR2(3000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REPORTEGLOBAL
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."REPORTEGLOBAL" 
   (	"ID_REPORTG" NUMBER(10,0), 
	"CLIENTES_RUT_CLIENT" CHAR(9 BYTE), 
	"FECHA" DATE, 
	"DESCRIPCION" VARCHAR2(3000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROL
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."ROL" 
   (	"ID_ROL" NUMBER(1,0), 
	"NOMBREROL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SERVICIO
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."SERVICIO" 
   (	"ID_SERV" NUMBER(7,0), 
	"CLIENTES_RUT_CLIENT" CHAR(9 BYTE), 
	"DESCRIPCI�N" VARCHAR2(300 BYTE), 
	"FECHASERVICIO" DATE, 
	"VALOR" NUMBER(8,0), 
	"PROFESIONAL_RUT_PROF" CHAR(9 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SOLICITUD
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."SOLICITUD" 
   (	"ID_SOLICITUD" NUMBER(8,0), 
	"FECHA" DATE, 
	"DESCRIPCION" VARCHAR2(300 BYTE), 
	"CLIENTES_RUT_CLIENT" CHAR(9 BYTE), 
	"TIPOSOLICITUD_ID_TIPOSOLICITUD" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TIPOSOLICITUD
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."TIPOSOLICITUD" 
   (	"ID_TIPOSOLICITUD" NUMBER(*,0), 
	"TIPOSOLICITUD" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."USUARIOS" 
   (	"ID_USER" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(200 BYTE), 
	"ROL_ID_ROL" NUMBER(1,0), 
	"PASS" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VISITASTERRENO
--------------------------------------------------------

  CREATE TABLE "SAFECORE"."VISITASTERRENO" 
   (	"ID_VISITA" NUMBER(10,0), 
	"FECHAVISITA" DATE, 
	"PROFESIONAL_RUT_PROF" CHAR(9 BYTE), 
	"CLIENTES_RUT_CLIENT" CHAR(9 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SAFECORE.ACTIVIDADMEJORA
SET DEFINE OFF;
REM INSERTING into SAFECORE.CLIENTES
SET DEFINE OFF;
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('0        ','Donec Tempor Institute','Camarones','0422337474','consequat.enim.diam@outlook.org','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('325449705','Ac Facilisis Foundation','Llanquihue','769585775','elit@icloud.com','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('194135807','Orci Foundation','San Fernando','611492061','consequat.nec@yahoo.ca','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('101939502','Tempor Incorporated','El Carmen','581135472','diam.lorem@google.ca','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('253273739','Non Nisi LLP','Tierra Amarilla','127925293','eu.tellus.phasellus@protonmail.net','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('286405770','Neque In Ornare Industries','Santa Cruz','723590844','cum.sociis.natoque@outlook.couk','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('364233930','Ultrices Vivamus Rhoncus Limited','Lo Barnechea','322166120','facilisis.vitae.orci@outlook.edu','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('249673781','Mauris Sit Amet Associates','Río Hurtado','613344782','nunc.mauris@outlook.com','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('184315904','Proin Ultrices Duis Institute','Maullín','260421641','sed.dictum.proin@protonmail.couk','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('226746412','Est Industries','Tomé','140401607','mus.aenean@aol.com','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('393831677','Eget Ipsum Incorporated','Santa Bárbara','372028682','purus.ac.tellus@protonmail.edu','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('35758054 ','Donec Est LLC','Sierra Gorda','398233807','tempor.bibendum.donec@icloud.edu','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('497573882','Dui Augue Eu Inc.','Puerto Octay','505688393','nulla.integer.vulputate@google.edu','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('112776052','Imperdiet Ullamcorper LLC','Pedro Aguirre Cerda','767773794','dignissim.magna.a@hotmail.com','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('208453696','Augue Malesuada LLC','Los Lagos','734423770','velit.egestas@aol.com','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('225327513','Lorem Vehicula Company','Juan Fernández','273526154','facilisis@hotmail.org','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('453994759','Dolor PC','Lago Verde','158425233','commodo.hendrerit@aol.edu','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('282374374','Litora Industries','Putre','623652258','nec.imperdiet@yahoo.couk','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('506766214','Eget Metus Corporation','Pemuco','905680471','nullam.suscipit.est@icloud.org','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('183846647','Ultrices Duis Volutpat Inc.','Collipulli','877270552','fringilla@icloud.net','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('361484363','Tincidunt Neque LLP','Camiña','373975271','sodales.mauris.blandit@aol.org','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('206501316','Vestibulum Ante Ltd','Camarones','986063725','aliquet.phasellus.fermentum@protonmail.edu','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('207768987','Enim Suspendisse Aliquet Limited','Santa Cruz','672932649','elit.fermentum@protonmail.edu','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('263514661','Ac Feugiat Non Limited','Río Ibáñez','435810302','vel.quam@outlook.ca','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('499722087','Urna Justo Faucibus Institute','Pozo Almonte','657364299','laoreet@yahoo.org','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('235445913','Amet Ornare Lectus Associates','Talagante','708045685','arcu@google.org','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('157102982','Non Arcu LLP','Antuco','710108065','urna.nec.luctus@aol.ca','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('42153796 ','Et Commodo Corp.','La Unión','854304461','lacus.nulla@icloud.couk','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('4384976K ','Nulla Inc.','Río Bueno','658139997','dapibus.rutrum@yahoo.org','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('61536108 ','Adipiscing Lobortis Industries','Putre','332102156','dis.parturient.montes@google.couk','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('8269854K ','Cursus Et Eros Incorporated','Arica','909553657','semper.rutrum.fusce@hotmail.couk','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('126471734','Id Magna PC','Natales','626511955','et.arcu@protonmail.org','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('402292997','Nunc Quisque Ltd','La Serena','577255810','quisque.varius.nam@hotmail.edu','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('423008466','In Molestie Limited','Panguipulli','973518456','rhoncus.proin@hotmail.org','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('282856913','Erat Etiam Company','General Lagos','795859201','porttitor.scelerisque@icloud.couk','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('394093955','Sem Elit LLP','Laja','163101530','purus@outlook.net','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('115568434','Dui Cras Pellentesque Associates','General Lagos','171727931','augue.eu.tempor@aol.com','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('486337028','A Tortor Incorporated','Caldera','662750994','ac@icloud.org','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('287924585','Enim Commodo Inc.','Canela','134461537','dignissim.magna@icloud.com','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('427354598','Tristique Neque Associates','Arica','840296720','a@outlook.ca','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('93843541 ','Pharetra Quisque Limited','Porvenir','325502273','praesent.eu@protonmail.net','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('142225433','Tellus Inc.','Punitaqui','210606220','vivamus.rhoncus.donec@google.com','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('432981770','Penatibus Et Incorporated','San Bernardo','177736375','augue.eu@protonmail.net','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('447072432','Sem Eget Foundation','Calama','935606745','vestibulum@icloud.couk','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('186184998','Rutrum Justo Ltd','El Monte','413441544','nec.leo.morbi@yahoo.com','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('278539504','Aliquam Gravida Corporation','Arica','973166665','mauris.suspendisse@outlook.net','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('286408060','Eleifend Ltd','Lago Verde','338900319','aliquam.erat@protonmail.edu','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('388403799','Gravida Praesent Ltd','Hualpén','722130174','erat.eget.ipsum@yahoo.couk','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('324433376','Porta Elit A LLC','Alhué','410884837','eget.dictum@protonmail.ca','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('488379798','Fusce Aliquam Industries','Cabo de Hornos','757641066','turpis.nec@yahoo.org','Armeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('179265931','Dui Nec Inc.','Río Verde','184920081','eleifend.nunc@hotmail.ca','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('194699751','Diam Consulting','Pica','463280938','condimentum.eget@icloud.edu','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('274436190','Velit LLC','Puchuncaví','509076397','congue.elit@hotmail.org','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('2381692K ','Malesuada Vel Ltd','Copiapó','536820866','faucibus@yahoo.couk','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('127306060','Aenean Gravida Foundation','Antofagasta','447485865','placerat.orci.lacus@outlook.net','Armeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('47221323 ','Egestas Hendrerit Institute','Coquimbo','264598341','elit.sed@icloud.ca','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('336119871','Fermentum Vel PC','El Bosque','687372908','donec@outlook.edu','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('499497237','Gravida Sagittis Ltd','Angol','664353116','mauris.ut.quam@icloud.ca','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('20163992 ','Aliquam Nisl Nulla Company','Tiltil','901008354','porttitor.interdum@yahoo.edu','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('64097148 ','Donec Est Foundation','Antofagasta','558879522','aenean@protonmail.org','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('116824930','Auctor Ullamcorper Associates','La Unión','736695094','ac.turpis@yahoo.edu','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('7300313K ','Imperdiet Nec Leo Associates','O Higgins','373680820','eu.ultrices@google.com','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('412064453','Massa Ltd','Maullín','341092270','eleifend.nec.malesuada@protonmail.edu','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('431881535','Feugiat Limited','María Elena','634330429','dignissim.magna@outlook.net','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('29803927 ','Nunc Sit LLC','Ancud','407142475','morbi.metus@outlook.com','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('89357187 ','Orci Ut Sagittis Corporation','Viña del Mar','703203668','non.massa.non@icloud.ca','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('208206389','Eu Metus Limited','Los Sauces','370190186','arcu.vel@aol.org','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('399565804','Fermentum Corp.','Las Condes','671622546','nam.consequat@outlook.org','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('474591980','Accumsan PC','Cañete','517695071','a.felis@icloud.com','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('414126308','Eu Dolor Institute','Lolol','915846477','tempor.bibendum@aol.net','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('101882489','Elit Curabitur Sed Incorporated','Machalí','354296839','sed@yahoo.net','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('354988208','Nunc Quis Limited','Camiña','987683657','aenean.gravida@google.edu','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('298679981','Egestas Limited','Pelarco','749952409','quis.diam@google.org','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('182547492','Praesent Inc.','Llanquihue','165340593','sed.leo.cras@yahoo.com','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('309345843','Venenatis Vel Faucibus Company','Dalcahue','306315190','suspendisse.ac@outlook.ca','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('213848887','Vestibulum Ut Corp.','Litueche','944593886','lacus.mauris.non@yahoo.ca','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('246567689','Iaculis Lacus Foundation','Pica','923535736','felis.eget@aol.net','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('111999805','Vitae Foundation','Gorbea','877259182','eget.volutpat.ornare@yahoo.ca','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('198373583','A Mi PC','Isla de Pascua','153329745','et.lacinia@yahoo.edu','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('15886692 ','Risus Nulla Ltd','Camarones','662406765','magna.suspendisse@hotmail.net','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('179638347','Donec Est Corporation','La Unión','419163432','cursus.integer.mollis@icloud.com','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('4173554  ','Tempor Erat LLP','La Estrella','641018286','molestie.pharetra.nibh@aol.edu','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('427378969','Auctor LLP','Paine','389681906','dolor.elit@google.ca','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('144632206','Purus Institute','La Serena','176327054','sed.et@aol.org','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('107876006','Interdum Nunc Foundation','La Cruz','841096216','nunc.ac@icloud.ca','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('18144476 ','Ultrices Iaculis Corporation','Antártica','913783596','erat@yahoo.com','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('153797730','Nulla Corp.','Romeral','959567281','pede.nonummy@icloud.couk','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('134276096','Suspendisse Commodo Tincidunt Ltd','Colchane','613102519','id.risus.quis@aol.net','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('28769601 ','Fermentum Fermentum PC','Santa María','724687976','dictum@google.net','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('414405983','Arcu Vestibulum Ante Corp.','Illapel','967321752','arcu.sed@protonmail.org','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('494137917','Nisi Magna Sed Foundation','General Lagos','935197420','suscipit.nonummy@hotmail.ca','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('435743986','Mi Pede Limited','Futaleufú','435096542','adipiscing@google.net','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('31692229 ','Quam Corporation','Quemchi','479035422','dictum.proin@outlook.couk','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('473887223','Blandit Congue In LLC','Huara','243363778','nam@aol.com','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('47665655 ','Dictum Consulting','Nueva Imperial','776977088','maecenas.ornare@hotmail.org','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('329716341','Lorem Corporation','Paillaco','417220822','nisl.sem.consequat@outlook.ca','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('397375544','At Velit Associates','Carahue','913649097','magna.duis.dignissim@aol.edu','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('15103051 ','Cras Interdum Inc.','Andacollo','288400433','netus.et@icloud.ca','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('281429086','Accumsan Neque Company','Curanilahue','974836441','nam.ligula@yahoo.couk','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('184668459','Rhoncus Incorporated','Iquique','270349149','etiam.laoreet.libero@yahoo.org','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('155658673','Quis Massa LLP','Placilla','453787194','suspendisse@outlook.org','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('505575350','Ac Consulting','La Ligua','323459926','phasellus.at.augue@outlook.com','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('492664375','A Dui Cras Corporation','Mejillones','418932953','vitae.nibh@google.edu','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('284779576','Nulla Tincidunt Neque Institute','Timaukel','386772593','neque@outlook.org','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('24585191K','In Consectetuer Ipsum Inc.','María Elena','927736291','in.aliquet.lobortis@hotmail.couk','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('373127930','Sit Amet Luctus Corp.','Saavedra','148337990','iaculis.nec@icloud.net','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('21989363 ','Interdum Feugiat Industries','Chanco','428347550','interdum.feugiat@outlook.couk','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('30129252K','Sociosqu Ad Company','Salamanca','590539355','nisi.magna@icloud.couk','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('499907214','Penatibus Industries','Quilleco','699720284','lacus@yahoo.com','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('297133268','Convallis Dolor Quisque Consulting','Pichidegua','917395842','enim@outlook.edu','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('305371459','Donec Elementum Lorem Industries','Ollagüe','300360909','vulputate.posuere.vulputate@icloud.com','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('348584839','Ipsum Industries','San Rosendo','802126151','ac.risus.morbi@hotmail.com','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('35353739 ','Luctus Felis Purus Inc.','Santa Cruz','875801447','dui.fusce@google.com','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('39874988K','A Sollicitudin Incorporated','Camarones','171565479','vulputate.ullamcorper@google.net','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('3594589K ','Aenean Euismod Associates','Diego de Almagro','336550955','curabitur.ut@google.ca','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('303035109','Neque Non Quam Foundation','Valdivia','382524086','et.nunc@yahoo.edu','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('467304429','In Consectetuer Ipsum Corp.','Villarrica','297329154','a.neque.nullam@protonmail.edu','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('73646855 ','Nam Ac Nulla Industries','Camarones','455714383','dolor.sit.amet@outlook.couk','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('257513181','Sit Incorporated','Lolol','519427500','iaculis.nec@icloud.edu','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('404409468','Convallis Convallis Corporation','San Gregorio','241708734','suspendisse.sagittis@yahoo.com','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('283413098','Tempor Augue Ltd','Copiapó','567704486','nulla.interdum@hotmail.com','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('142515040','Volutpat Nulla Dignissim Associates','La Unión','216119094','donec.consectetuer@google.couk','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('153902305','Egestas Associates','Villa Alemana','324135696','tincidunt.neque@google.edu','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('61959084 ','Duis Ltd','Arica','221544900','ac.mattis@outlook.com','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('462405138','Ac Nulla Foundation','Lonquimay','154522935','nulla.ante.iaculis@hotmail.com','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('214657244','Dignissim Lacus Corporation','Coquimbo','920841281','vitae@aol.net','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('137354535','Arcu Vivamus Inc.','Tierra Amarilla','441624214','risus.nulla@protonmail.ca','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('25961984K','Placerat Corp.','San Ramón','603413448','dapibus.ligula@yahoo.net','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('67456629 ','Laoreet Lectus Institute','Hualañé','495375783','ridiculus.mus@aol.ca','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('263813154','Scelerisque Corporation','Vicuña','901327983','et.ultrices@aol.org','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('484837139','Pede Malesuada Foundation','Tomé','259891313','montes@google.com','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('9747273  ','Bibendum Ullamcorper Ltd','Ollagüe','539417842','donec.sollicitudin@icloud.net','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('39269570 ','Nunc Lectus Institute','Rauco','226504410','mollis.vitae.posuere@google.org','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('284058887','Augue Ltd','Perquenco','682844946','non@protonmail.ca','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('62781327 ','Pretium Aliquet Ltd','Natales','943459988','ante.ipsum@yahoo.ca','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('144267060','Posuere At LLP','Isla de Pascua','289280149','phasellus@protonmail.edu','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('194384718','In Sodales Ltd','Cochrane','243354673','nascetur.ridiculus.mus@aol.net','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('38975846 ','Ridiculus Mus PC','Negrete','420282178','mauris.magna.duis@aol.org','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('276197789','Nulla Cras Eu Industries','Calera','129562519','ut@google.org','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('31718591K','Auctor Velit Eget LLP','Arica','901508751','magna.duis.dignissim@icloud.com','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('314938402','Mauris Suspendisse Incorporated','Mariquina','777212862','malesuada.vel.convallis@outlook.ca','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('352182052','Dictum Ultricies Industries','Nogales','490883299','proin@protonmail.net','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('456061508','Dictum PC','Toltén','135946921','nisi.mauris.nulla@hotmail.net','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('265613845','Non Vestibulum Inc.','Lago Ranco','327320270','ut.aliquam.iaculis@yahoo.org','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('212691453','Neque Tellus Imperdiet Limited','Cabo de Hornos','837662223','lacus.etiam.bibendum@yahoo.edu','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('19776670 ','Ultrices Iaculis Foundation','Timaukel','582341907','ligula.tortor@icloud.couk','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('133745769','Sit Amet Institute','Andacollo','345297587','pede.praesent.eu@google.ca','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('412223284','In Tincidunt Corp.','Molina','917921688','aliquet.sem@yahoo.couk','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('172256945','Quisque Fringilla Institute','Iquique','138441235','metus.vitae@aol.com','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('81009171 ','Dui Ltd','Caldera','761536956','vivamus@google.net','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('471618829','Sit Amet Inc.','Arica','976493069','consequat.nec.mollis@outlook.couk','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('425983792','Lacus Varius Associates','Lumaco','974488645','cras.sed.leo@icloud.net','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('307244713','Ridiculus Mus LLP','María Elena','453214022','magna.suspendisse@hotmail.com','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('202236057','Mauris Company','Tocopilla','199886753','cras.interdum@yahoo.net','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('82237232 ','Risus Donec Incorporated','Lago Ranco','492669268','egestas@aol.ca','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('34926948 ','Pede Praesent Company','Puerto Montt','427649066','morbi.neque.tellus@aol.couk','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('433627474','Ultrices Posuere Cubilia Inc.','Ollagüe','420611864','in.dolor.fusce@icloud.net','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('13595356 ','Ultrices Sit Amet Ltd','General Lagos','525965085','nascetur.ridiculus.mus@yahoo.org','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('506836336','Erat Volutpat Nulla LLP','Camarones','246846385','eget.metus@protonmail.net','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('481422981','Augue Institute','Futaleufú','322966199','quis.arcu.vel@hotmail.com','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('26565259K','Nulla Integer Corp.','Natales','841871258','integer.sem@yahoo.ca','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('67811887 ','Adipiscing Elit Limited','Vallenar','396869509','gravida.molestie.arcu@yahoo.edu','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('319177450','Et Magnis Dis Company','Máfil','979116983','nec.cursus@aol.com','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('245108745','Ipsum Company','Dalcahue','206395996','tellus.imperdiet@outlook.org','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('408872804','Sed Orci LLC','Calama','520827324','dictum.eu.eleifend@icloud.net','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('224909616','In Associates','Camiña','164490876','pede.et.risus@aol.ca','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('419903191','Diam Lorem Ltd','Alto del Carmen','294554578','vehicula.pellentesque@google.ca','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('441473079','Tincidunt Industries','Diego de Almagro','697740383','id@google.couk','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('47389852 ','Donec Non LLP','Primavera','462596427','tempor.bibendum@hotmail.org','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('14984895 ','Magna Sed Dui LLC','La Ligua','529454621','dui.nec@outlook.net','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('9451978  ','Montes Limited','Río Verde','941404802','ridiculus@aol.edu','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('295813342','Adipiscing Enim Company','Catemu','467762519','sagittis.semper@aol.ca','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('191472926','Massa Rutrum Company','Vilcún','550755153','aliquet.diam.sed@protonmail.ca','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('95546668 ','Vitae Mauris Sit Incorporated','Coihaique','893869362','dui.quis.accumsan@aol.com','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('242616111','Vivamus LLC','Camiña','925226446','arcu@yahoo.couk','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('165048997','Nulla Institute','Porvenir','915944566','netus.et.malesuada@aol.edu','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('496598423','Sodales Industries','Chanco','641743068','nisi.sem@aol.net','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('437246955','Donec Vitae Industries','Lonquimay','607130103','maecenas@yahoo.couk','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('585262   ','Sem Mollis Inc.','Temuco','191769544','vulputate.velit@yahoo.net','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('327282182','Mollis Duis Sit LLC','San Ignacio','139300884','ultrices.posuere@icloud.net','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('226789138','Nulla At Corp.','Mariquina','290253772','nascetur@google.org','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('307874636','Dolor Dapibus Gravida Associates','Colbún','739131155','malesuada@yahoo.ca','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('283904342','Etiam Vestibulum Industries','Salamanca','912053434','vel.convallis@hotmail.couk','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('6463266  ','Nullam Nisl Maecenas LLP','O Higgins','386822956','ut.nec@hotmail.com','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('154572643','Donec Consectetuer Consulting','San Javier','169888964','non.hendrerit@aol.net','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('292613K  ','Nisi Mauris Associates','El Bosque','916127608','cras@hotmail.net','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('3121062  ','Sem Ut Ltd','Puyehue','537191516','mi.tempor.lorem@protonmail.net','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('9965491  ','Massa Integer Company','Arauco','806120807','porttitor.eros@aol.ca','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('77866159 ','A Enim Inc.','Talagante','473688774','ridiculus.mus@google.net','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('318627053','Quisque Varius Industries','Villa Alegre','631410431','neque.venenatis@icloud.com','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('7433263  ','Aliquet Corporation','Antofagasta','216029669','felis.orci@hotmail.com','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('474744981','Non Vestibulum Foundation','San Javier','415552822','aliquet.vel.vulputate@google.ca','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('75981260 ','Neque Pellentesque Massa LLP','Licantén','275090008','nec.ligula@hotmail.couk','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('333357453','Neque Non Quam PC','San Pedro de Atacama','578983801','diam@yahoo.org','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('474214842','Natoque Penatibus Associates','Pozo Almonte','432674050','faucibus@protonmail.net','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('15843783K','Sed Molestie LLP','Guaitecas','905463623','nunc.sed@outlook.com','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('267655170','Morbi Quis Institute','Guaitecas','184905526','proin.ultrices@outlook.ca','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('352594253','Cursus Integer Mollis Corp.','Padre las Casas','666588343','dolor@yahoo.couk','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('44889620K','Duis Ac Arcu Inc.','Coinco','379621222','felis.purus.ac@outlook.edu','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('411216543','Blandit Congue Foundation','Tierra Amarilla','300346010','lectus.nullam@protonmail.com','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('93988434 ','Ut PC','Valdivia','998919397','sed.pede@hotmail.com','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('273246207','Suscipit LLC','Quellón','661899877','eu.dolor.egestas@aol.net','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('165747860','In Scelerisque Scelerisque Institute','Ránquil','385635829','nec@protonmail.ca','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('67467604 ','Interdum Feugiat PC','Torres del Paine','291751846','et.euismod.et@icloud.couk','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('13722853K','Ultrices Vivamus Consulting','Punitaqui','184489098','cursus.vestibulum.mauris@google.org','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('94109094 ','Feugiat Non Foundation','Mariquina','895305479','maecenas.libero@outlook.org','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('35297170 ','Purus PC','Viña del Mar','593126646','nulla.vulputate@aol.com','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('83694025 ','Dictum Eu Incorporated','Laja','994623106','rhoncus@google.couk','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('326344087','Nisi Aenean Eget Corporation','Cabo de Hornos','305573682','facilisi@protonmail.ca','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('36326484 ','Et Pede Institute','Punta Arenas','395103580','luctus.vulputate@outlook.org','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('17176341K','Senectus PC','Calle Larga','766114694','aliquam.eu.accumsan@hotmail.ca','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('93337816 ','Proin Velit Limited','Diego de Almagro','944316696','etiam.vestibulum.massa@aol.ca','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('425478532','Amet Dapibus Id Ltd','Chépica','422957357','orci.luctus.et@yahoo.ca','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('255127535','Nisl Elementum Associates','Padre las Casas','769786469','mauris.vestibulum@google.couk','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('38175335 ','Vestibulum Nec Inc.','Salamanca','441967573','pede.suspendisse.dui@aol.edu','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('494448386','Laoreet Inc.','Los Lagos','955705390','consectetuer@yahoo.com','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('283424340','Sem Semper Erat Inc.','Timaukel','879069779','non@icloud.com','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('351324694','Faucibus Morbi Ltd','Placilla','667169661','egestas.duis.ac@hotmail.org','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('448141047','Et Corporation','Chaitén','352793946','sem.consequat.nec@protonmail.com','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('16691933 ','Pharetra Corporation','Putre','953055587','pharetra.sed@hotmail.edu','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('148473560','Lorem Associates','Cisnes','551247398','eget.volutpat@icloud.edu','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('26236643K','Sed Industries','Taltal','745120297','adipiscing.elit.aliquam@icloud.net','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('357725666','Tempus Scelerisque Institute','Puerto Octay','734883651','sagittis.felis@icloud.edu','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('177655449','Dui Fusce Aliquam Ltd','Los Lagos','552108588','sit.amet.massa@outlook.couk','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('266868855','Iaculis Lacus Incorporated','Licantén','647067854','nulla.aliquet@protonmail.edu','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('358027199','Vel Limited','Collipulli','783718831','ipsum@yahoo.net','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('235036134','Vitae Posuere Industries','Cauquenes','172978658','lacinia@protonmail.edu','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('1270531K ','Egestas Sed Associates','San Ignacio','984828291','enim.sed.nulla@outlook.org','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('454206428','Tortor Ltd','Constitución','987445173','ultricies.ligula@outlook.org','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('3018490  ','Donec Est Nunc Foundation','Lago Verde','653956941','eros.non.enim@google.org','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('221396804','Convallis Inc.','Iquique','786677996','nunc@outlook.org','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('37701262 ','Egestas Nunc Company','Máfil','942711655','eget@outlook.net','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('406635619','Lobortis Nisi Nibh Ltd','Pumanque','663936259','justo.proin.non@outlook.com','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('235959453','Integer Aliquam Incorporated','General Lagos','128946642','tellus.lorem@google.edu','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('19987814K','Nec Eleifend Non Incorporated','Palmilla','987990762','viverra.maecenas@google.couk','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('114135887','Dignissim LLC','Tocopilla','426413918','auctor.mauris@google.edu','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('139628586','Mollis Phasellus Ltd','Codegua','672611121','congue@google.couk','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('358982867','Id Corp.','Yerbas Buenas','448658822','urna.nec@hotmail.edu','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('481202655','Quisque PC','Torres del Paine','935118045','leo.in@hotmail.net','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('147021089','Sagittis Nullam Limited','Diego de Almagro','610943568','tempor.est@yahoo.ca','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('30813790 ','Ultrices Mauris Ipsum Institute','Quinchao','504116997','ut.odio@hotmail.edu','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('312401584','Vestibulum Accumsan LLC','Hualpén','642786617','molestie.orci.tincidunt@icloud.com','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('451907476','At Industries','Iquique','735052176','mi.fringilla@yahoo.edu','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('147299265','Sem Semper LLC','Panquehue','184172464','luctus@icloud.ca','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('411659623','Gravida Mauris Ut Corporation','Pica','858714825','nam.interdum.enim@google.org','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('4745543K ','Sed Inc.','Tirúa','591664053','quis.lectus@aol.edu','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('71904857 ','Commodo At Foundation','San Juan de la Costa','937222686','amet@google.net','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('499854005','Lorem Ipsum Dolor Incorporated','Lago Ranco','970668188','eget.mollis.lectus@aol.net','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('287669062','Odio Aliquam Vulputate Institute','Timaukel','390315002','sodales.mauris@protonmail.org','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('21231975 ','At Industries','Putre','462108960','lectus@icloud.net','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('187241987','Rhoncus Proin Foundation','Los Lagos','348488081','gravida.praesent.eu@hotmail.couk','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('451413686','Integer Id LLC','San Pablo','198621631','a.sollicitudin.orci@outlook.net','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('374412353','Nibh Foundation','Linares','618404150','egestas@outlook.edu','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('187068037','At Foundation','La Unión','123557574','porttitor.vulputate@hotmail.couk','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('866431   ','Semper Inc.','Algarrobo','184257447','tristique.senectus@outlook.net','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('98913599 ','Maecenas Iaculis Aliquet Incorporated','Curaco de Vélez','813629871','non.cursus@hotmail.com','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('505762266','Nec Urna Suscipit Industries','Recoleta','637950288','pede@aol.org','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('488114433','Auctor Quis Limited','Casablanca','164671113','bibendum@icloud.edu','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('7257558K ','Purus Duis LLC','Laguna Blanca','529886751','dui.cras@aol.com','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('47651875K','Erat Semper Corp.','Perquenco','829613175','libero.et@hotmail.org','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('10403747K','Parturient Montes Corporation','Quillón','994953582','proin.vel@aol.com','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('19549852 ','Accumsan Interdum Corporation','Taltal','779081411','vel.mauris@yahoo.org','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('91227843 ','Eget Consulting','Cisnes','360949764','eu.euismod.ac@google.edu','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('234674250','Urna Vivamus Corporation','Lo Barnechea','613441788','magna.duis@yahoo.couk','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('325711787','Risus A Ultricies LLP','Hijuelas','427276283','erat.volutpat@google.ca','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('219077319','Magnis Dis Parturient Ltd','Sierra Gorda','229975588','fringilla.cursus@icloud.edu','Armeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('314776445','Porta Elit Associates','Camarones','331100706','sed@protonmail.net','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('205714634','Proin Nisl LLP','Camiña','420712914','donec.consectetuer@protonmail.ca','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('203015186','Nec Ligula Inc.','Puente Alto','200739506','cursus.a@protonmail.net','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('444418036','Non Enim PC','Pirque','140761335','iaculis.lacus@icloud.com','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('3489906  ','Malesuada LLC','Futaleufú','130915337','dapibus@google.couk','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('393723920','In Corporation','Chañaral','345924351','dui.cras@icloud.net','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('95496709 ','Et Lacinia Institute','Yumbel','786391255','nulla@icloud.com','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('314463323','Lectus Rutrum Corporation','San Pedro de Atacama','155922120','porttitor.vulputate.posuere@outlook.couk','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('356168712','Ut Sem LLP','Providencia','511547814','donec@yahoo.net','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('476094755','Primis In Institute','Victoria','812289430','velit.justo.nec@google.org','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('43204297 ','Rutrum Lorem Limited','Curacautín','411830089','luctus.et.ultrices@aol.org','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('46386183 ','Mauris A Nunc PC','Parral','520004276','ipsum.phasellus@icloud.couk','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('143549852','Sed Facilisis Foundation','Timaukel','566476165','etiam.vestibulum@outlook.com','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('209684306','Egestas Aliquam Corp.','O Higgins','152749891','velit.egestas@aol.net','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('185126374','Ultrices Duis Corporation','Mostazal','502438943','a@google.ca','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('39185938 ','Nisl Nulla Foundation','Río Verde','303620105','ullamcorper@google.couk','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('411691667','Placerat Augue LLP','Río Verde','168896361','aliquet@icloud.couk','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('273407472','Tortor At Risus Corp.','Copiapó','937446521','consequat@hotmail.edu','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('139428161','Ut Lacus Corporation','Putre','446075474','amet.orci@outlook.edu','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('468969718','Vel Faucibus Limited','Colchane','343276801','cursus@aol.com','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('27166558K','Amet Faucibus Incorporated','Papudo','301871622','morbi.vehicula@google.edu','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('28403534 ','Aliquam Tincidunt Corporation','Portezuelo','527365856','suspendisse.sed.dolor@aol.org','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('445389560','Risus Quis LLC','Negrete','790903537','magnis.dis@aol.edu','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('127507457','Facilisis Non Bibendum Company','Putre','518905733','diam@google.edu','Armeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('119702305','Dictum Eu Foundation','Tiltil','382009932','aliquam.auctor@google.ca','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('161071536','Tellus Id Nunc Industries','Torres del Paine','196151644','non.nisi@aol.org','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('357911575','Libero Foundation','Calama','287236802','vestibulum@yahoo.couk','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('4974050  ','Arcu Imperdiet Inc.','Lago Ranco','719189994','integer.vitae@outlook.com','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('128621687','Ornare Lectus Ante Foundation','Litueche','658228735','nibh@icloud.net','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('104658911','Mollis Lectus Pede LLP','Futrono','593542132','nec.metus@yahoo.couk','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('168678282','Sed Ltd','San Carlos','967976400','eu@outlook.org','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('488011340','Lacus LLC','Punitaqui','412581100','sapien@icloud.couk','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('348663399','Egestas Aliquam PC','Futrono','172881515','eu.elit@protonmail.com','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('307189658','Dui In Ltd','Coihaique','674425727','risus@aol.couk','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('393335653','Amet Corporation','Treguaco','153351522','vehicula.risus@outlook.couk','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('158504901','Curae Donec LLC','General Lagos','972178078','pede.ultrices@protonmail.net','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('208242970','Eu Industries','Coihaique','673513657','penatibus.et.magnis@protonmail.net','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('26654092 ','Nisl Maecenas Associates','Pirque','851871957','adipiscing.lacus@google.ca','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('336166071','Est Nunc Consulting','San Pedro','427614378','enim.mauris@google.couk','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('166553865','Eleifend Vitae Corporation','Pica','511702072','ut.nec@aol.com','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('468185776','Congue PC','Vallenar','917249451','ultricies.ornare.elit@hotmail.couk','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('118067649','Penatibus Et Corporation','Colchane','320994670','enim.gravida@outlook.edu','Armeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('19886344 ','Nunc Quisque Corp.','Lanco','630293942','turpis.aliquam@google.net','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('344844038','Sociis Natoque Penatibus LLP','Ollagüe','396292633','aliquam.eros.turpis@yahoo.couk','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('254276561','Elit Nulla Corp.','Tocopilla','935545954','id@yahoo.edu','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('45171302 ','At Foundation','Puente Alto','769481676','diam.duis@hotmail.org','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('275985449','Ridiculus Mus Company','Ancud','414496633','commodo@aol.edu','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('501216755','Tincidunt LLP','Colbún','415894081','malesuada.fames@hotmail.org','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('92786854 ','Elit Foundation','Nancagua','886506839','accumsan.laoreet@protonmail.com','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('4421508K ','Nonummy Ipsum Non LLC','Taltal','740831943','et.netus@icloud.net','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('2237148  ','Porttitor Consulting','Lebu','750784044','ipsum.nunc@yahoo.org','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('237577450','Ut Ipsum Ac Incorporated','Puente Alto','586503419','dictum@protonmail.couk','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('442885249','Velit Quisque LLP','Romeral','884320034','lorem@aol.com','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('282528975','Augue Scelerisque Mollis Foundation','Curicó','907230533','felis.orci@google.edu','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('186377761','Ultrices Posuere Cubilia Ltd','Isla de Maipo','454413170','arcu.curabitur@yahoo.com','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('392758968','Proin Non Massa Ltd','Mostazal','442042628','egestas.hendrerit.neque@hotmail.com','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('439535938','Aliquam Eros Limited','Timaukel','495195387','turpis@protonmail.ca','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('214465671','Neque Vitae Institute','María Elena','495118484','vestibulum.neque@hotmail.ca','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('248259523','A Auctor Corporation','Coquimbo','517973213','nunc.sed@protonmail.net','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('33383789 ','A Enim Consulting','Huara','724692036','lorem.eu@hotmail.edu','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('16704601 ','Venenatis A Limited','Ovalle','818944260','etiam@yahoo.com','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('174578419','Nunc Sit Associates','Coquimbo','455505600','et.netus@outlook.edu','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('1014986  ','Inceptos Hymenaeos Mauris Ltd','Huara','334048543','mauris.sapien@outlook.couk','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('202879764','Nec Imperdiet Company','San Rafael','744780455','lacinia.at@aol.com','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('373857270','Eu Accumsan Sed LLP','Arica','642279063','fames.ac.turpis@hotmail.com','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('38595385 ','Ante Ipsum Company','O Higgins','747438804','in.faucibus.orci@aol.com','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('309573854','Sagittis Felis LLP','Arica','842317976','leo.morbi@outlook.edu','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('265664687','Ut Lacus Nulla Industries','Alto Hospicio','736457756','vehicula.et@aol.com','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('418724021','Porta Elit LLC','Primavera','459208694','est.mauris@aol.ca','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('334481484','Cursus LLC','Pozo Almonte','638166270','elementum.dui@icloud.net','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('434259495','At Fringilla PC','Caldera','731413969','ipsum.suspendisse@google.couk','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('339395519','Interdum Ligula Corp.','Olmué','542053302','mollis.duis@protonmail.com','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('151209114','Tellus Lorem Eu Corporation','General Lagos','867387837','libero.donec.consectetuer@outlook.com','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('113421002','Vel Mauris Industries','General Lagos','262296117','adipiscing@hotmail.edu','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('3114244  ','Fusce Mollis Corp.','Alto Hospicio','329644956','in.lorem@aol.ca','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('19906570K','Sed Eu Ltd','Huara','742750144','odio.a@google.couk','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('388075376','In Tempus Institute','Romeral','943818300','blandit@aol.ca','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('328893606','Felis LLC','Huasco','550447653','sociis.natoque@google.com','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('105314094','Dolor Dapibus Foundation','Antártica','692338308','sem.ut@hotmail.net','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('49910572K','Lorem Luctus Ut Foundation','Quinta de Tilcoco','727574213','per@google.net','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('32377465K','Tristique Incorporated','Tierra Amarilla','394256340','scelerisque@hotmail.edu','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('456667597','Egestas Nunc PC','La Higuera','333769881','lacus.nulla@icloud.net','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('342127002','Gravida Non Consulting','Valdivia','972775895','euismod@hotmail.org','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('204694087','Lorem Ut Aliquam Inc.','Talca','475150179','ornare@outlook.couk','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('163246392','Pretium Aliquet Metus Institute','Alto del Carmen','539956516','neque.in@outlook.com','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('72642503 ','Phasellus Fermentum Convallis Associates','Ollagüe','663192882','metus.urna.convallis@hotmail.com','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('442185182','Magna Suspendisse Institute','Ollagüe','241336490','tellus.aenean.egestas@hotmail.com','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('318896623','Nulla Vulputate Dui Foundation','Río Hurtado','551505594','sagittis.augue.eu@google.com','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('16736179K','Mollis Nec Incorporated','Teno','757636848','arcu.aliquam@protonmail.ca','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('491924748','Vitae Diam Corp.','Tocopilla','907303405','dictum@google.com','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('429131545','Lorem Ut Corporation','Guaitecas','545009152','pellentesque.sed@protonmail.edu','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('25198824 ','Erat Neque LLC','Valparaíso','808353281','in.lorem@aol.com','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('34886730K','Neque Sed Eget Limited','Iquique','772266488','sodales.at@yahoo.net','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('45572528 ','Proin Nisl Ltd','Cochrane','715191945','nonummy.ac@icloud.net','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('455612292','Sed Facilisis Vitae Corporation','Los Vilos','299212191','in.tincidunt@google.org','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('251602476','Eget Ipsum Incorporated','Mejillones','536229492','mauris@outlook.ca','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('305111147','Duis Ltd','Camarones','726992774','gravida@aol.com','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('474422038','Sapien Cursus In Corporation','Pelarco','483260227','ipsum@hotmail.couk','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('13575657 ','Molestie In Tempus Incorporated','Hualañé','337977061','lorem.luctus@hotmail.edu','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('194777485','Nonummy Fusce Institute','Padre Hurtado','435248975','consectetuer.rhoncus@aol.ca','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('354869675','Pede Ltd','Torres del Paine','415814923','purus@icloud.net','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('235734087','Nunc Risus Consulting','Curepto','973216373','purus.mauris.a@outlook.edu','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('265486487','Aliquet Odio LLP','Freirina','893815270','in.dolor@icloud.org','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('398667913','Urna Vivamus Consulting','Vallenar','882238640','tellus.suspendisse@aol.org','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('386798737','Fringilla Euismod Industries','La Higuera','741420368','fusce@hotmail.org','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('27585770K','Curabitur Corporation','Antártica','242724408','eget@protonmail.edu','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('441039158','Suspendisse Aliquet Sem Ltd','Illapel','882613508','felis.ullamcorper.viverra@aol.ca','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('21636975 ','Donec Egestas Duis Incorporated','Ancud','447888713','proin.mi.aliquam@outlook.edu','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('64991299 ','Odio Vel Est Incorporated','Recoleta','165417215','maecenas@aol.com','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('408011671','Magna Corporation','Coinco','462082873','ultrices.sit.amet@aol.net','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('31454956 ','Faucibus Orci Institute','Los Sauces','290095593','arcu.eu@icloud.net','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('35799850 ','Ut Industries','Lebu','528492609','nibh.vulputate@google.edu','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('501271381','Lectus Pede Corp.','Cobquecura','538412368','tempus.lorem.fringilla@aol.com','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('319097287','Ac Turpis Inc.','María Elena','590066182','at.sem@yahoo.edu','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('25603722K','Quam PC','Salamanca','854857257','sociosqu.ad.litora@hotmail.ca','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('215946150','Arcu Vivamus Sit Foundation','María Elena','865398459','proin.mi@hotmail.edu','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('58108111 ','Sit Amet Corporation','Negrete','308064143','morbi@outlook.ca','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('273011439','Purus Ac Tellus Institute','Ovalle','140560150','turpis.nulla@outlook.edu','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('369262688','Eget Ipsum Corporation','Primavera','348509711','eget.venenatis@protonmail.com','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('555517   ','Diam Lorem Corp.','Antuco','698878297','amet.lorem@yahoo.org','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('115236245','Interdum Enim Inc.','Saavedra','385727620','fermentum@protonmail.com','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('284795962','Lorem Ut Associates','Punitaqui','888026819','diam.nunc@outlook.com','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('308671909','Non Sapien Industries','Huara','569499583','magnis.dis@google.net','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('119767687','Porttitor Tellus Limited','Andacollo','200675118','ac.metus@yahoo.ca','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('209321599','Vel Sapien Imperdiet Industries','Concón','513370801','a.tortor.nunc@icloud.edu','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('392657657','Phasellus Fermentum Inc.','María Pinto','814921585','ut@aol.ca','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('306413414','Non Ante Bibendum Associates','Freirina','688061541','cursus@google.edu','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('13189676 ','Urna Nec Incorporated','Río Negro','556459075','quis.arcu@yahoo.org','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('46794116K','Convallis In Ltd','Aisén','455849872','adipiscing@hotmail.couk','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('506882532','Porttitor Tellus Foundation','Calama','640604097','accumsan@hotmail.org','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('369851101','A Nunc Industries','Panquehue','369731246','non@yahoo.couk','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('26296153 ','Vel Ltd','Alto del Carmen','859548417','nulla.vulputate@outlook.edu','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('204675465','Tellus Nunc Limited','Torres del Paine','424235689','elit.a@protonmail.net','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('393304200','Lacus Quisque Inc.','Doñihue','205871228','cubilia@outlook.net','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('498198724','Id Mollis Nec LLC','Negrete','252754722','eget.dictum@aol.org','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('466866113','Sociis LLC','Villarrica','897517171','nec.imperdiet@yahoo.com','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('46335829K','Pede Suspendisse Institute','Freire','850749248','mollis@protonmail.ca','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('166723302','Ligula Consectetuer Industries','Cabo de Hornos','757097633','erat.vel.pede@protonmail.net','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('245762488','Sit Foundation','Putre','451634500','adipiscing.non@aol.ca','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('364442343','Fusce Aliquet Magna Industries','Huasco','964836955','orci@aol.ca','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('166047684','Mi Ac Mattis Corporation','Vicuña','804634834','proin@google.net','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('439725850','Dictum Eu Inc.','Pelarco','799381132','ut.cursus.luctus@hotmail.com','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('277486407','Nulla Aliquet PC','Melipilla','897649772','est.arcu@hotmail.couk','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('36653612 ','Consectetuer Ipsum Inc.','Putre','832202093','pretium.aliquet@aol.ca','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('147981155','Quis Diam Pellentesque PC','Hualañé','153500684','nulla.semper@yahoo.net','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('509714991','Enim Curabitur Massa Limited','Chañaral','535900012','neque.nullam@outlook.couk','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('408418593','Libero Lacus Varius Consulting','Curicó','339782623','aenean.euismod@google.org','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('369805819','Amet Ultricies Foundation','Huasco','983678097','tempus.lorem@yahoo.couk','tecnico');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('338949383','Donec Tincidunt Donec Incorporated','Caldera','741302177','elit.pellentesque.a@yahoo.couk','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('409835201','Fringilla Cursus Purus LLC','María Elena','203491708','arcu.sed.et@hotmail.org','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('471678597','Arcu Ac LLP','Coquimbo','330634059','euismod.in@google.couk','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('344498601','Magna Ut Company','Hualañé','706476015','malesuada.fames.ac@protonmail.com','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('40911286 ','Senectus Company','La Higuera','526955712','elementum.dui@google.ca','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('203725795','Enim Gravida Sit Incorporated','La Serena','920336817','consequat.enim.diam@aol.ca','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('114446416','Nunc Company','Paiguano','560649501','mauris.erat@google.ca','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('108567848','At Auctor Foundation','Camiña','838253896','ipsum.dolor.sit@hotmail.edu','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('1573809K ','Lectus Sit Amet PC','Lanco','855135764','nulla.at@aol.net','Delivery');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('306169920','Varius Corp.','Los Vilos','689376732','vel.quam@icloud.edu','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('15185384 ','Etiam Consulting','María Elena','390220740','vel.turpis.aliquam@aol.couk','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('363905358','Ante Iaculis Incorporated','Villa Alemana','412360890','blandit@protonmail.edu','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('279663780','Erat Limited','Villa Alemana','422933146','tellus.faucibus@google.couk','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('186729714','Aliquam Arcu Corp.','Cholchol','716187946','curabitur@yahoo.org','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('356422309','Sagittis Augue Eu Associates','Huasco','496608147','scelerisque.dui@aol.couk','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('304275448','Senectus Et Netus Industries','Freire','807546255','nunc@protonmail.com','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('459898492','Gravida Institute','San Vicente','635618540','cursus@protonmail.org','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('268092986','Porttitor Interdum Corp.','Río Ibáñez','734648480','magna.tellus.faucibus@aol.edu','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('194005334','Porta Elit Industries','Retiro','656761627','suscipit.nonummy@outlook.com','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('495356744','Feugiat Nec Diam Inc.','Huasco','717927827','elit@hotmail.org','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('447968401','In Faucibus Orci Industries','Cisnes','706566411','porta.elit@google.ca','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('2947323  ','Lorem LLP','Nancagua','364072222','mauris.morbi@outlook.ca','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('409552617','Nullam Velit Dui Foundation','Cochrane','310161052','consectetuer@protonmail.edu','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('485131353','Aliquet Metus Urna Incorporated','Santiago','500657376','phasellus@hotmail.couk','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('407824008','Massa Quisque Corp.','Chimbarongo','568303752','porttitor.vulputate@google.ca','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('193756026','Ac Urna Corporation','Puerto Octay','446519978','ac@yahoo.ca','Restaurant');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('6174396  ','Lacus Pede Corp.','Vicuña','417536990','fusce.feugiat@outlook.ca','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('424966274','Nonummy Ipsum Non Ltd','Río Negro','763027782','non@outlook.ca','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('403641898','Ante Foundation','Lonquimay','228914279','aliquet.metus@aol.net','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('6143164  ','Sollicitudin Commodo PC','Chanco','984862686','eros.nam@aol.net','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('1892577K ','Sem Corporation','Melipilla','166020902','elementum@icloud.couk','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('491782773','Erat Vitae Ltd','Calama','218886066','lacus.etiam@google.edu','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('162512366','Suspendisse Aliquet Molestie LLP','Porvenir','762184111','mi.tempor.lorem@yahoo.couk','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('332519662','Non Quam Pellentesque Inc.','Vichuquén','316659388','leo@google.org','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('43587633 ','Facilisis Suspendisse Commodo Inc.','Mulchén','469748383','semper.cursus@aol.com','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('427509826','Sed Dictum Foundation','General Lagos','709384257','luctus@yahoo.net','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('40951628 ','Suspendisse Aliquet Foundation','Pica','372970441','torquent.per@protonmail.org','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('291416845','Enim Mauris Quis Institute','María Elena','861181439','tellus.suspendisse@yahoo.net','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('236458938','Phasellus Ornare Fusce Limited','Alhué','186341547','mattis.integer@yahoo.com','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('452348977','Tristique LLP','Tocopilla','899388863','ipsum.phasellus.vitae@aol.net','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('77054065 ','Nulla Tempor LLC','Río Verde','837620449','nibh.phasellus@aol.couk','impresora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('54542259 ','Id Ltd','Negrete','266412015','arcu@hotmail.net','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('28246571K','Ligula Aenean Corp.','Alto Hospicio','281923525','mauris.suspendisse@yahoo.couk','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('348769294','Odio Semper Limited','Pozo Almonte','952577721','aliquet.sem@outlook.net','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('318625190','Turpis Institute','Cisnes','798977493','dis.parturient.montes@protonmail.ca','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('71377113 ','Vestibulum LLC','Angol','509757295','lorem.ipsum@hotmail.com','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('248555092','Facilisis Vitae Orci Foundation','Camarones','644402766','donec@google.couk','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('41583282 ','Sagittis Semper Nam Corp.','Coltauco','713124404','augue.scelerisque@yahoo.net','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('372104228','Neque Pellentesque Limited','Antuco','238904783','duis.sit@google.couk','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('4991654K ','Elit Etiam Laoreet LLC','Aisén','700251383','in.hendrerit.consectetuer@outlook.net','Mineria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('49176856 ','Duis Elementum PC','Río Bueno','239535766','scelerisque.scelerisque@google.couk','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('7464113K ','Dapibus Industries','Empedrado','242826954','nam@hotmail.ca','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('439357134','Mauris Magna Institute','Machalí','159891305','ante.maecenas.mi@aol.net','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('476705991','Mauris Molestie Corporation','Laguna Blanca','335533219','in.aliquet@hotmail.ca','Tienda');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('328176777','Mattis Inc.','Calle Larga','214854161','mi.lorem.vehicula@outlook.ca','Etiquetas');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('242748565','Diam At Limited','Arica','210194656','erat@icloud.ca','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('343723288','Velit In Aliquet LLP','Pucón','928671179','eu.erat@icloud.net','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('115644971','Risus Donec PC','Quillón','649043285','est.mollis@google.ca','Zapateria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('148572011','Donec Non Corp.','Chaitén','412487787','orci@aol.ca','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('117335909','Commodo PC','Concón','683961513','ut.quam@outlook.net','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('496102185','Tempus Risus PC','Licantén','507078353','ut.semper@aol.edu','Armeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('162187767','Pretium Incorporated','Coihaique','993461634','natoque@yahoo.ca','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('63456039 ','Purus Incorporated','El Bosque','484711651','neque.non@protonmail.couk','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('115846051','Duis Risus Institute','Doñihue','414834847','dignissim@outlook.com','Comida');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('371367365','Gravida Praesent Industries','Puchuncaví','873225583','pede.blandit.congue@yahoo.net','articulos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('108168846','Risus Nunc PC','Lago Verde','889223993','urna.ut@outlook.ca','instrumentos');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('326386758','Cursus A PC','Camarones','983136646','elit.pede.malesuada@yahoo.com','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('11183328 ','Maecenas Iaculis Aliquet PC','Copiapó','917641605','aliquet.nec.imperdiet@outlook.com','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('337716474','Adipiscing Enim Institute','Tortel','606206139','pharetra.nibh@outlook.ca','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('417106146','Curabitur Vel Lectus Associates','Panguipulli','500419959','metus.aenean.sed@hotmail.edu','Automotora');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('339506043','Urna Justo Foundation','Alto Hospicio','724151040','elit.dictum@protonmail.net','Universidad');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('27537200 ','Augue Industries','Los Muermos','251461682','nunc@outlook.ca','Relojeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('193394035','Sit Amet Corp.','Tortel','793225955','tellus.nunc@icloud.org','Servicio');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('37529710 ','Lorem Sit Amet LLC','Codegua','207780445','nullam.velit@outlook.net','Mecanica');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('246599750','Ut Erat Sed LLC','Ercilla','966499434','pede.nunc@yahoo.edu','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('446058231','Vitae Sodales Inc.','Licantén','779878660','fermentum.arcu@outlook.com','Armeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('22808400 ','Congue Ltd','Arica','792440619','a.mi@yahoo.edu','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('1121889K ','Fringilla Purus Incorporated','Vicuña','856912985','sit.amet@yahoo.org','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('401484841','Euismod Enim Corp.','Nogales','142704448','sed.dui.fusce@protonmail.com','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('4432029  ','Phasellus Libero PC','Panquehue','934965922','pretium@hotmail.edu','Armeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('178926136','Imperdiet Erat Nonummy Consulting','Florida','858007495','sed.sem.egestas@yahoo.ca','de');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('363764258','Vitae Diam Proin Institute','Talca','875596611','dolor.sit.amet@aol.edu','Armeria');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('499572360','Parturient Montes LLC','Río Bueno','923727447','sollicitudin@hotmail.edu','automotriz');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('28269870 ','Ornare Associates','Sierra Gorda','540907330','non.lorem@yahoo.edu','oficina');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('436711603','Euismod In Dolor PC','Curacautín','234332167','gravida@hotmail.com','Venta');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('385726090','Nulla Aliquet Proin Inc.','Guaitecas','435148241','euismod.mauris.eu@icloud.couk','ropa');
Insert into SAFECORE.CLIENTES (RUT_CLIENT,NOMBRE,DIRECCION,TELEFONO,CORREO,RUBRO) values ('47413370 ','Semper Incorporated','Chile Chico','591437163','eget.ipsum@protonmail.com','Tienda');
REM INSERTING into SAFECORE.CONTRATOCLIENT
SET DEFINE OFF;
REM INSERTING into SAFECORE.CONTRATOPROF
SET DEFINE OFF;
REM INSERTING into SAFECORE.PAGOS
SET DEFINE OFF;
REM INSERTING into SAFECORE.PROFESIONAL
SET DEFINE OFF;
REM INSERTING into SAFECORE.REPORTEACCIDENTE
SET DEFINE OFF;
REM INSERTING into SAFECORE.REPORTECLIENTE
SET DEFINE OFF;
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('0','0        ',to_date('06/05/23','DD/MM/RR'),'Un profesional sufri� muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('1','194135807',to_date('07/05/23','DD/MM/RR'),'Un profesional sufre muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('2','101939502',to_date('08/05/23','DD/MM/RR'),'Un profesional sufre muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('3','253273739',to_date('09/05/23','DD/MM/RR'),'Un profesional sufre muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('4','286405770',to_date('10/05/23','DD/MM/RR'),'Un profesional sufre muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('5','364233930',to_date('11/05/23','DD/MM/RR'),'Un profesional sufre muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('6','249673781',to_date('12/05/23','DD/MM/RR'),'Un profesional sufre muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('7','184315904',to_date('13/05/23','DD/MM/RR'),'Un profesional sufre muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('8','226746412',to_date('14/05/23','DD/MM/RR'),'Un profesional sufre muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('9','393831677',to_date('15/05/23','DD/MM/RR'),'Un profesional sufre muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
Insert into SAFECORE.REPORTECLIENTE (ID_REPORTC,CLIENTES_RUT_CLIENT,FECHA,DESCRIPCION) values ('10','35758054 ',to_date('16/05/23','DD/MM/RR'),'Un profesional sufre muerte subita al ingresar a la empresa, se desconoce la causa de muerte');
REM INSERTING into SAFECORE.REPORTEGLOBAL
SET DEFINE OFF;
REM INSERTING into SAFECORE.ROL
SET DEFINE OFF;
Insert into SAFECORE.ROL (ID_ROL,NOMBREROL) values ('1','admin');
Insert into SAFECORE.ROL (ID_ROL,NOMBREROL) values ('2','profesional');
Insert into SAFECORE.ROL (ID_ROL,NOMBREROL) values ('3','cliente');
REM INSERTING into SAFECORE.SERVICIO
SET DEFINE OFF;
REM INSERTING into SAFECORE.SOLICITUD
SET DEFINE OFF;
REM INSERTING into SAFECORE.TIPOSOLICITUD
SET DEFINE OFF;
REM INSERTING into SAFECORE.USUARIOS
SET DEFINE OFF;
Insert into SAFECORE.USUARIOS (ID_USER,NOMBRE,ROL_ID_ROL,PASS) values ('1','admin','1','1234');
REM INSERTING into SAFECORE.VISITASTERRENO
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index VISITASTERRENO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."VISITASTERRENO_PK" ON "SAFECORE"."VISITASTERRENO" ("ID_VISITA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PAGOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."PAGOS_PK" ON "SAFECORE"."PAGOS" ("ID_PAGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REPORTEACCIDENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."REPORTEACCIDENTE_PK" ON "SAFECORE"."REPORTEACCIDENTE" ("ID_REPORTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TIPOSOLICITUD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."TIPOSOLICITUD_PK" ON "SAFECORE"."TIPOSOLICITUD" ("ID_TIPOSOLICITUD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CONTRATOCLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."CONTRATOCLIENT_PK" ON "SAFECORE"."CONTRATOCLIENT" ("ID_CONTR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ROL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."ROL_PK" ON "SAFECORE"."ROL" ("ID_ROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CONTRATOPROF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."CONTRATOPROF_PK" ON "SAFECORE"."CONTRATOPROF" ("ID_CONTR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ACTIVIDADMEJORA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."ACTIVIDADMEJORA_PK" ON "SAFECORE"."ACTIVIDADMEJORA" ("ID_ACTIVIDADMEJORA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CLIENTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."CLIENTES_PK" ON "SAFECORE"."CLIENTES" ("RUT_CLIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SERVICIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."SERVICIO_PK" ON "SAFECORE"."SERVICIO" ("ID_SERV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PROFESIONAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."PROFESIONAL_PK" ON "SAFECORE"."PROFESIONAL" ("RUT_PROF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REPORTECLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."REPORTECLIENTE_PK" ON "SAFECORE"."REPORTECLIENTE" ("ID_REPORTC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USUARIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."USUARIOS_PK" ON "SAFECORE"."USUARIOS" ("ID_USER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SOLICITUDASESORIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."SOLICITUDASESORIA_PK" ON "SAFECORE"."SOLICITUD" ("ID_SOLICITUD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REPORTEGLOBAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAFECORE"."REPORTEGLOBAL_PK" ON "SAFECORE"."REPORTEGLOBAL" ("ID_REPORTG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table REPORTEACCIDENTE
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."REPORTEACCIDENTE" ADD CONSTRAINT "REPORTEACCIDENTE_PK" PRIMARY KEY ("ID_REPORTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."REPORTEACCIDENTE" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."REPORTEACCIDENTE" MODIFY ("FECHAACCIDENTE" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."REPORTEACCIDENTE" MODIFY ("CLIENTES_RUT_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."REPORTEACCIDENTE" MODIFY ("ID_REPORTA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFESIONAL
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."PROFESIONAL" ADD CONSTRAINT "PROFESIONAL_PK" PRIMARY KEY ("RUT_PROF")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."PROFESIONAL" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."PROFESIONAL" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."PROFESIONAL" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."PROFESIONAL" MODIFY ("APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."PROFESIONAL" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."PROFESIONAL" MODIFY ("ACTIVO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."PROFESIONAL" MODIFY ("RUT_PROF" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."CLIENTES" ADD CONSTRAINT "CLIENTES_PK" PRIMARY KEY ("RUT_CLIENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."CLIENTES" MODIFY ("RUBRO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."CLIENTES" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."CLIENTES" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."CLIENTES" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."CLIENTES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."CLIENTES" MODIFY ("RUT_CLIENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SERVICIO
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."SERVICIO" ADD CONSTRAINT "SERVICIO_PK" PRIMARY KEY ("ID_SERV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."SERVICIO" MODIFY ("PROFESIONAL_RUT_PROF" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."SERVICIO" MODIFY ("VALOR" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."SERVICIO" MODIFY ("FECHASERVICIO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."SERVICIO" MODIFY ("CLIENTES_RUT_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."SERVICIO" MODIFY ("ID_SERV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACTIVIDADMEJORA
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."ACTIVIDADMEJORA" ADD CONSTRAINT "ACTIVIDADMEJORA_PK" PRIMARY KEY ("ID_ACTIVIDADMEJORA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."ACTIVIDADMEJORA" MODIFY ("ID_ACTIVIDADMEJORA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CONTRATOCLIENT
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."CONTRATOCLIENT" ADD CONSTRAINT "CONTRATOCLIENT_PK" PRIMARY KEY ("ID_CONTR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."CONTRATOCLIENT" MODIFY ("CLIENTES_RUT_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."CONTRATOCLIENT" MODIFY ("FECHAINICIO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."CONTRATOCLIENT" MODIFY ("ID_CONTR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAGOS
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."PAGOS" ADD CONSTRAINT "PAGOS_PK" PRIMARY KEY ("ID_PAGO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."PAGOS" MODIFY ("CLIENTES_RUT_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."PAGOS" MODIFY ("MONTO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."PAGOS" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."PAGOS" MODIFY ("ID_PAGO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CONTRATOPROF
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."CONTRATOPROF" ADD CONSTRAINT "CONTRATOPROF_PK" PRIMARY KEY ("ID_CONTR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."CONTRATOPROF" MODIFY ("PROFESIONAL_RUT_PROF" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."CONTRATOPROF" MODIFY ("FECHAINICIO" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."CONTRATOPROF" MODIFY ("ID_CONTR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPORTECLIENTE
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."REPORTECLIENTE" ADD CONSTRAINT "REPORTECLIENTE_PK" PRIMARY KEY ("ID_REPORTC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."REPORTECLIENTE" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."REPORTECLIENTE" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."REPORTECLIENTE" MODIFY ("CLIENTES_RUT_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."REPORTECLIENTE" MODIFY ("ID_REPORTC" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROL
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."ROL" ADD CONSTRAINT "ROL_PK" PRIMARY KEY ("ID_ROL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."ROL" MODIFY ("NOMBREROL" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."ROL" MODIFY ("ID_ROL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPORTEGLOBAL
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."REPORTEGLOBAL" ADD CONSTRAINT "REPORTEGLOBAL_PK" PRIMARY KEY ("ID_REPORTG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."REPORTEGLOBAL" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."REPORTEGLOBAL" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."REPORTEGLOBAL" MODIFY ("CLIENTES_RUT_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."REPORTEGLOBAL" MODIFY ("ID_REPORTG" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VISITASTERRENO
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."VISITASTERRENO" ADD CONSTRAINT "VISITASTERRENO_PK" PRIMARY KEY ("ID_VISITA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."VISITASTERRENO" MODIFY ("CLIENTES_RUT_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."VISITASTERRENO" MODIFY ("PROFESIONAL_RUT_PROF" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."VISITASTERRENO" MODIFY ("FECHAVISITA" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."VISITASTERRENO" MODIFY ("ID_VISITA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TIPOSOLICITUD
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."TIPOSOLICITUD" ADD CONSTRAINT "TIPOSOLICITUD_PK" PRIMARY KEY ("ID_TIPOSOLICITUD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."TIPOSOLICITUD" MODIFY ("ID_TIPOSOLICITUD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SOLICITUD
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."SOLICITUD" ADD CONSTRAINT "SOLICITUDASESORIA_PK" PRIMARY KEY ("ID_SOLICITUD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."SOLICITUD" MODIFY ("TIPOSOLICITUD_ID_TIPOSOLICITUD" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."SOLICITUD" MODIFY ("CLIENTES_RUT_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."SOLICITUD" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."SOLICITUD" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."SOLICITUD" MODIFY ("ID_SOLICITUD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."USUARIOS" ADD CONSTRAINT "USUARIOS_PK" PRIMARY KEY ("ID_USER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAFECORE"."USUARIOS" MODIFY ("ROL_ID_ROL" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."USUARIOS" MODIFY ("PASS" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."USUARIOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "SAFECORE"."USUARIOS" MODIFY ("ID_USER" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CONTRATOCLIENT
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."CONTRATOCLIENT" ADD CONSTRAINT "CONTRATOCLIENT_CLIENTES_FK" FOREIGN KEY ("CLIENTES_RUT_CLIENT")
	  REFERENCES "SAFECORE"."CLIENTES" ("RUT_CLIENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CONTRATOPROF
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."CONTRATOPROF" ADD CONSTRAINT "CONTRATOPROF_PROFESIONAL_FK" FOREIGN KEY ("PROFESIONAL_RUT_PROF")
	  REFERENCES "SAFECORE"."PROFESIONAL" ("RUT_PROF") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAGOS
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."PAGOS" ADD CONSTRAINT "PAGOS_CLIENTES_FK" FOREIGN KEY ("CLIENTES_RUT_CLIENT")
	  REFERENCES "SAFECORE"."CLIENTES" ("RUT_CLIENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPORTEACCIDENTE
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."REPORTEACCIDENTE" ADD CONSTRAINT "REPORTEACCIDENTE_CLIENTES_FK" FOREIGN KEY ("CLIENTES_RUT_CLIENT")
	  REFERENCES "SAFECORE"."CLIENTES" ("RUT_CLIENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPORTECLIENTE
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."REPORTECLIENTE" ADD CONSTRAINT "REPORTECLIENTE_CLIENTES_FK" FOREIGN KEY ("CLIENTES_RUT_CLIENT")
	  REFERENCES "SAFECORE"."CLIENTES" ("RUT_CLIENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPORTEGLOBAL
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."REPORTEGLOBAL" ADD CONSTRAINT "REPORTEGLOBAL_CLIENTES_FK" FOREIGN KEY ("CLIENTES_RUT_CLIENT")
	  REFERENCES "SAFECORE"."CLIENTES" ("RUT_CLIENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SERVICIO
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."SERVICIO" ADD CONSTRAINT "SERVICIO_CLIENTES_FK" FOREIGN KEY ("CLIENTES_RUT_CLIENT")
	  REFERENCES "SAFECORE"."CLIENTES" ("RUT_CLIENT") ENABLE;
  ALTER TABLE "SAFECORE"."SERVICIO" ADD CONSTRAINT "SERVICIO_PROFESIONAL_FK" FOREIGN KEY ("PROFESIONAL_RUT_PROF")
	  REFERENCES "SAFECORE"."PROFESIONAL" ("RUT_PROF") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SOLICITUD
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."SOLICITUD" ADD CONSTRAINT "SOLICITUDASESORIA_CLIENTES_FK" FOREIGN KEY ("CLIENTES_RUT_CLIENT")
	  REFERENCES "SAFECORE"."CLIENTES" ("RUT_CLIENT") ENABLE;
  ALTER TABLE "SAFECORE"."SOLICITUD" ADD CONSTRAINT "SOLICITUD_TIPOSOLICITUD_FK" FOREIGN KEY ("TIPOSOLICITUD_ID_TIPOSOLICITUD")
	  REFERENCES "SAFECORE"."TIPOSOLICITUD" ("ID_TIPOSOLICITUD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."USUARIOS" ADD CONSTRAINT "USUARIOS_ROL_FK" FOREIGN KEY ("ROL_ID_ROL")
	  REFERENCES "SAFECORE"."ROL" ("ID_ROL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VISITASTERRENO
--------------------------------------------------------

  ALTER TABLE "SAFECORE"."VISITASTERRENO" ADD CONSTRAINT "VISITASTERRENO_CLIENTES_FK" FOREIGN KEY ("CLIENTES_RUT_CLIENT")
	  REFERENCES "SAFECORE"."CLIENTES" ("RUT_CLIENT") ENABLE;
  ALTER TABLE "SAFECORE"."VISITASTERRENO" ADD CONSTRAINT "VISITASTERRENO_PROFESIONAL_FK" FOREIGN KEY ("PROFESIONAL_RUT_PROF")
	  REFERENCES "SAFECORE"."PROFESIONAL" ("RUT_PROF") ENABLE;
