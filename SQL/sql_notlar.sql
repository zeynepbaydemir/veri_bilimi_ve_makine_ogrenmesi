-- SELECT: Seç
-- SELECT * : Hepsini seç

-- demo tablosundaki tüm verileri getirir
SELECT * FROM demo;

-- LIMIT: limit koymak için

-- demo tablosundan ilk 10 kaydı getirir
SELECT * FROM demo LIMIT 10;

-- demo tablosundan name değeri 'Import' olan kayıtları getirir
SELECT * FROM demo WHERE name = 'Import';

-- demo tablosundan name değeri 'Tabs' olan kayıtların sadece id sütununu getirir
SELECT id FROM demo WHERE name = 'Tabs';

-- demo tablosundan name değeri 'Tabs' olan kayıtların id ve hint sütunlarını getirir
SELECT id, hint FROM demo WHERE name = 'Tabs';

-- demo tablosundan id değeri 10'dan büyük olan kayıtları getirir
SELECT * FROM demo WHERE id > 10;

-- demo tablosundan id değeri 10'dan küçük olan kayıtları getirir
SELECT * FROM demo WHERE id > 10;

-- demo tablosundan name değeri S harfi ile başlayan kayıtları getirir
SELECT * FROM demo WHERE name LIKE 'S%';

-- demo tablosundan name değeri e harfi ile biten kayıtları getirir
SELECT * FROM demo WHERE name LIKE '%e';



-- INSERT INTO: bir tabloya yeni kayıt eklemek için kullanılır.

-- demo tablosuna name='Zeynep' ve hint='Test' olan yeni bir kayıt ekler
INSERT INTO demo (name, hint) VALUES ('Zeynep','Test');



-- UPDATE: güncelle

-- demo tablosunda id'si 29 olan kaydın name sütununu 'Zey' olarak günceller
UPDATE demo SET name = 'Zey' WHERE id = 29;

-- demo tablosunda name değeri 'Labubu' olan kaydın hint sütununu 'this is a hint' olarak günceller
UPDATE demo SET hint = 'this is a hint' WHERE name='Labubu';




-- DELETE: sil

-- demo tablosunda id'si 30 olan kaydı siler
DELETE FROM demo WHERE id = 30;




-- CREATE TABLE IF NOT EXISTS: tablo yoksa yeni bir tablo oluşturmak için kullanılır

-- Students adında bir tablo oluşturur; tablo yoksa oluşturulur ve id, name, surname sütunlarını içerir
CREATE TABLE IF NOT EXISTS Students (id INTEGER PRIMARY KEY, name VARCHAR, surname VARCHAR);




-- Students tablosuna name='A' ve surname='B' olan yeni bir kayıt ekler
INSERT INTO Students (name, surname) VALUES ('A', 'B');


-- Students tablosundan name='A' olan kayıtların name ve surname sütunlarını n ve s takma adlarıyla getirir
SELECT name n, surname s FROM Students WHERE n = 'A';