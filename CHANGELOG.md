# Changelog

## 2.1.0 — 2026-11

### Added
- All **33 ຕາແສງ of Vientiane Capital** (9 districts) from the official plan table of 7 June 2026
  (`sources/vientiane_capital_subdistricts_2026-06-07.jpg`). ຕາແສງຊ້າງມີໄຊ is declared; the other 32 are `planned`
  with their planned declaration date.
- `subdistricts` columns: `planned_declaration`, `office_lo`, `office_vil_code` (village of the ຕາແສງ office),
  `status_as_of`. Three office villages are not yet identified in the village list (ບ້ານຊ້ອມ, ບ້ານໂດນ,
  ບ້ານໃຫຍ່ນາຈະເລີນ) and are left empty.

## 2.0.0 — 2026-11

Checked against the LUIS (Department of Land) administrative tables. Every changed code and name is listed in
`changes/v2_changes.csv`.

### Added
- **Sub-district level (ຕາແສງ):** `subdistricts.csv` / `subdistricts.sql`, and `villages.subdist_id`.
  First entry: ຕາແສງຊ້າງມີໄຊ (Xaythany, Vientiane Capital, 24 villages, declared 31 Dec 2025).
- Text codes with leading zero: `prov_code`, `dist_code`, `vil_code` (e.g. `0106001`).
- Village coordinates `lat` / `lon` from LUIS where it is clearly the same village (7,513 of 8,509).
- `load_all.sql`: create all tables and load the CSV files in one step.
- `review/`: lists of differences to check against the official list (not applied).

### Fixed
- Removed invisible zero-width characters (U+200B) from 8,446 Lao names.
- Standardised Lao spelling variants (ຫນ→ໜ, ຫມ→ໝ, ຫລ→ຫຼ, ໍາ→ຳ, ນໍ້າ→ນ້ຳ) and doubled vowel/tone marks.
- District 1705 Lao name was “I” → ມ. ພູວົງ. District 1603 was cut short → ມ. ບາຈຽງຈະເລີນສຸກ.
- District Lao misspellings: 1304 ພິນ, 1306 ໜອງ, 1408 ສະໝ້ວຍ, 1609 ມູນລະປະໂມກ, 1702 ສາມັກຄີໄຊ;
  0502 ຕົ້ນເຜິ້ງ, 0805 ຊຽງຮ່ອນ, 1402 ຕະໂອ້ຍ, 1502 ກະເລິມ, 1504 ທ່າແຕງ.
- Village 1609090 had no English name → “B. Houayxay”.
- Removed `OWNER TO "root"` from the SQL files (it failed for anyone without a `root` role).

### Changed (ids)
- **District 0110 “Dan Xang Mixay” removed.** It was planned as a district but became ຕາແສງຊ້າງມີໄຊ inside
  Xaythany. Its 24 villages moved from `vil_id` 110xxx to 106xxx (same last 3 digits), `dist_id` 106.
  Village 110003 was wrongly under Chanthabuly (101); it is 106003.
- **Meun district** `dist_id` 1011 → 1013. Its 22 villages already had 1013xxx codes; their `dist_id` is now 1013.

If your project stores the old ids, map them with `changes/v2_changes.csv` (`old_code` → `new_code`).

## 1.0.0 — 2023-11
- Provinces, districts and villages from the 2015 data (k4d.la).
