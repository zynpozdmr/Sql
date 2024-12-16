ALTER VIEW vw_EgitmenGelirAraligi
AS
Select * from tb_Egitmen where EgitmenAylikGelir between 60000 and 100000
WITH CHECK OPTION


Select * from vw_EgitmenGelirAraligi


--WITH CHECK OPTION --> Veri eklerken view içerisindeki sorguya uygun  koþula baðlý olarak veri eklenmesini saðlar
INSERT INTO vw_EgitmenGelirAraligi values ('Murat', 'TOPTAÞ',11,70000)

