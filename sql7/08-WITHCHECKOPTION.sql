ALTER VIEW vw_EgitmenGelirAraligi
AS
Select * from tb_Egitmen where EgitmenAylikGelir between 60000 and 100000
WITH CHECK OPTION


Select * from vw_EgitmenGelirAraligi


--WITH CHECK OPTION --> Veri eklerken view i�erisindeki sorguya uygun  ko�ula ba�l� olarak veri eklenmesini sa�lar
INSERT INTO vw_EgitmenGelirAraligi values ('Murat', 'TOPTA�',11,70000)

