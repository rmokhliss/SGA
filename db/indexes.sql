-- Start of DDL Script for Index API_SIF_MOBILE.ID_LOC_NAME
-- Generated 14-Feb-21 19:44:07 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Index API_SIF_MOBILE.ID_LOC_NAME

-- Start of DDL Script for Index API_SIF_MOBILE.ID_MB_EXCHANGE_LOGS
-- Generated 14-Feb-21 19:44:07 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Index API_SIF_MOBILE.ID_MB_EXCHANGE_LOGS

-- Start of DDL Script for Index API_SIF_MOBILE.ID_MB_PROCESSING_TRACES
-- Generated 14-Feb-21 19:44:07 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Index API_SIF_MOBILE.ID_MB_PROCESSING_TRACES

-- Start of DDL Script for Index API_SIF_MOBILE.ID_PROCESSING_TRACES
-- Generated 14-Feb-21 19:44:07 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Index API_SIF_MOBILE.ID_PROCESSING_TRACES

-- Start of DDL Script for Index API_SIF_MOBILE.PK_CHN_RESTRCT
-- Generated 14-Feb-21 19:44:08 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Index API_SIF_MOBILE.PK_CHN_RESTRCT

-- Start of DDL Script for Index API_SIF_MOBILE.PK_COU_ACCEPT
-- Generated 14-Feb-21 19:44:08 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Index API_SIF_MOBILE.PK_COU_ACCEPT

-- Start of DDL Script for Index API_SIF_MOBILE.PK_CRD_RES
-- Generated 14-Feb-21 19:44:08 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE UNIQUE INDEX api_sif_mobile.pk_crd_res ON api_sif_mobile.card_restrictions
  (
    cre_car_code                    ASC
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


-- End of DDL Script for Index API_SIF_MOBILE.PK_CRD_RES

-- Start of DDL Script for Index API_SIF_MOBILE.PK_LOCATION
-- Generated 14-Feb-21 19:44:08 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Index API_SIF_MOBILE.PK_LOCATION

-- Start of DDL Script for Index API_SIF_MOBILE.PK_MB_IFX_EXCHANGE_LOGS
-- Generated 14-Feb-21 19:44:08 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE UNIQUE INDEX api_sif_mobile.pk_mb_ifx_exchange_logs ON api_sif_mobile.mb_ifx_exchange_logs
  (
    reference_number                ASC,
    operation                       ASC,
    trans_date_time                 ASC
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


-- End of DDL Script for Index API_SIF_MOBILE.PK_MB_IFX_EXCHANGE_LOGS

