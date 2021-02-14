-- Start of DDL Script for Trigger API_SIF_MOBILE.CHANNELS_RESTRICTED_HIST_ADD
-- Generated 14-Feb-21 19:44:17 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Trigger API_SIF_MOBILE.CHANNELS_RESTRICTED_HIST_ADD

-- Start of DDL Script for Trigger API_SIF_MOBILE.CHANNELS_RESTRICTED_HIST_REMOVE
-- Generated 14-Feb-21 19:44:17 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Trigger API_SIF_MOBILE.CHANNELS_RESTRICTED_HIST_REMOVE

-- Start of DDL Script for Trigger API_SIF_MOBILE.COUNTRIES_ACCEPTED_HIST_ADD
-- Generated 14-Feb-21 19:44:17 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Trigger API_SIF_MOBILE.COUNTRIES_ACCEPTED_HIST_ADD

-- Start of DDL Script for Trigger API_SIF_MOBILE.COUNTRIES_ACCEPTED_HIST_REMOVE
-- Generated 14-Feb-21 19:44:17 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

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


-- End of DDL Script for Trigger API_SIF_MOBILE.COUNTRIES_ACCEPTED_HIST_REMOVE

