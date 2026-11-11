-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS "public"."districts" CASCADE;
CREATE TABLE "public"."districts" (
  "dist_id" int4 NOT NULL,
  "dist_lo" varchar(255) COLLATE "pg_catalog"."default",
  "dist_en" varchar(255) COLLATE "pg_catalog"."default",
  "prov_id" int4,
  "dist_code" char(4) NOT NULL,  -- official 4-digit code with leading zero, e.g. '0106'
  "prov_code" char(2) NOT NULL
)
;

-- ----------------------------
-- Primary Key structure for table districts
-- ----------------------------
ALTER TABLE "public"."districts" ADD CONSTRAINT "districts_pkey" PRIMARY KEY ("dist_id");
ALTER TABLE "public"."districts" ADD CONSTRAINT "districts_code_key" UNIQUE ("dist_code");

-- ----------------------------
-- Foreign Keys structure for table districts
-- ----------------------------
ALTER TABLE "public"."districts" ADD CONSTRAINT "prov_id" FOREIGN KEY ("prov_id") REFERENCES "public"."provinces" ("prov_id") ON DELETE RESTRICT ON UPDATE CASCADE;
