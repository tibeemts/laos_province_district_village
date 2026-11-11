-- ----------------------------
-- Table structure for subdistricts (ຕາແສງ)
-- New administrative level between district and village (national reform announced January 2025).
-- subdist_id / subdist_code are assigned by this repository (district code + 2-digit sequence) until the
-- Ministry of Home Affairs publishes official codes.
-- ----------------------------
DROP TABLE IF EXISTS "public"."subdistricts" CASCADE;
CREATE TABLE "public"."subdistricts" (
  "subdist_id" int4 NOT NULL,
  "subdist_code" char(6) NOT NULL,                       -- e.g. '010601'
  "subdist_lo" varchar(255) COLLATE "pg_catalog"."default",
  "subdist_en" varchar(255) COLLATE "pg_catalog"."default",
  "dist_id" int4 NOT NULL,
  "dist_code" char(4) NOT NULL,
  "status" varchar(20) NOT NULL DEFAULT 'declared',       -- planned | approved | declared
  "approved_date" date,
  "declared_date" date,
  "source" text
)
;

-- ----------------------------
-- Primary Key structure for table subdistricts
-- ----------------------------
ALTER TABLE "public"."subdistricts" ADD CONSTRAINT "subdistricts_pkey" PRIMARY KEY ("subdist_id");
ALTER TABLE "public"."subdistricts" ADD CONSTRAINT "subdistricts_code_key" UNIQUE ("subdist_code");

-- ----------------------------
-- Foreign Keys structure for table subdistricts
-- ----------------------------
ALTER TABLE "public"."subdistricts" ADD CONSTRAINT "subdist_dist_id" FOREIGN KEY ("dist_id") REFERENCES "public"."districts" ("dist_id") ON DELETE RESTRICT ON UPDATE CASCADE;
