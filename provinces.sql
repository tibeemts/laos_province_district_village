-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS "public"."provinces" CASCADE;
CREATE TABLE "public"."provinces" (
  "prov_id" int4 NOT NULL,
  "prov_en" varchar(255) COLLATE "pg_catalog"."default",
  "prov_lo" varchar(255) COLLATE "pg_catalog"."default",
  "prov_code" char(2) NOT NULL  -- official 2-digit code with leading zero, e.g. '01'
)
;

-- ----------------------------
-- Primary Key structure for table provinces
-- ----------------------------
ALTER TABLE "public"."provinces" ADD CONSTRAINT "province_pkey" PRIMARY KEY ("prov_id");
ALTER TABLE "public"."provinces" ADD CONSTRAINT "province_code_key" UNIQUE ("prov_code");
