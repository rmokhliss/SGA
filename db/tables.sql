-- Start of DDL Script for Table API_SIF_MOBILE.CARD_RESTRICTIONS
-- Generated 14-Feb-2021 19:42:36 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.card_restrictions
    (cre_car_code                   NUMBER(10,0) ,
    cre_chn_flg                    NUMBER(1,0),
    cre_cou_flg                    NUMBER(1,0),
    cre_date                       DATE)
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.card_restrictions TO public
/
GRANT INSERT ON api_sif_mobile.card_restrictions TO public
/
GRANT SELECT ON api_sif_mobile.card_restrictions TO public
/
GRANT UPDATE ON api_sif_mobile.card_restrictions TO public
/




-- Constraints for API_SIF_MOBILE.CARD_RESTRICTIONS

ALTER TABLE api_sif_mobile.card_restrictions
ADD CONSTRAINT pk_crd_res PRIMARY KEY (cre_car_code)
USING INDEX
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/


-- End of DDL Script for Table API_SIF_MOBILE.CARD_RESTRICTIONS

-- Start of DDL Script for Table API_SIF_MOBILE.CHANNEL
-- Generated 14-Feb-21 19:43:14 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.channel
    (cnl_code                       NUMBER(10,0),
    cnl_name                       VARCHAR2(20 BYTE),
    cnl_desc                       VARCHAR2(60 BYTE))
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.channel TO public
/
GRANT INSERT ON api_sif_mobile.channel TO public
/
GRANT SELECT ON api_sif_mobile.channel TO public
/
GRANT UPDATE ON api_sif_mobile.channel TO public
/




-- End of DDL Script for Table API_SIF_MOBILE.CHANNEL

-- Start of DDL Script for Table API_SIF_MOBILE.CHANNELS_RESTRICTED
-- Generated 14-Feb-21 19:43:14 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.channels_restricted
    (chr_cnl_code                   NUMBER(10,0),
    chr_car_code                   NUMBER(10,0),
    chr_usr_type                   VARCHAR2(10 BYTE),
    chr_use_code                   NUMBER(10,0),
    chr_date                       DATE)
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.channels_restricted TO public
/
GRANT INSERT ON api_sif_mobile.channels_restricted TO public
/
GRANT SELECT ON api_sif_mobile.channels_restricted TO public
/
GRANT UPDATE ON api_sif_mobile.channels_restricted TO public
/




-- Indexes for API_SIF_MOBILE.CHANNELS_RESTRICTED

CREATE UNIQUE INDEX api_sif_mobile.pk_chn_restrct ON api_sif_mobile.channels_restricted
  (
    chr_cnl_code                    ASC,
    chr_car_code                    ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/



-- Triggers for API_SIF_MOBILE.CHANNELS_RESTRICTED

CREATE OR REPLACE TRIGGER api_sif_mobile.channels_restricted_hist_add
 AFTER
  INSERT
 ON api_sif_mobile.channels_restricted
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN


  INSERT INTO channels_restricted_hist(
            crh_cnl_code                 ,
            crh_car_code                  ,
            crh_usr_type                 ,
            crh_use_code               ,
            crh_operation              ,
            crh_date                  )
          VALUES(           
          :NEW.chr_cnl_code
          ,:NEW.chr_car_code
          ,:NEW.chr_usr_type
          ,:NEW.chr_use_code
          ,'ADD'
          ,:NEW.chr_date
             );
     COMMIT;

EXCEPTION WHEN OTHERS THEN NULL;

END;
/

CREATE OR REPLACE TRIGGER api_sif_mobile.channels_restricted_hist_remove
 AFTER
  DELETE
 ON api_sif_mobile.channels_restricted
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN


  INSERT INTO channels_restricted_hist(
            crh_cnl_code                 ,
            crh_car_code                  ,
            crh_usr_type                 ,
            crh_use_code               ,
            crh_operation              ,
            crh_date                  )
          VALUES(           
          :OLD.chr_cnl_code
          ,:OLD.chr_car_code
          ,:OLD.chr_usr_type
          ,:OLD.chr_use_code
          ,'REMOVE'
          ,:OLD.chr_date
             );

EXCEPTION WHEN OTHERS THEN NULL;

END;
/


-- End of DDL Script for Table API_SIF_MOBILE.CHANNELS_RESTRICTED

-- Start of DDL Script for Table API_SIF_MOBILE.CHANNELS_RESTRICTED_HIST
-- Generated 14-Feb-21 19:43:22 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.channels_restricted_hist
    (crh_cnl_code                   NUMBER(10,0),
    crh_car_code                   NUMBER(10,0),
    crh_usr_type                   VARCHAR2(10 BYTE),
    crh_use_code                   NUMBER(10,0),
    crh_operation                  VARCHAR2(10 BYTE),
    crh_date                       DATE)
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.channels_restricted_hist TO public
/
GRANT INSERT ON api_sif_mobile.channels_restricted_hist TO public
/
GRANT SELECT ON api_sif_mobile.channels_restricted_hist TO public
/
GRANT UPDATE ON api_sif_mobile.channels_restricted_hist TO public
/




-- End of DDL Script for Table API_SIF_MOBILE.CHANNELS_RESTRICTED_HIST

-- Start of DDL Script for Table API_SIF_MOBILE.CHECKSIZES
-- Generated 14-Feb-21 19:43:23 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.checksizes
    (chk_code                       NUMBER(10,0),
    chk_size                       NUMBER(10,0))
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.checksizes TO public
/
GRANT INSERT ON api_sif_mobile.checksizes TO public
/
GRANT SELECT ON api_sif_mobile.checksizes TO public
/
GRANT UPDATE ON api_sif_mobile.checksizes TO public
/




-- End of DDL Script for Table API_SIF_MOBILE.CHECKSIZES

-- Start of DDL Script for Table API_SIF_MOBILE.COUNTRIES_ACCEPTED
-- Generated 14-Feb-21 19:43:23 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.countries_accepted
    (coa_cou_code                   NUMBER(10,0),
    coa_car_code                   NUMBER(10,0),
    coa_usr_type                   VARCHAR2(10 BYTE),
    coa_use_code                   NUMBER(10,0),
    coa_date                       DATE)
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.countries_accepted TO public
/
GRANT INSERT ON api_sif_mobile.countries_accepted TO public
/
GRANT SELECT ON api_sif_mobile.countries_accepted TO public
/
GRANT UPDATE ON api_sif_mobile.countries_accepted TO public
/




-- Indexes for API_SIF_MOBILE.COUNTRIES_ACCEPTED

CREATE UNIQUE INDEX api_sif_mobile.pk_cou_accept ON api_sif_mobile.countries_accepted
  (
    coa_cou_code                    ASC,
    coa_car_code                    ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/



-- Triggers for API_SIF_MOBILE.COUNTRIES_ACCEPTED

CREATE OR REPLACE TRIGGER api_sif_mobile.countries_accepted_hist_add
 AFTER
  INSERT
 ON api_sif_mobile.countries_accepted
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN


  INSERT INTO countries_accepted_hist(
            cah_cou_code                 ,
            cah_car_code                  ,
            cah_usr_type                 ,
            cah_use_code               ,
            cah_operation              ,
            cah_date                  )
          VALUES(           
          :NEW.coa_cou_code
          ,:NEW.coa_car_code
          ,:NEW.coa_usr_type
          ,:NEW.coa_use_code
          ,'ADD'
          ,:NEW.coa_date
             );
     COMMIT;

EXCEPTION WHEN OTHERS THEN NULL;

END;
/

CREATE OR REPLACE TRIGGER api_sif_mobile.countries_accepted_hist_remove
 AFTER
  DELETE
 ON api_sif_mobile.countries_accepted
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN


  INSERT INTO countries_accepted_hist(
            cah_cou_code                 ,
            cah_car_code                  ,
            cah_usr_type                 ,
            cah_use_code               ,
            cah_operation              ,
            cah_date                  )
          VALUES(           
          :OLD.coa_cou_code
          ,:OLD.coa_car_code
          ,:OLD.coa_usr_type
          ,:OLD.coa_use_code
          ,'REMOVE'
          ,:OLD.coa_date
             );

EXCEPTION WHEN OTHERS THEN NULL;

END;
/


-- End of DDL Script for Table API_SIF_MOBILE.COUNTRIES_ACCEPTED

-- Start of DDL Script for Table API_SIF_MOBILE.COUNTRIES_ACCEPTED_HIST
-- Generated 14-Feb-21 19:43:25 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.countries_accepted_hist
    (cah_cou_code                   NUMBER(10,0),
    cah_car_code                   NUMBER(10,0),
    cah_usr_type                   VARCHAR2(10 BYTE),
    cah_use_code                   NUMBER(10,0),
    cah_operation                  VARCHAR2(10 BYTE),
    cah_date                       DATE)
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.countries_accepted_hist TO public
/
GRANT INSERT ON api_sif_mobile.countries_accepted_hist TO public
/
GRANT SELECT ON api_sif_mobile.countries_accepted_hist TO public
/
GRANT UPDATE ON api_sif_mobile.countries_accepted_hist TO public
/




-- End of DDL Script for Table API_SIF_MOBILE.COUNTRIES_ACCEPTED_HIST

-- Start of DDL Script for Table API_SIF_MOBILE.LOCATIONS_ENTITIES
-- Generated 14-Feb-21 19:43:26 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.locations_entities
    (loc_code                       NUMBER(10,0),
    loc_lat                        NUMBER,
    loc_long                       NUMBER,
    loc_ent_code                   NUMBER(10,0),
    loc_ent_name                   VARCHAR2(40 BYTE),
    loc_address                    VARCHAR2(80 BYTE),
    loc_phone                      VARCHAR2(20 BYTE),
    loc_date                       DATE)
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.locations_entities TO public
/
GRANT INSERT ON api_sif_mobile.locations_entities TO public
/
GRANT SELECT ON api_sif_mobile.locations_entities TO public
/
GRANT UPDATE ON api_sif_mobile.locations_entities TO public
/




-- Indexes for API_SIF_MOBILE.LOCATIONS_ENTITIES

CREATE UNIQUE INDEX api_sif_mobile.pk_location ON api_sif_mobile.locations_entities
  (
    loc_code                        ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/

CREATE INDEX api_sif_mobile.id_loc_name ON api_sif_mobile.locations_entities
  (
    loc_ent_name                    ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/



-- End of DDL Script for Table API_SIF_MOBILE.LOCATIONS_ENTITIES

-- Start of DDL Script for Table API_SIF_MOBILE.MB_EXCHANGE_LOGS
-- Generated 14-Feb-21 19:43:27 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.mb_exchange_logs
    (log_date                       VARCHAR2(14 BYTE),
    procedure_name                 VARCHAR2(40 BYTE),
    aut_code                       NUMBER(20,0),
    requestid                      VARCHAR2(40 BYTE),
    input_object                   VARCHAR2(4000 BYTE),
    output_object                  VARCHAR2(4000 BYTE))
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     11534336
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.mb_exchange_logs TO public
/
GRANT INSERT ON api_sif_mobile.mb_exchange_logs TO public
/
GRANT SELECT ON api_sif_mobile.mb_exchange_logs TO public
/
GRANT UPDATE ON api_sif_mobile.mb_exchange_logs TO public
/




-- Indexes for API_SIF_MOBILE.MB_EXCHANGE_LOGS

CREATE INDEX api_sif_mobile.id_mb_exchange_logs ON api_sif_mobile.mb_exchange_logs
  (
    log_date                        ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/



-- End of DDL Script for Table API_SIF_MOBILE.MB_EXCHANGE_LOGS

-- Start of DDL Script for Table API_SIF_MOBILE.MB_IFX_EXCHANGE_LOGS
-- Generated 14-Feb-21 19:43:29 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.mb_ifx_exchange_logs
    (reference_number               VARCHAR2(40 BYTE) ,
    operation                      VARCHAR2(40 BYTE) NOT NULL,
    trans_date_time                DATE ,
    request                        VARCHAR2(2000 BYTE),
    response                       VARCHAR2(2000 BYTE))
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     262144
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.mb_ifx_exchange_logs TO public
/
GRANT INSERT ON api_sif_mobile.mb_ifx_exchange_logs TO public
/
GRANT SELECT ON api_sif_mobile.mb_ifx_exchange_logs TO public
/
GRANT UPDATE ON api_sif_mobile.mb_ifx_exchange_logs TO public
/




-- Constraints for API_SIF_MOBILE.MB_IFX_EXCHANGE_LOGS

ALTER TABLE api_sif_mobile.mb_ifx_exchange_logs
ADD CONSTRAINT pk_mb_ifx_exchange_logs PRIMARY KEY (reference_number, operation, 
  trans_date_time)
USING INDEX
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  ts_index_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/


-- End of DDL Script for Table API_SIF_MOBILE.MB_IFX_EXCHANGE_LOGS

-- Start of DDL Script for Table API_SIF_MOBILE.MB_PROCESSING_TRACES
-- Generated 14-Feb-21 19:43:31 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.mb_processing_traces
    (trace_date                     VARCHAR2(14 BYTE),
    package_name                   VARCHAR2(40 BYTE),
    procedure_name                 VARCHAR2(40 BYTE),
    trace_line                     NUMBER(10,0),
    trace_description              VARCHAR2(500 BYTE),
    error_description              VARCHAR2(1024 BYTE))
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     327680
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.mb_processing_traces TO public
/
GRANT INSERT ON api_sif_mobile.mb_processing_traces TO public
/
GRANT SELECT ON api_sif_mobile.mb_processing_traces TO public
/
GRANT UPDATE ON api_sif_mobile.mb_processing_traces TO public
/




-- Indexes for API_SIF_MOBILE.MB_PROCESSING_TRACES

CREATE INDEX api_sif_mobile.id_mb_processing_traces ON api_sif_mobile.mb_processing_traces
  (
    trace_date                      ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/



-- End of DDL Script for Table API_SIF_MOBILE.MB_PROCESSING_TRACES

-- Start of DDL Script for Table API_SIF_MOBILE.PROCESSING_TRACES
-- Generated 14-Feb-21 19:43:31 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE TABLE api_sif_mobile.processing_traces
    (trace_date                     DATE,
    package_name                   VARCHAR2(40 BYTE),
    procedure_name                 VARCHAR2(40 BYTE),
    trace_line                     NUMBER(10,0),
    trace_description              VARCHAR2(500 BYTE),
    error_description              VARCHAR2(1024 BYTE))
  SEGMENT CREATION IMMEDIATE
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  ts_data_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON api_sif_mobile.processing_traces TO public
/
GRANT INSERT ON api_sif_mobile.processing_traces TO public
/
GRANT SELECT ON api_sif_mobile.processing_traces TO public
/
GRANT UPDATE ON api_sif_mobile.processing_traces TO public
/




-- Indexes for API_SIF_MOBILE.PROCESSING_TRACES

CREATE INDEX api_sif_mobile.id_processing_traces ON api_sif_mobile.processing_traces
  (
    trace_date                      ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  ts_index_esp
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/



-- End of DDL Script for Table API_SIF_MOBILE.PROCESSING_TRACES

