-- This resets the eacrdata_simnet database.

DROP DATABASE IF EXISTS eacrdata_simnet;
DROP USER IF exists eacrdata_simnet_stooge;

CREATE USER eacrdata_simnet_stooge PASSWORD 'pass';
CREATE DATABASE eacrdata_simnet OWNER eacrdata_simnet_stooge;
