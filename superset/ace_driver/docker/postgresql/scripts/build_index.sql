-- ALTER TABLE SUPPLIER ADD FOREIGN KEY (S_NATIONKEY) REFERENCES NATION(N_NATIONKEY);
-- 
-- ALTER TABLE PARTSUPP ADD FOREIGN KEY (PS_PARTKEY) REFERENCES PART(P_PARTKEY);
-- ALTER TABLE PARTSUPP ADD FOREIGN KEY (PS_SUPPKEY) REFERENCES SUPPLIER(S_SUPPKEY);
-- 
-- ALTER TABLE CUSTOMER ADD FOREIGN KEY (C_NATIONKEY) REFERENCES NATION(N_NATIONKEY);
-- 
-- ALTER TABLE ORDERS ADD FOREIGN KEY (O_CUSTKEY) REFERENCES CUSTOMER(C_CUSTKEY);
-- 
-- ALTER TABLE LINEITEM ADD FOREIGN KEY (L_ORDERKEY) REFERENCES ORDERS(O_ORDERKEY);
-- ALTER TABLE LINEITEM ADD FOREIGN KEY (L_PARTKEY,L_SUPPKEY) REFERENCES PARTSUPP(PS_PARTKEY,PS_SUPPKEY);
-- 
-- ALTER TABLE NATION ADD FOREIGN KEY (N_REGIONKEY) REFERENCES REGION(R_REGIONKEY);

-- indexes
CREATE INDEX C_CUSTKEY_IDX ON CUSTOMER(C_CUSTKEY);
CREATE INDEX C_NATIONKEY_IDX ON CUSTOMER(C_NATIONKEY);
CREATE INDEX C_ACCTBAL_IDX ON CUSTOMER(C_ACCTBAL);

CREATE INDEX L_ORDERKEY_IDX ON LINEITEM(L_ORDERKEY);
CREATE INDEX L_PARTKEY_IDX ON LINEITEM(L_PARTKEY);
CREATE INDEX L_SUPPKEY_IDX ON LINEITEM(L_SUPPKEY);
CREATE INDEX L_EXTENDEDPRICE_IDX ON LINEITEM(L_EXTENDEDPRICE);
CREATE INDEX L_QUANTITY_IDX ON LINEITEM(L_QUANTITY);
CREATE INDEX L_DISCOUNT_IDX ON LINEITEM(L_DISCOUNT);
CREATE INDEX L_TAX_IDX ON LINEITEM(L_TAX);

CREATE INDEX O_ORDERKEY_IDX ON ORDERS(O_ORDERKEY);
CREATE INDEX O_CUSTKEY_IDX ON ORDERS(O_CUSTKEY);
CREATE INDEX O_TOTALPRICE_IDX ON ORDERS(O_TOTALPRICE);
CREATE INDEX O_ORDERPRIORITY_IDX ON ORDERS(O_ORDERPRIORITY);
CREATE INDEX O_SHIPPRIORITY_IDX ON ORDERS(O_SHIPPRIORITY);

CREATE INDEX P_PARTKEY_IDX ON PART(P_PARTKEY);
CREATE INDEX P_SIZE_IDX ON PART(P_SIZE);
CREATE INDEX P_RETAILPRICE_IDX ON PART(P_RETAILPRICE);

CREATE INDEX PS_PARTKEY_IDX ON PARTSUPP(PS_PARTKEY);
CREATE INDEX PS_SUPPKEY_IDX ON PARTSUPP(PS_SUPPKEY);
CREATE INDEX PS_AVAILQTY_IDX ON PARTSUPP(PS_AVAILQTY);

CREATE INDEX S_SUPPKEY_IDX ON SUPPLIER(S_SUPPKEY);
CREATE INDEX S_NATIONKEY_IDX ON SUPPLIER(S_NATIONKEY);
CREATE INDEX S_ACCTBAL_IDX ON SUPPLIER(S_ACCTBAL);
