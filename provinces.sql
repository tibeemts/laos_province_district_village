-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS "public"."provinces";
CREATE TABLE "public"."provinces" (
  "prov_id" int4 NOT NULL,
  "prov_en" varchar(255) COLLATE "pg_catalog"."default",
  "prov_lo" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."provinces" OWNER TO "root";

-- ----------------------------
-- Primary Key structure for table provinces
-- ----------------------------
ALTER TABLE "public"."provinces" ADD CONSTRAINT "province_pkey" PRIMARY KEY ("prov_id");
