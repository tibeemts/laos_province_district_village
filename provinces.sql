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

 Date: 18/07/2023 14:44:20
*/


-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS "public"."provinces";
CREATE TABLE "public"."provinces" (
  "prov_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "prov_sym" varchar(10) COLLATE "pg_catalog"."default",
  "prov_lo" varchar(50) COLLATE "pg_catalog"."default",
  "prov_en" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table provinces
-- ----------------------------
ALTER TABLE "public"."provinces" ADD CONSTRAINT "provinces_pkey" PRIMARY KEY ("prov_id");
