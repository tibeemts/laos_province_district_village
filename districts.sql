/*
 Navicat Premium Data Transfer

 Source Server         : dbmts
 Source Server Type    : PostgreSQL
 Source Server Version : 120015 (120015)
 Source Host           : dbmts.mtsapi.com:5432
 Source Catalog        : prfmis
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120015 (120015)
 File Encoding         : 65001

 Date: 18/07/2023 14:45:43
*/


-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS "public"."districts";
CREATE TABLE "public"."districts" (
  "prov_id" varchar(2) COLLATE "pg_catalog"."default",
  "dist_id" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "dist_lo" varchar(50) COLLATE "pg_catalog"."default",
  "dist_en" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table districts
-- ----------------------------
ALTER TABLE "public"."districts" ADD CONSTRAINT "districts_pkey" PRIMARY KEY ("dist_id");

-- ----------------------------
-- Foreign Keys structure for table districts
-- ----------------------------
ALTER TABLE "public"."districts" ADD CONSTRAINT "districts_prov_id_fkey" FOREIGN KEY ("prov_id") REFERENCES "public"."provinces" ("prov_id") ON DELETE CASCADE ON UPDATE CASCADE;
