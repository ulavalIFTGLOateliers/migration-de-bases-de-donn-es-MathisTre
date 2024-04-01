DROP TABLE IF EXISTS band;

ALTER TABLE musician
RENAME TO singer,
RENAME COLUMN musicianName TO singerName;

ALTER TABLE singer
DROP COLUMN role,
DROP COLUMN bandName;

