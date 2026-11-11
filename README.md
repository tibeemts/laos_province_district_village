# Laos Administrative Database (Provinces, Districts, Sub-districts, Villages) — PostgreSQL / CSV
# ຖານຂໍ້ມູນ ການປົກຄອງ ສປປ ລາວ: ແຂວງ, ເມືອງ, ຕາແສງ ແລະ ບ້ານ

ຂໍ້ມູນ ແຂວງ, ເມືອງ ແລະ ບ້ານ ໃນຮູບແບບ .csv ແລະ ຕາຕະລາງ PostgreSQL ເພື່ອງ່າຍໃນການ import ເຂົ້າໂປຣເຈັກ.
Version 2 (2026) ໄດ້ກວດ ແລະ ແກ້ໄຂຂໍ້ມູນ ທຽບກັບຖານຂໍ້ມູນການປົກຄອງ ຂອງລະບົບ LUIS ແລະ ເພີ່ມລະດັບ **ຕາແສງ** (sub-district).

| Level | ລະດັບ | Rows | File |
|---|---|---|---|
| Province | ແຂວງ | 18 | `provinces.csv` |
| District | ເມືອງ | 148 | `districts.csv` |
| Sub-district | ຕາແສງ | 1 (more to come) | `subdistricts.csv` |
| Village | ບ້ານ | 8,509 | `villages.csv` |

## Quick start

```bash
psql -d your_database -f load_all.sql      # creates the 4 tables and loads the CSV files
```

Or run `provinces.sql`, `districts.sql`, `subdistricts.sql`, `villages.sql` in that order and import the CSV files yourself.
CSV files are UTF-8 with a header row.

## Columns

| File | Columns |
|---|---|
| provinces | `prov_id`, `prov_lo`, `prov_en`, `prov_code` |
| districts | `prov_id`, `dist_id`, `dist_lo`, `dist_en`, `dist_code`, `prov_code` |
| subdistricts | `subdist_id`, `subdist_code`, `subdist_lo`, `subdist_en`, `dist_id`, `dist_code`, `status`, `approved_date`, `declared_date`, `source` |
| villages | `vil_id`, `vil_lo`, `vil_en`, `dist_id`, `vil_code`, `dist_code`, `subdist_id`, `lat`, `lon` |

- `*_id` are the same integer ids as version 1, so existing projects keep working.
- `*_code` are the official codes **as text with the leading zero** (`01`, `0106`, `0106001`). Use these to join with
  government systems such as LUIS; the integer ids drop the leading zero (Vientiane Capital is `1` not `01`).
- `lat` / `lon` (WGS84) come from the LUIS village points, filled only where LUIS clearly has the same village
  (7,513 of 8,509). Empty means not yet confirmed.
- `subdist_id` is empty until the village's ຕາແສງ is known.

## Sub-districts (ຕາແສງ)

Laos is re-introducing the ຕາແສງ level between district and village (reform announced January 2025; 640 approved
nationwide in November 2025; 379 declared by mid-June 2026). Each ຕາແສງ groups 1–24 villages.

- Included now: **ຕາແສງຊ້າງມີໄຊ (Xangmixay)**, Xaythany district, Vientiane Capital — approved 22 May 2025, declared
  31 Dec 2025, 24 villages.
- Planned in the same area and not yet included (no published village lists): Sivilay, Hua Xieng, Dong Bung, Tha Ngon —
  part of 36 planned for Vientiane Capital.
- `subdist_code` = district code + 2-digit sequence (e.g. `010601`). This is assigned by this repository until the
  Ministry of Home Affairs publishes official codes.

**To add a ຕາແສງ:** add a row to `subdistricts.csv`, then set `subdist_id` on its villages in `villages.csv`.
Please cite the official announcement in `source`.

## What changed in version 2

See `CHANGELOG.md` and `changes/v2_changes.csv` (every changed code and name). In short:
- Removed invisible zero-width characters that were inside almost every Lao name (they break search and matching).
- Standardised Lao spelling variants: ຫນ→ໜ, ຫມ→ໝ, ຫລ→ຫຼ, ໍາ→ຳ, ນໍ້າ→ນ້ຳ; removed doubled vowel/tone marks.
- District 0110 “Dan Xang Mixay” removed: it never became a district. Its 24 villages are back in Xaythany (0106)
  with their 0106 codes, and belong to ຕາແສງຊ້າງມີໄຊ.
- Meun district code corrected 1011 → 1013 (its villages were already coded 1013xxx).
- District names fixed (1705 was “I”, 1603 was cut short, several misspellings).

## Open review lists (`review/`)

Not changed automatically — please check with the official list:
- `village_names_differ_from_luis.csv` — same code, different name in LUIS (spelling, renamed, merged, or another village).
- `villages_not_in_luis.csv` / `luis_villages_not_in_this_list.csv` — villages found in only one of the two lists.
- `possible_typos.csv`.

The official national count was 8,507 villages in 2021, so this list (8,509) is close; the LUIS database has 8,642.

## Sources

- Version 1: Lao Statistics Bureau 2015 data via https://www.k4d.la/
- Version 2 checks: LUIS (Land Use Information System, Department of Land) administrative tables
- Xangmixay: KPL https://kpl.gov.la/En/detail.aspx?id=91502 ; Laotian Times
  https://laotiantimes.com/2026/01/02/vientiane-capital-officially-declares-xangmixay-as-its-first-sub-district/
- Sub-district progress: KPL https://kpl.gov.la/detail.aspx?id=101983
