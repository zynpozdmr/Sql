
ALTER PROCEDURE [dbo].[sp_OgrenciKursSayisi]

AS
BEGIN
	Select
	sorgusonucu.KursSayisi,
	(Select OgrenciAdi from tb_Ogrenci o2 where o2.OgrenciId = sorgusonucu.OgrenciId),
	(Select OgrenciSoyadi from tb_Ogrenci o3 where o3.OgrenciId = sorgusonucu.OgrenciId) from (Select OgrenciId,Count(KursAdi) as KursSayisi
	from tb_KursOgrenci ko
	inner join tb_Ogrenci o on o.OgrenciId = ko.KursOgrenciOgrenciId
	inner join tb_KursEgitmen ke on ke.KursEgitmenId = ko.KursOgrenciKursEgitmenId
	inner join tb_Kurs k on k.KursId = ke.KursEgitmenKursId
	group by o.OgrenciId) as sorgusonucu
END