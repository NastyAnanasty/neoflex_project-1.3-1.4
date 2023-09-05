--DROP SCHEMA DMA CASCADE;

CREATE SCHEMA IF NOT EXISTS DMA
	AUTHORIZATION postgres;

CREATE TABLE IF NOT EXISTS DMA.DM_ACCOUNT_TURNOVER_F(
	on_date DATE,
	account_rk NUMERIC,
	credit_amount NUMERIC(23,8),
	credit_amount_rub NUMERIC(23,8),
	debet_amount NUMERIC(23,8),
	debet_amount_rub NUMERIC(23,8)
);

CREATE TABLE IF NOT EXISTS DMA.DM_F101_ROUND_F(
	FROM_DATE DATE,
	TO_DATE DATE,
	CHAPTER VARCHAR(1),
	LEDGER_ACCOUNT VARCHAR(5),
	CHARACTERISTIC VARCHAR(1),
	BALANCE_IN_RUB NUMERIC(23,8),
	R_BALANCE_IN_RUB NUMERIC(23,8),
	BALANCE_IN_VAL NUMERIC(23,8),
	R_BALANCE_IN_VAL NUMERIC(23,8),
	BALANCE_IN_TOTAL NUMERIC(23,8),
	R_BALANCE_IN_TOTAL NUMERIC(23,8),
	TURN_DEB_RUB NUMERIC(23,8),
	R_TURN_DEB_RUB NUMERIC(23,8),
	TURN_DEB_VAL NUMERIC(23,8),
	R_TURN_DEB_VAL NUMERIC(23,8),
	TURN_DEB_TOTAL NUMERIC(23,8),
	R_TURN_DEB_TOTAL NUMERIC(23,8),
	TURN_CRE_RUB NUMERIC(23,8),
	R_TURN_CRE_RUB NUMERIC(23,8),
	TURN_CRE_VAL NUMERIC(23,8),
	R_TURN_CRE_VAL NUMERIC(23,8),
	TURN_CRE_TOTAL NUMERIC(23,8),
	R_TURN_CRE_TOTAL NUMERIC(23,8),
	BALANCE_OUT_RUB NUMERIC(23,8),
	R_BALANCE_OUT_RUB NUMERIC(23,8),
	BALANCE_OUT_VAL NUMERIC(23,8),
	R_BALANCE_OUT_VAL NUMERIC(23,8),
	BALANCE_OUT_TOTAL NUMERIC(23,8),
	R_BALANCE_OUT_TOTAL NUMERIC(23,8)
);
CREATE TABLE IF NOT EXISTS DMA.lg_messages(
	RECORD_ID NUMERIC PRIMARY KEY,
	DATE_TIME TIMESTAMP,
	PID BIGINT,
	MESSAGE VARCHAR(4000),
	MESSAGE_TYPE INTEGER,
	USENAME VARCHAR,
	DATNAME VARCHAR,
	CLIENT_ADDR VARCHAR,
	APPLICATION_NAME VARCHAR, 
	BACKEND_START TIMESTAMP
);


CREATE SEQUENCE IF NOT EXISTS  DMA.seq_lg_messages
START 1 
NO CYCLE
OWNED BY DMA.lg_messages.RECORD_ID;

