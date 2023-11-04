-- ----------------------------
-- Table structure for villages
-- ----------------------------
DROP TABLE IF EXISTS "public"."villages";
CREATE TABLE "public"."villages" (
  "vil_id" int4 NOT NULL,
  "vil_lo" varchar(255) COLLATE "pg_catalog"."default",
  "vil_en" varchar(255) COLLATE "pg_catalog"."default",
  "dist_id" int4
)
;
ALTER TABLE "public"."villages" OWNER TO "root";

-- ----------------------------
-- Primary Key structure for table villages
-- ----------------------------
ALTER TABLE "public"."villages" ADD CONSTRAINT "villages_pkey" PRIMARY KEY ("vil_id");

-- ----------------------------
-- Foreign Keys structure for table villages
-- ----------------------------
ALTER TABLE "public"."villages" ADD CONSTRAINT "dist_id" FOREIGN KEY ("dist_id") REFERENCES "public"."districts" ("dist_id") ON DELETE RESTRICT ON UPDATE CASCADE;
