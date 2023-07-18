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

 Date: 18/07/2023 14:46:09
*/


-- ----------------------------
-- Table structure for villages
-- ----------------------------
DROP TABLE IF EXISTS "public"."villages";
CREATE TABLE "public"."villages" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "vill_lo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "vill_en" varchar(255) COLLATE "pg_catalog"."default",
  "dist_id" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table villages
-- ----------------------------
ALTER TABLE "public"."villages" ADD CONSTRAINT "villages_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table villages
-- ----------------------------
ALTER TABLE "public"."villages" ADD CONSTRAINT "fk_villages_districts" FOREIGN KEY ("dist_id") REFERENCES "public"."districts" ("dist_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
