-- Start of DDL Script for Function API_SIF_MOBILE.MASK_PAN
-- Generated 14-Feb-21 19:44:25 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
FUNCTION api_sif_mobile.mask_pan (mask IN VARCHAR2 DEFAULT 'Y', v_card_numb IN VARCHAR2)
    RETURN VARCHAR2
IS
    mask_card_numb   VARCHAR2 (19);
    sql_code         VARCHAR2 (100);
    p_lang           NUMBER;
BEGIN
    /*IF MASK = 'Y' THEN
       MASK_CARD_NUMB := substr(PAN,1,6)||'*************';
    ELSE
      MASK_CARD_NUMB := PAN;
    END IF ;
    RETURN MASK_CARD_NUMB ;*/
    mask_card_numb := v_card_numb;
    p_lang := LENGTH (mask_card_numb);
    DBMS_OUTPUT.put_line ('p_lang== ' || p_lang);

    IF mask = 'Y'
    THEN
        --MASK_CARD_NUMB := substr(PAN,1,6)||'*************';
        mask_card_numb := SUBSTR (mask_card_numb, 1, 6) || RPAD('*',p_lang-10,'*') || SUBSTR (mask_card_numb, -4);
    END IF;

    RETURN mask_card_numb;
EXCEPTION
    WHEN OTHERS
    THEN
        RETURN ('XXXXXXXXXXXXXXXX');
END;
/

-- Grants for Function
GRANT EXECUTE ON api_sif_mobile.mask_pan TO public
/


-- End of DDL Script for Function API_SIF_MOBILE.MASK_PAN

