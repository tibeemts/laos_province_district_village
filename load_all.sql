-- Create all tables and load the CSV files. Run from this folder with psql:
--   psql -d your_database -f load_all.sql
\set ON_ERROR_STOP on
BEGIN;
\i provinces.sql
\i districts.sql
\i subdistricts.sql
\i villages.sql
\copy provinces (prov_id, prov_lo, prov_en, prov_code) from 'provinces.csv' with (format csv, header true, encoding 'UTF8')
\copy districts (prov_id, dist_id, dist_lo, dist_en, dist_code, prov_code) from 'districts.csv' with (format csv, header true, encoding 'UTF8')
\copy subdistricts (subdist_id, subdist_code, subdist_lo, subdist_en, dist_id, dist_code, status, approved_date, declared_date, source) from 'subdistricts.csv' with (format csv, header true, encoding 'UTF8')
\copy villages (vil_id, vil_lo, vil_en, dist_id, vil_code, dist_code, subdist_id, lat, lon) from 'villages.csv' with (format csv, header true, encoding 'UTF8')
COMMIT;
