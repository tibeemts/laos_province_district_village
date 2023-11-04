-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS "public"."districts";
CREATE TABLE "public"."districts" (
  "dist_id" int4 NOT NULL,
  "dist_lo" varchar(255) COLLATE "pg_catalog"."default",
  "dist_en" varchar(255) COLLATE "pg_catalog"."default",
  "prov_id" int4
)
;
ALTER TABLE "public"."districts" OWNER TO "root";

-- ----------------------------
-- Primary Key structure for table districts
-- ----------------------------
ALTER TABLE "public"."districts" ADD CONSTRAINT "districts_pkey" PRIMARY KEY ("dist_id");

-- ----------------------------
-- Foreign Keys structure for table districts
-- ----------------------------
ALTER TABLE "public"."districts" ADD CONSTRAINT "prov_id" FOREIGN KEY ("prov_id") REFERENCES "public"."provinces" ("prov_id") ON DELETE RESTRICT ON UPDATE CASCADE;
