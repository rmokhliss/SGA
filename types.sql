-- Start of DDL Script for Type API_SIF_MOBILE.ACCOUNTSLISTRQ
-- Generated 18-Feb-21 08:54:31 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.accountslistrq                                          AS OBJECT
(
    initiator initiator2rq

)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.accountslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.ACCOUNTSLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.ACCOUNTSTRUCT
-- Generated 18-Feb-21 08:54:32 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.accountstruct                                          AS OBJECT
(
    accountNbr VARCHAR2 (24),
    available NUMBER (12, 3),
    typeavailable NUMBER (1,0),
    currencyISO NUMBER (3,0),
    currency VARCHAR2 (3),
    accounttype NUMBER (1,0),
    accountstatus NUMBER (1,0)
    
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.accountstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.ACCOUNTSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.ACCOUNTSRESULT
-- Generated 18-Feb-21 08:54:32 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.accountsresult
 AS TABLE OF "API_SIF_MOBILE"."ACCOUNTSTRUCT"
/



-- End of DDL Script for Type API_SIF_MOBILE.ACCOUNTSRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.ACCOUNTSLISTRS
-- Generated 18-Feb-21 08:54:33 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.accountslistrs                                          AS OBJECT
(
   status statusstruct,
   accounts accountsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.accountslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.ACCOUNTSLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.ADDRESSSTRUCT
-- Generated 18-Feb-21 08:54:33 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.addressstruct                                          AS OBJECT
(

    addr1 VARCHAR2 (60)

)
/



-- End of DDL Script for Type API_SIF_MOBILE.ADDRESSSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.AUTHORIZATIONSTRUCT
-- Generated 18-Feb-21 08:54:33 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.authorizationstruct                                          AS OBJECT
(
    authidres VARCHAR2(6 BYTE),
    retrefnbr VARCHAR2(12 BYTE),
    serverdate date
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.authorizationstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.AUTHORIZATIONSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.BALANCERQ
-- Generated 18-Feb-21 08:54:34 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.balancerq                                          AS OBJECT
(
    initiator initiator5rq,
    transfer transferstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.balancerq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.BALANCERQ

-- Start of DDL Script for Type API_SIF_MOBILE.BALANCESTRUCT
-- Generated 18-Feb-21 08:54:34 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.balancestruct                                          AS OBJECT
(
    available NUMBER (15, 3),
    actual NUMBER (15, 3),
    currencycode NUMBER (3),
    currency VARCHAR2 (3),
    typeavailable    VARCHAR2 (1),
    typeactual    VARCHAR2 (1),
    retrefnbr VARCHAR2(12 BYTE)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.balancestruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.BALANCESTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.BALANCERS
-- Generated 18-Feb-21 08:54:35 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.balancers                                          AS OBJECT
(
    status statusstruct,
    balance balancestruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.balancers TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.BALANCERS

-- Start of DDL Script for Type API_SIF_MOBILE.BYCOMPARESTRUCT
-- Generated 18-Feb-21 08:54:35 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.bycomparestruct                                          AS OBJECT
(
    channelcode NUMBER (1),
    channelname VARCHAR2 (20),
    currentmonthsum NUMBER (12,3),
    lastmonthsum NUMBER (12,3),
    currencyISO NUMBER (3,0),
    currency VARCHAR2 (3),
    sumcmp NUMBER (12,3)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.bycomparestruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.BYCOMPARESTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.BYCOMPARERESULT
-- Generated 18-Feb-21 08:54:35 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.bycompareresult
 AS TABLE OF "API_SIF_MOBILE"."BYCOMPARESTRUCT"
/



-- End of DDL Script for Type API_SIF_MOBILE.BYCOMPARERESULT

-- Start of DDL Script for Type API_SIF_MOBILE.CARDINFORQ
-- Generated 18-Feb-21 08:54:36 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.cardinforq                                          AS OBJECT
(
    initiator initiator2rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.cardinforq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CARDINFORQ

-- Start of DDL Script for Type API_SIF_MOBILE.CARDINFORS
-- Generated 18-Feb-21 08:54:37 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.cardinfors                                          AS OBJECT
(
    status statusstruct,
    card cardstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.cardinfors TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CARDINFORS

-- Start of DDL Script for Type API_SIF_MOBILE.CARDSLISTRQ
-- Generated 18-Feb-21 08:54:38 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.cardslistrq                                          AS OBJECT
(
    initiator initiator1rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.cardslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CARDSLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.CARDSTRUCT
-- Generated 18-Feb-21 08:54:38 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.cardstruct                                          AS OBJECT
(
    cardcode NUMBER (10,0),
    pcipan VARCHAR2(19 BYTE),
    nameprinted VARCHAR2(40 BYTE),
    productcode	NUMBER (10,0),
    productdesc	VARCHAR2(60 BYTE),
    expirydate DATE,
    loyaltybalance NUMBER (12,0),
    activation  NUMBER (1,0),
    opposition  NUMBER (1,0)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.cardstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CARDSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.CARDSRESULT
-- Generated 18-Feb-21 08:54:39 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.cardsresult
 AS TABLE OF "API_SIF_MOBILE"."CARDSTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.cardsresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CARDSRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.CARDSLISTRS
-- Generated 18-Feb-21 08:54:39 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.cardslistrs                                          AS OBJECT
(
    status statusstruct,
    cards cardsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.cardslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CARDSLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.CARDSTATUSSTRUCT
-- Generated 18-Feb-21 08:54:40 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.cardstatusstruct                                          AS OBJECT
(
    status number (1),
    changetype number (1),
    motif VARCHAR2 (50)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.cardstatusstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CARDSTATUSSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.CHANNELSLISTRQ
-- Generated 18-Feb-21 08:54:40 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.channelslistrq                                          AS OBJECT
(
    initiator initiator2rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.channelslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CHANNELSLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.CHANNELSTRUCT
-- Generated 18-Feb-21 08:54:41 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.channelstruct                                          AS OBJECT
(
    channelcode number (10),
    channelname VARCHAR2 (20),
    channelstatus NUMBER (1)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.channelstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CHANNELSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.CHANNELSRESULT
-- Generated 18-Feb-21 08:54:41 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.channelsresult
 AS TABLE OF "API_SIF_MOBILE"."CHANNELSTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.channelsresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CHANNELSRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.CHANNELSLISTRS
-- Generated 18-Feb-21 08:54:41 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.channelslistrs                                          AS OBJECT
(
    status statusstruct,
    channels channelsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.channelslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CHANNELSLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.INITIATOR5RQ
-- Generated 18-Feb-21 08:54:42 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.initiator5rq                                          AS OBJECT
(
    requestid VARCHAR2 (40),
    clientid VARCHAR2 (24),
    cardcode number (10,0),
    acountnbr VARCHAR2 (24)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.initiator5rq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.INITIATOR5RQ

-- Start of DDL Script for Type API_SIF_MOBILE.CHECKBOOKRQ
-- Generated 18-Feb-21 08:54:42 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.checkbookrq                                          AS OBJECT
(
    initiator initiator5rq,
    checkcode NUMBER (10, 0)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.checkbookrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CHECKBOOKRQ

-- Start of DDL Script for Type API_SIF_MOBILE.CHECKBOOKRS
-- Generated 18-Feb-21 08:54:43 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.checkbookrs                                          AS OBJECT
(
    status statusstruct
    
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.checkbookrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CHECKBOOKRS

-- Start of DDL Script for Type API_SIF_MOBILE.CHECKSIZESLISTRQ
-- Generated 18-Feb-21 08:54:44 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.checksizeslistrq                                          AS OBJECT
(
    initiator initiator4rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.checksizeslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CHECKSIZESLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.CHECKSIZESTRUCT
-- Generated 18-Feb-21 08:54:44 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.checksizestruct                                          AS OBJECT
(
    checkcode NUMBER (10, 0),
    checksize NUMBER (10, 0)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.checksizestruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CHECKSIZESTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.CHECKSIZESRESULT
-- Generated 18-Feb-21 08:54:45 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.checksizesresult
 AS TABLE OF "API_SIF_MOBILE"."CHECKSIZESTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.checksizesresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CHECKSIZESRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.CHECKSIZESLISTRS
-- Generated 18-Feb-21 08:54:45 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.checksizeslistrs                                          AS OBJECT
(
    status statusstruct,
    checksizes checksizesresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.checksizeslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CHECKSIZESLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.INITIATOR4RQ
-- Generated 18-Feb-21 08:54:46 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.initiator4rq                                          AS OBJECT
(
    requestid VARCHAR2 (40),
    bankcode VARCHAR2 (10)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.initiator4rq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.INITIATOR4RQ

-- Start of DDL Script for Type API_SIF_MOBILE.COUNTRIESLISTRQ
-- Generated 18-Feb-21 08:54:46 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.countrieslistrq                                          AS OBJECT
(
    initiator initiator4rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.countrieslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.COUNTRIESLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.COUNTRIESLISTRS
-- Generated 18-Feb-21 08:54:46 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.countrieslistrs                                          AS OBJECT
(
    status statusstruct,
    countries countrysresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.countrieslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.COUNTRIESLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.COUNTRYSLISTRQ
-- Generated 18-Feb-21 08:54:47 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.countryslistrq                                          AS OBJECT
(
    initiator initiator2rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.countryslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.COUNTRYSLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.COUNTRYSTRUCT
-- Generated 18-Feb-21 08:54:47 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.countrystruct                                          AS OBJECT
(
    countrycode NUMBER (10),
    countryiden VARCHAR2 (20),
    countrydesc VARCHAR2 (80),
    countryiso VARCHAR2 (3)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.countrystruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.COUNTRYSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.COUNTRYSRESULT
-- Generated 18-Feb-21 08:54:48 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.countrysresult
 AS TABLE OF "API_SIF_MOBILE"."COUNTRYSTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.countrysresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.COUNTRYSRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.COUNTRYSLISTRS
-- Generated 18-Feb-21 08:54:48 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.countryslistrs                                          AS OBJECT
(
    status statusstruct,
    restriction number(1),
    countrys countrysresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.countryslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.COUNTRYSLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.CREATESTRUCT
-- Generated 18-Feb-21 08:54:49 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.createstruct                                          AS OBJECT
(
    nameprinted VARCHAR2(40 BYTE),
    productcode	NUMBER (10,0),
    addr1   VARCHAR2(80 BYTE),
    addr2  VARCHAR2(80 BYTE),
    countrycode	NUMBER (10,0),
    postalcode VARCHAR2(20 BYTE),
    phonenum VARCHAR2 (20)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.createstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CREATESTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.INITIATOR1RQ
-- Generated 18-Feb-21 08:54:49 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.initiator1rq                                          AS OBJECT
(
    requestid VARCHAR2 (40),
    clientid VARCHAR2 (24)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.initiator1rq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.INITIATOR1RQ

-- Start of DDL Script for Type API_SIF_MOBILE.CREATECARDRQ
-- Generated 18-Feb-21 08:54:50 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.createcardrq                                          AS OBJECT
(
    initiator initiator1rq,
    card createstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.createcardrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CREATECARDRQ

-- Start of DDL Script for Type API_SIF_MOBILE.CREATECARDRS
-- Generated 18-Feb-21 08:54:50 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.createcardrs                                          AS OBJECT
(
    status statusstruct
    
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.createcardrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CREATECARDRS

-- Start of DDL Script for Type API_SIF_MOBILE.DEBITSGASTRUCT
-- Generated 18-Feb-21 08:54:51 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                                              api_sif_mobile.debitsgastruct                                          AS OBJECT
(
    feeaccount VARCHAR2(24 BYTE),
    nameprinted VARCHAR2(40 BYTE),
    productcode	NUMBER (10,0),
    paiementstatus NUMBER(1),
    phonenum VARCHAR2 (20),
    idenagence VARCHAR2 (20)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.debitsgastruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.DEBITSGASTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.CREATEDEBITRQ
-- Generated 18-Feb-21 08:54:51 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.createdebitrq                                          AS OBJECT
(
    initiator initiator3rq,
    debitapp debitsgastruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.createdebitrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CREATEDEBITRQ

-- Start of DDL Script for Type API_SIF_MOBILE.CREATEDEBITRS
-- Generated 18-Feb-21 08:54:52 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.createdebitrs                                          AS OBJECT
(
    status statusstruct
    
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.createdebitrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CREATEDEBITRS

-- Start of DDL Script for Type API_SIF_MOBILE.CUSTOMERSTRUCT
-- Generated 18-Feb-21 08:54:52 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.customerstruct                                          AS OBJECT
(
    firstname VARCHAR2(40 BYTE),
    lastname VARCHAR2(40 BYTE),
    gendre NUMBER (1,0),
    titel NUMBER (1,0),
    dateob DATE,
    mobile VARCHAR2(20 BYTE),
    email VARCHAR2(128 BYTE),
    categorieIden VARCHAR2(20 BYTE),
    branchIden VARCHAR2(20 BYTE),
    idenType NUMBER (1,0),
    idenValue VARCHAR2(20 BYTE),
    bankCode NUMBER (10,0),
    cityIden VARCHAR2(20 BYTE),
    postalcode NUMBER (10,0),
    addr1 VARCHAR2(80 BYTE),
    addr2 VARCHAR2(80 BYTE)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.customerstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.CUSTOMERSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.INITIATOR3RQ
-- Generated 18-Feb-21 08:54:53 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.initiator3rq                                          AS OBJECT
(
    requestid VARCHAR2 (40),
    clientid VARCHAR2 (24),
    acountnbr VARCHAR2 (24)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.initiator3rq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.INITIATOR3RQ

-- Start of DDL Script for Type API_SIF_MOBILE.ENROLLRQ
-- Generated 18-Feb-21 08:54:53 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.enrollrq                                          AS OBJECT
(
    initiator initiator3rq,
    customer customerstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.enrollrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.ENROLLRQ

-- Start of DDL Script for Type API_SIF_MOBILE.ENROLLRS
-- Generated 18-Feb-21 08:54:54 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.enrollrs                                          AS OBJECT
(
    status statusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.enrollrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.ENROLLRS

-- Start of DDL Script for Type API_SIF_MOBILE.INITIATOR2RQ
-- Generated 18-Feb-21 08:54:54 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.initiator2rq                                          AS OBJECT
(
    requestid VARCHAR2 (40),
    clientid VARCHAR2 (24),
    cardcode number (10,0)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.initiator2rq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.INITIATOR2RQ

-- Start of DDL Script for Type API_SIF_MOBILE.FEESLISTRQ
-- Generated 18-Feb-21 08:54:55 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.feeslistrq                                          AS OBJECT
(
    initiator initiator2rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.feeslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.FEESLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.FEESTRUCT
-- Generated 18-Feb-21 08:54:55 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.feestruct                                          AS OBJECT
(
    feetype NUMBER (1),
    feelabel VARCHAR2 (50),
    amount  NUMBER (12,3)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.feestruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.FEESTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.FEESRESULT
-- Generated 18-Feb-21 08:54:56 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.feesresult
 AS TABLE OF "API_SIF_MOBILE"."FEESTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.feesresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.FEESRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.FEESLISTRS
-- Generated 18-Feb-21 08:54:56 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.feeslistrs                                          AS OBJECT
(
    status statusstruct,
    fees feesresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.feeslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.FEESLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.FILTERSTRUCT
-- Generated 18-Feb-21 08:54:56 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.filterstruct                                          AS OBJECT
(
    nbrtrans number (2,0),
    startdate date,
    enddate date,
    amountmin number (15,3),
    amountmax number (15,3)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.filterstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.FILTERSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.LASTMONTHSTRUCT
-- Generated 18-Feb-21 08:54:57 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.lastmonthstruct                                          AS OBJECT
(
    datelm DATE,
    sumlm NUMBER (12,3),
    currencyISO NUMBER (3,0),
    currency VARCHAR2 (3),
    countlm number(10,0)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.lastmonthstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.LASTMONTHSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.LASTMONTHRESULT
-- Generated 18-Feb-21 08:54:57 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.lastmonthresult
 AS TABLE OF "API_SIF_MOBILE"."LASTMONTHSTRUCT"
/



-- End of DDL Script for Type API_SIF_MOBILE.LASTMONTHRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.LIMITSLISTRQ
-- Generated 18-Feb-21 08:54:58 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.limitslistrq                                          AS OBJECT
(
    initiator initiator2rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.limitslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.LIMITSLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.LIMITSTRUCT
-- Generated 18-Feb-21 08:54:58 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.limitstruct                                          AS OBJECT
(
    trxtype NUMBER (1),
    period NUMBER (1),
    currencyISO NUMBER (3,0),
    currency VARCHAR2 (3),
    maxperamountcrd number (15,3),
    maxperamountprd number (15,3),
    maxamountcrd number (15,3),
    maxamountprd number (15,3),
    minamountcrd number (15,3),
    minamountprd number (15,3),
    maxpernbrcrd number(10,0),
    maxpernbrprd number(10,0),
    refid number (10,0)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.limitstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.LIMITSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.LIMITSRESULT
-- Generated 18-Feb-21 08:54:58 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.limitsresult
 AS TABLE OF "API_SIF_MOBILE"."LIMITSTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.limitsresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.LIMITSRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.LIMITSLISTRS
-- Generated 18-Feb-21 08:54:59 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.limitslistrs                                          AS OBJECT
(
    status statusstruct,
    limits limitsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.limitslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.LIMITSLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.LOCATIONSLISTRQ
-- Generated 18-Feb-21 08:54:59 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.locationslistrq                                          AS OBJECT
(
    initiator initiator4rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.locationslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.LOCATIONSLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.LOCATIONSTRUCT
-- Generated 18-Feb-21 08:55:00 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.locationstruct                                          AS OBJECT
(
    locationtype number (1),
    longitude VARCHAR (20),
    latitude VARCHAR (20),
    entitycode number(10),
    entityiden varchar(20),
    entityname varchar(100),
    entityphone varchar (20),
    entityaddr varchar (80)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.locationstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.LOCATIONSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.LOCATIONSRESULT
-- Generated 18-Feb-21 08:55:00 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.locationsresult
 AS TABLE OF "API_SIF_MOBILE"."LOCATIONSTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.locationsresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.LOCATIONSRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.LOCATIONSLISTRS
-- Generated 18-Feb-21 08:55:01 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.locationslistrs                                          AS OBJECT
(
    status statusstruct,
    locations locationsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.locationslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.LOCATIONSLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.MINISTATRQ
-- Generated 18-Feb-21 08:55:01 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.ministatrq                                          AS OBJECT
(
    initiator initiator5rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.ministatrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.MINISTATRQ

-- Start of DDL Script for Type API_SIF_MOBILE.MINISTATRS
-- Generated 18-Feb-21 08:55:02 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.ministatrs                                          AS OBJECT
(
    status statusstruct,
    ministat  transactionsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.ministatrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.MINISTATRS

-- Start of DDL Script for Type API_SIF_MOBILE.OPPOSITIONRS
-- Generated 18-Feb-21 08:55:02 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.oppositionrs                                          AS OBJECT
(
    requestid VARCHAR2 (40),
    errorcode VARCHAR2 (5),
    errordesc VARCHAR2 (80)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.oppositionrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.OPPOSITIONRS

-- Start of DDL Script for Type API_SIF_MOBILE.PINGSRVRQ
-- Generated 18-Feb-21 08:55:03 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.pingsrvrq                                          AS OBJECT
(
    requestid VARCHAR2 (40)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.pingsrvrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.PINGSRVRQ

-- Start of DDL Script for Type API_SIF_MOBILE.PINGSRVRS
-- Generated 18-Feb-21 08:55:03 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.pingsrvrs                                          AS OBJECT
(
    status statusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.pingsrvrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.PINGSRVRS

-- Start of DDL Script for Type API_SIF_MOBILE.PRODUCTSLISTRQ
-- Generated 18-Feb-21 08:55:04 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.productslistrq                                          AS OBJECT
(
    initiator initiator4rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.productslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.PRODUCTSLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.PRODUCTSTRUCT
-- Generated 18-Feb-21 08:55:04 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.productstruct                                          AS OBJECT
(
    productcode NUMBER (10, 0),
    productname VARCHAR2 (60),
    productdesc VARCHAR2 (60),
    producttype NUMBER (1),
    limits limitsresult,
    fees feesresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.productstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.PRODUCTSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.PRODUCTSRESULT
-- Generated 18-Feb-21 08:55:05 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.productsresult
 AS TABLE OF "API_SIF_MOBILE"."PRODUCTSTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.productsresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.PRODUCTSRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.PRODUCTSLISTRS
-- Generated 18-Feb-21 08:55:05 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.productslistrs                                          AS OBJECT
(
    status statusstruct,
    products productsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.productslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.PRODUCTSLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.PROPORTSTRUCT
-- Generated 18-Feb-21 08:55:05 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.proportstruct                                          AS OBJECT
(
    channelcode NUMBER (1),
    channelname VARCHAR2 (20),
    percentpro NUMBER (3),
    totalamount NUMBER (12,3),
    currencyISO NUMBER (3,0),
    currency VARCHAR2 (3)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.proportstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.PROPORTSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.PROPORTRESULT
-- Generated 18-Feb-21 08:55:06 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.proportresult
 AS TABLE OF "API_SIF_MOBILE"."PROPORTSTRUCT"
/



-- End of DDL Script for Type API_SIF_MOBILE.PROPORTRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.REASONSLISTRQ
-- Generated 18-Feb-21 08:55:06 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.reasonslistrq                                          AS OBJECT
(
    initiator initiator4rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.reasonslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REASONSLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.REASONSTRUCT
-- Generated 18-Feb-21 08:55:07 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.reasonstruct                                          AS OBJECT
(
    reasoncode NUMBER (10, 0),
    reasoniden VARCHAR2 (10),
    reasonname VARCHAR2 (60)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.reasonstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REASONSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.REASONSRESULT
-- Generated 18-Feb-21 08:55:07 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.reasonsresult
 AS TABLE OF "API_SIF_MOBILE"."REASONSTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.reasonsresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REASONSRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.REASONSLISTRS
-- Generated 18-Feb-21 08:55:08 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.reasonslistrs                                          AS OBJECT
(
    status statusstruct,
    reasons reasonsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.reasonslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REASONSLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.REGISTRATIONRQ
-- Generated 18-Feb-21 08:55:08 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.registrationrq                                          AS OBJECT
(
    clientid VARCHAR2 (24),
    cardcode number (10,0),
    acountnbr VARCHAR2 (24)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.registrationrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REGISTRATIONRQ

-- Start of DDL Script for Type API_SIF_MOBILE.REGISTRATIONRS
-- Generated 18-Feb-21 08:55:09 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.registrationrs                                          AS OBJECT
(
    status statusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.registrationrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REGISTRATIONRS

-- Start of DDL Script for Type API_SIF_MOBILE.REPLACECARDRQ
-- Generated 18-Feb-21 08:55:09 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.replacecardrq                                          AS OBJECT
(
    initiator initiator2rq,
    reason reasonstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.replacecardrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REPLACECARDRQ

-- Start of DDL Script for Type API_SIF_MOBILE.REPLACECARDRS
-- Generated 18-Feb-21 08:55:10 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.replacecardrs                                          AS OBJECT
(
    status statusstruct
    
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.replacecardrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REPLACECARDRS

-- Start of DDL Script for Type API_SIF_MOBILE.REQPINRQ
-- Generated 18-Feb-21 08:55:10 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.reqpinrq                                          AS OBJECT
(
    initiator initiator2rq

)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.reqpinrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REQPINRQ

-- Start of DDL Script for Type API_SIF_MOBILE.REQPINRS
-- Generated 18-Feb-21 08:55:11 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.reqpinrs                                          AS OBJECT
(
   status statusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.reqpinrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REQPINRS

-- Start of DDL Script for Type API_SIF_MOBILE.REQRENEWRQ
-- Generated 18-Feb-21 08:55:11 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.reqrenewrq                                          AS OBJECT
(
    initiator initiator2rq

)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.reqrenewrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REQRENEWRQ

-- Start of DDL Script for Type API_SIF_MOBILE.REQRENEWRS
-- Generated 18-Feb-21 08:55:12 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                                              api_sif_mobile.reqrenewrs                                          AS OBJECT
(
   status statusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.reqrenewrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REQRENEWRS

-- Start of DDL Script for Type API_SIF_MOBILE.REQUESTCHECKSTRUCT
-- Generated 18-Feb-21 08:55:12 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.requestcheckstruct                                          AS OBJECT
(
    retrefnbr number (12)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.requestcheckstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REQUESTCHECKSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.REQUESTPAYSTRUCT
-- Generated 18-Feb-21 08:55:12 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.requestpaystruct                                          AS OBJECT
(
    reqdate date,
    refmobbnk number (20),
    adddata VARCHAR2 (50),
    amount number (15,3),
    label VARCHAR2 (50)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.requestpaystruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REQUESTPAYSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.REQUESTVOIDSTRUCT
-- Generated 18-Feb-21 08:55:13 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.requestvoidstruct                                          AS OBJECT
(
    reqdate date,
    refmobbnk number (20),
    retrefnbr number (12),
    reqidorigin VARCHAR2 (20),
    label VARCHAR2 (50)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.requestvoidstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.REQUESTVOIDSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.SECONDSTRUCT
-- Generated 18-Feb-21 08:55:13 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                                              api_sif_mobile.secondstruct                                          AS OBJECT
(
    nameprinted VARCHAR2(40 BYTE)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.secondstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SECONDSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.SECONDCARDRQ
-- Generated 18-Feb-21 08:55:14 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.secondcardrq                                          AS OBJECT
(
    initiator initiator2rq,
    card secondstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.secondcardrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SECONDCARDRQ

-- Start of DDL Script for Type API_SIF_MOBILE.SECONDCARDRS
-- Generated 18-Feb-21 08:55:14 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.secondcardrs                                          AS OBJECT
(
    status statusstruct
    
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.secondcardrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SECONDCARDRS

-- Start of DDL Script for Type API_SIF_MOBILE.SERVICESTATUSSTRUCT
-- Generated 18-Feb-21 08:55:14 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.servicestatusstruct                                          AS OBJECT
(
    moto number (1),
    payment number (1),
    motif VARCHAR2 (50)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.servicestatusstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SERVICESTATUSSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.SETCHANNELRQ
-- Generated 18-Feb-21 08:55:15 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.setchannelrq                                          AS OBJECT
(
    initiator initiator2rq,
    channels channelsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.setchannelrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SETCHANNELRQ

-- Start of DDL Script for Type API_SIF_MOBILE.SETCHANNELRS
-- Generated 18-Feb-21 08:55:15 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.setchannelrs                                          AS OBJECT
(
    status statusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.setchannelrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SETCHANNELRS

-- Start of DDL Script for Type API_SIF_MOBILE.SETCOUNTRYRQ
-- Generated 18-Feb-21 08:55:16 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.setcountryrq                                          AS OBJECT
(
    initiator initiator2rq,
    restriction number(1),
    countrys countrysresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.setcountryrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SETCOUNTRYRQ

-- Start of DDL Script for Type API_SIF_MOBILE.SETCOUNTRYRS
-- Generated 18-Feb-21 08:55:17 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.setcountryrs                                          AS OBJECT
(
    status statusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.setcountryrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SETCOUNTRYRS

-- Start of DDL Script for Type API_SIF_MOBILE.SETLIMITRQ
-- Generated 18-Feb-21 08:55:18 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.setlimitrq                                          AS OBJECT
(
    initiator initiator2rq,
    limits limitsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.setlimitrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SETLIMITRQ

-- Start of DDL Script for Type API_SIF_MOBILE.SETLIMITRS
-- Generated 18-Feb-21 08:55:18 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.setlimitrs                                          AS OBJECT
(
    status statusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.setlimitrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SETLIMITRS

-- Start of DDL Script for Type API_SIF_MOBILE.SETSERVICERQ
-- Generated 18-Feb-21 08:55:18 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.setservicerq                                          AS OBJECT
(
    initiator initiator2rq,
    status servicestatusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.setservicerq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SETSERVICERQ

-- Start of DDL Script for Type API_SIF_MOBILE.SETSERVICERS
-- Generated 18-Feb-21 08:55:19 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.setservicers                                          AS OBJECT
(
    status statusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.setservicers TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SETSERVICERS

-- Start of DDL Script for Type API_SIF_MOBILE.SETSTATUSRQ
-- Generated 18-Feb-21 08:55:19 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.setstatusrq                                          AS OBJECT
(
    initiator initiator2rq,
    status cardstatusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.setstatusrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SETSTATUSRQ

-- Start of DDL Script for Type API_SIF_MOBILE.SETSTATUSRS
-- Generated 18-Feb-21 08:55:20 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.setstatusrs                                          AS OBJECT
(
    status statusstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.setstatusrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.SETSTATUSRS

-- Start of DDL Script for Type API_SIF_MOBILE.STATISTICSLISTRQ
-- Generated 18-Feb-21 08:55:20 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.statisticslistrq                                          AS OBJECT
(
    initiator initiator2rq
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.statisticslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.STATISTICSLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.STATISTICSRESULT
-- Generated 18-Feb-21 08:55:21 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.statisticsresult
 AS TABLE OF "API_SIF_MOBILE"."STATISTICSTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.statisticsresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.STATISTICSRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.STATISTICSTRUCT
-- Generated 18-Feb-21 08:55:21 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.statisticstruct                                          AS OBJECT
(
    sttc1 lastmonthresult,
    sttc2 bycompareresult,
    sttc3 proportresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.statisticstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.STATISTICSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.STATUSSTRUCT
-- Generated 18-Feb-21 08:55:21 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.statusstruct                                          AS OBJECT
(
    requestid VARCHAR2 (40),
    errorcode VARCHAR2 (5),
    errordesc VARCHAR2 (80)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.statusstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.STATUSSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.STATISTICSRS
-- Generated 18-Feb-21 08:55:22 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.statisticsrs                                          AS OBJECT
(
    status statusstruct,
    statistic statisticstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.statisticsrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.STATISTICSRS

-- Start of DDL Script for Type API_SIF_MOBILE.TRANSACTIONSLISTRQ
-- Generated 18-Feb-21 08:55:22 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.transactionslistrq                                          AS OBJECT
(
    initiator initiator2rq,
    filter filterstruct

)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.transactionslistrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.TRANSACTIONSLISTRQ

-- Start of DDL Script for Type API_SIF_MOBILE.TRANSACTIONSTRUCT
-- Generated 18-Feb-21 08:55:23 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.transactionstruct                                          AS OBJECT
(
    originamount NUMBER (15, 3),
    convertedamount NUMBER (15, 3),
    origincurrencyISO NUMBER (3,0),
    origincurrency VARCHAR2 (3),
    accountcurrencyISO NUMBER (3,0),
    accountcurrency VARCHAR2 (3),
    datetime date,
    longlabel VARCHAR2(100 BYTE),
    shortlabel VARCHAR2(40 BYTE),
    retrefnbr VARCHAR2(12 BYTE),
    autcode NUMBER(20),
    status NUMBER (1,0),
    rescode VARCHAR2(3 BYTE),
    resmsg VARCHAR2(100 BYTE),
    senstrx NUMBER (1,0)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.transactionstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.TRANSACTIONSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.TRANSACTIONSRESULT
-- Generated 18-Feb-21 08:55:23 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.transactionsresult
 AS TABLE OF "API_SIF_MOBILE"."TRANSACTIONSTRUCT"
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.transactionsresult TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.TRANSACTIONSRESULT

-- Start of DDL Script for Type API_SIF_MOBILE.TRANSACTIONSLISTRS
-- Generated 18-Feb-21 08:55:23 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.transactionslistrs                                          AS OBJECT
(
   status statusstruct,
   transactions transactionsresult
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.transactionslistrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.TRANSACTIONSLISTRS

-- Start of DDL Script for Type API_SIF_MOBILE.TRANSFERSTRUCT
-- Generated 18-Feb-21 08:55:24 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.transferstruct                                          AS OBJECT
(
    typetransfer    VARCHAR2 (1),
    amount NUMBER (15, 3),
    label VARCHAR2 (50)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.transferstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.TRANSFERSTRUCT

-- Start of DDL Script for Type API_SIF_MOBILE.TRANSFERRQ
-- Generated 18-Feb-21 08:55:24 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                               api_sif_mobile.transferrq                                          AS OBJECT
(
    initiator initiator5rq,
    transfer transferstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.transferrq TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.TRANSFERRQ

-- Start of DDL Script for Type API_SIF_MOBILE.TRANSFERRS
-- Generated 18-Feb-21 08:55:24 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE                api_sif_mobile.transferrs                                          AS OBJECT
(
    status statusstruct,
    auth authorizationstruct
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.transferrs TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.TRANSFERRS

-- Start of DDL Script for Type API_SIF_MOBILE.TRANSSTATUSSTRUCT
-- Generated 18-Feb-21 08:55:25 from API_SIF_MOBILE@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.18.1.199)(PORT = 1528)))(CONNECT_DATA =(SERVICE_NAME = afb12c)))

CREATE OR REPLACE 
TYPE api_sif_mobile.transstatusstruct                                          AS OBJECT
(
    statuscode number(1),
    errorcode VARCHAR2 (3),
    errordesc VARCHAR2 (100)
)
/

-- Grants for Type
GRANT EXECUTE ON api_sif_mobile.transstatusstruct TO public
/


-- End of DDL Script for Type API_SIF_MOBILE.TRANSSTATUSSTRUCT

