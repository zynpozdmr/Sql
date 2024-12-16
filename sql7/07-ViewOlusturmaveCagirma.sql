ALTER VIEW vw_OgrenciAdSoyadKursAdi
AS
Select o.OgrenciAdi,o.OgrenciSoyadi,k.KursAdi from tb_KursOgrenci ko
inner join tb_Ogrenci o on o.OgrenciId = ko.KursOgrenciOgrenciId
inner join tb_KursEgitmen ke on ke.KursEgitmenId = ko.KursOgrenciKursEgitmenId
inner join tb_Kurs k on k.KursId = ke.KursEgitmenKursId


Select * from vw_OgrenciAdSoyadKursAdi
