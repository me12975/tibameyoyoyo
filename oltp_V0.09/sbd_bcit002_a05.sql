
-- Schema:  oltp; 
-- Version: V0.09_20210505;
-- Author/Date: cfchen/20210505;
-- Purpose: Oltp資料表;
-- Table: sbd_bcit002_a05;
-- Compressed: N ;
-- Distributed: Y (hsn_cd,dst_cd,case_source,case_tp,serial_no);
-- Partition: N ;
-- Constraint: N

---- Compressed Example: WITH (APPENDONLY=true, COMPRESSLEVEL=1, COMPRESSTYPE=quicklz, OIDS=FALSE)
---- Partition Example: PARTITION BY RANGE(DATA_YM) (PARTITION P201501 START ('2015-01-01'::date) END ('2015-02-01'::date) , ... )
---- Distributed Example: DISTRIBUTED BY (BAN)
---- Naming Convention: P -> pk, U -> uk

DROP TABLE IF EXISTS  oltp.sbd_bcit002_a05;

CREATE TABLE  oltp.sbd_bcit002_a05 (
hsn_cd varchar(1) NOT NULL,
dst_cd varchar(2) NOT NULL,
sel_case_yy varchar(3) NOT NULL,
sel_case_mm varchar(2) NOT NULL,
case_source varchar(1) NOT NULL,
case_tp varchar(2) NOT NULL,
serial_no varchar(5) NOT NULL,
sel_case_hsn_cd varchar(1) NOT NULL,
sel_case_dst_cd varchar(2) NOT NULL,
sel_case_tp varchar(1) NOT NULL,
sel_case_serial_no varchar(2) NOT NULL,
ban varchar(10) ,
data_b_prd varchar(5) ,
data_e_prd varchar(5) ,
asg_org_lvl varchar(1) ,
trade_subj_ban varchar(8) ,
cond_code1 varchar(2) ,
cond_val1 varchar(14) ,
cond_code2 varchar(2) ,
cond_val2 varchar(14) ,
cond_code3 varchar(2) ,
cond_val3 varchar(14) ,
cond_code4 varchar(2) ,
cond_val4 varchar(14) ,
cond_code5 varchar(2) ,
cond_val5 varchar(14) ,
cond_code6 varchar(2) ,
cond_val6 varchar(14) ,
cond_code7 varchar(2) ,
cond_val7 varchar(14) ,
cond_code8 varchar(2) ,
cond_val8 varchar(14) ,
cond_code9 varchar(2) ,
cond_val9 varchar(14) ,
asg_mk varchar(1) ,
reply_date varchar(7) ,
chk_rslt_mk0 varchar(1) ,
chk_rslt_mk1 varchar(1) ,
chk_rslt_tax1 decimal(12,0) ,
chk_rslt_mk2 varchar(1) ,
chk_rslt_tax2 decimal(12,0) ,
chk_rslt_mk3 varchar(1) ,
chk_rslt_evd3 decimal(12,0) ,
chk_rslt_bhv3 decimal(12,0) ,
chk_rslt_mk4 varchar(1) ,
chk_rslt_tax4 decimal(12,0) ,
chk_rslt_mk5 varchar(1) ,
chk_rslt_tax5 decimal(12,0) ,
chk_rslt_mk6 varchar(1) ,
chk_rslt_evd6 decimal(12,0) ,
chk_rslt_bhv6 decimal(12,0) ,
chk_rslt_mk7 varchar(1) ,
chk_rslt_tax7 decimal(12,0) ,
chk_rslt_mk8 varchar(1) ,
dlv_unit varchar(16) ,
create_date varchar(7) ,
update_date varchar(7) ,
update_user_cd varchar(8) ,
time_stamp timestamp ,
excl_stat varchar(1) ,
ntf_mk varchar(1) ,
cstp varchar(2) ,
proj_plam_tp varchar(1) ,
dlv_org_cd varchar(2) ,
cdc_org_cd varchar(2) ,
ntf_tp varchar(1) ,
inform_date varchar(7) ,
inform_char varchar(26) ,
inform_no varchar(10) ,
cdc_date varchar(7) ,
cdc_char varchar(26) ,
cdc_no varchar(10) ,
chk_rslt_mk9 varchar(1) ,
chk_rslt_tax9 decimal(12,0) ,
chk_rslt_mk10 varchar(1) ,
chk_rslt_tax10 decimal(12,0) ,
chk_rslt_mk11 varchar(1) ,
chk_rslt_evd11 decimal(12,0) ,
chk_rslt_bhv11 decimal(12,0) ,
rdc_docu_date varchar(7) ,
rdc_docu_char varchar(26) ,
rdc_docu_no varchar(10) ,
chk_rslt_mk12 varchar(1) ,
chk_rslt_tax12 decimal(12,0) ,
chk_rslt_mk13 varchar(1) ,
chk_rslt_tax13 decimal(12,0) ,
chk_rslt_mk14 varchar(1) ,
chk_rslt_evd14 decimal(12,0) ,
chk_rslt_bhv14 decimal(12,0) ,
apl_ym varchar(5) ,
adj_ym varchar(5) ,
o_em_assess_s_amt decimal(14,0) ,
em_assess_s_amt decimal(14,0) ,
adj_assess_s_amt decimal(14,0) ,
stg_upd_time timestamp ,
bbi_sel_case_no varchar(11) ,
bbi_chk_flow_sample varchar(10) ,
dlv_docu_char varchar(16) ,
dlv_docu_no varchar(10) ,
false_sale_amt decimal(14,0) ,
false_sale_tax decimal(14,0) ,
idn_addr_hsn_cd varchar(1) ,
idn_addr_hsn_nm varchar(3) ,
idn_addr_town_cd varchar(2) ,
idn_addr_town_nm varchar(5) ,
idn_addr_vill_cd varchar(2) ,
idn_addr_vill_nm varchar(5) ,
idn_addr_lin varchar(4) ,
idn_addr_road_no varchar(25) ,
levy_mode varchar(1) ,
chk_rslt_amt1 decimal(14,0) ,
high_risk_mk1 varchar(1) ,
high_risk_mk2 varchar(1) ,
high_risk_mk3 varchar(1) ,
high_risk_mk4 varchar(1) ,
high_risk_mk5 varchar(1) ,
high_risk_mk5_desc varchar(20) ,
idn_ban_nm varchar(20) ,
high_risk_mk6 varchar(1) ,
bci_chk_flow_mk varchar(1) ,
stage_upd_stus char(1) )
TABLESPACE sbd 
DISTRIBUTED BY (hsn_cd,dst_cd,case_source,case_tp,serial_no)
;

ALTER TABLE  oltp.sbd_bcit002_a05 OWNER TO ap_sbd;

ALTER TABLE ONLY  oltp.sbd_bcit002_a05 ADD CONSTRAINT sbd_bcit002_a05_PK PRIMARY KEY (hsn_cd,dst_cd,sel_case_yy,sel_case_mm,case_source,case_tp,serial_no);
