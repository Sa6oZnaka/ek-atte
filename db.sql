DROP TABLE IF EXISTS "ek_obst" CASCADE;
DROP TABLE IF EXISTS "ek_obl" CASCADE;
DROP TABLE IF EXISTS "ek_atte" CASCADE;

CREATE TABLE IF NOT EXISTS "ek_obst" (
  	"id" char(5) PRIMARY KEY,
  	"name" char(25),
  	"category" char(1)
);

CREATE TABLE IF NOT EXISTS "ek_obl" (
  	"id" char(3) PRIMARY KEY,
  	"name" char(25),
  	"region" char(4),
  	"obstina" char(5),
	
   	FOREIGN KEY(obstina) 
    REFERENCES ek_obst(id)
);

CREATE TABLE IF NOT EXISTS "ek_atte" (
  	"ekatte" char(5) PRIMARY KEY,
  	"t_v_m" char(4),
  	"name" char(25),
  	"oblast" char(3),
  	"kind" char(1),
  	"altitude" char(1),
  	"tbs" char(2),
	
   	FOREIGN KEY(oblast) 
    REFERENCES ek_obl(id)
);

INSERT INTO ek_obst (id, name, category)
VALUES
('PDV01', 'Асеновград', 2),
('DOB03', 'Балчик', 2),
('SZR31', 'Стара Загора', 1),
('SFO45', 'Сливница', 3),
('SLS31', 'Силистра', 1),
('SOF46', 'Столична', 0);


INSERT INTO ek_obl (id, name, region, obstina)
VALUES
('SFO', 'София', 'BG41', 'SOF46');

INSERT INTO "ek_atte" (ekatte, t_v_m, name, oblast, kind, altitude, tbs)
VALUES
('04546', 'с.', 'Бов', 'SFO', 3, 7, 1);


SELECT * FROM ek_obst;
SELECT * FROM ek_obl e LEFT JOIN ek_obst eo ON eo = e;

SELECT COUNT(*) FROM ek_obl;
SELECT COUNT(*) FROM ek_obst;
SELECT COUNT(*) FROM ek_atte;


