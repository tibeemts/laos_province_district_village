-- ----------------------------
-- Table structure for villages
-- ----------------------------
DROP TABLE IF EXISTS "public"."villages" CASCADE;
CREATE TABLE "public"."villages" (
  "vil_id" int4 NOT NULL,
  "vil_lo" varchar(255) COLLATE "pg_catalog"."default",
  "vil_en" varchar(255) COLLATE "pg_catalog"."default",
  "dist_id" int4,
  "vil_code" char(7) NOT NULL,  -- official 7-digit code with leading zero, e.g. '0106001'
  "dist_code" char(4) NOT NULL,
  "subdist_id" int4,            -- ຕາແສງ; empty until the village's sub-district is known
  "lat" numeric(9,6),           -- village point (WGS84), from the LUIS database where it is clearly the same village
  "lon" numeric(9,6)
)
;

-- ----------------------------
-- Primary Key structure for table villages
-- ----------------------------
ALTER TABLE "public"."villages" ADD CONSTRAINT "villages_pkey" PRIMARY KEY ("vil_id");
ALTER TABLE "public"."villages" ADD CONSTRAINT "villages_code_key" UNIQUE ("vil_code");

-- ----------------------------
-- Foreign Keys structure for table villages
-- ----------------------------
ALTER TABLE "public"."villages" ADD CONSTRAINT "dist_id" FOREIGN KEY ("dist_id") REFERENCES "public"."districts" ("dist_id") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."villages" ADD CONSTRAINT "subdist_id" FOREIGN KEY ("subdist_id") REFERENCES "public"."subdistricts" ("subdist_id") ON DELETE SET NULL ON UPDATE CASCADE;
