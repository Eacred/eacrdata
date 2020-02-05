-- This resets the ecrdata_simnet database.

DROP DATABASE IF EXISTS ecrdata_simnet;
DROP USER IF exists ecrdata_simnet_stooge;

CREATE USER ecrdata_simnet_stooge PASSWORD 'pass';
CREATE DATABASE ecrdata_simnet OWNER ecrdata_simnet_stooge;
