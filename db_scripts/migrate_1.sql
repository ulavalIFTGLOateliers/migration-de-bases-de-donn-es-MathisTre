CREATE TABLE IF NOT EXISTS band (       bandName varchar(50),
                                        creation YEAR,
                                        genre varchar(50),
                                        PRIMARY KEY(bandName));
ALTER TABLE singer
RENAME TO musician,
RENAME COLUMN singerName TO musicianName;



ALTER TABLE musician
ADD role varchar(50),
ADD bandName varchar(50);

INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna", 2009, "classical"), ("Mysterio", 2019, "pop");

UPDATE musician
SET role =
    CASE
        WHEN musicianName = 'Alina' THEN 'vocals'
        WHEN musicianName = 'Mysterio' THEN 'guitar'
        WHEN musicianName = 'Rainbow' THEN 'percussion'
        WHEN musicianName = 'Luna' THEN 'piano'
    END,
    bandName =
    CASE
        WHEN musicianName IN ('Alina', 'Rainbow') THEN 'Crazy Duo'
        WHEN musicianName = 'Mysterio' THEN 'Mysterio'
        WHEN musicianName = 'Luna' THEN 'Luna'
    END
WHERE musicianName IN ('Alina', 'Mysterio', 'Rainbow', 'Luna');