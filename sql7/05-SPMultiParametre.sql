CREATE PROCEDURE sp_OgrenciKursSayisiAdveSoyadaGore

	@ogrAdi nvarchar(150),
	@ogrSoyadi nvarchar(150)

AS
BEGIN

	Select OgrenciId,Count(KursAdi), 
	(Select OgrenciAdi from tb_Ogrenci o2 where o2.OgrenciId = o.OgrenciId) as ogrAdi,
	(Select OgrenciSoyadi from tb_Ogrenci o3 where o3.OgrenciId = o.OgrenciId) as ogrSoyadi
	from tb_KursOgrenci ko
	inner join tb_Ogrenci o on o.OgrenciId = ko.KursOgrenciOgrenciId
	inner join tb_KursEgitmen ke on ke.KursEgitmenId = ko.KursOgrenciKursEgitmenId
	inner join tb_Kurs k on k.KursId = ke.KursEgitmenKursId
	where o.OgrenciSoyadi like '%'+@ogrSoyadi+'%' and o.OgrenciAdi like '%' + @ogrAdi + '%'
	group by o.OgrenciId
END