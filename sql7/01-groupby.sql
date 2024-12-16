--�ehirlerde a��lan kurs say�lar�n� g�steren sorguyu group by kullanarak yap�n�z.
Select SehirAdi, Count(KursAdi) from tb_Kurs k
inner join tb_Ilce i on i.IlceId = k.KursIlceId 
inner join tb_Sehir s on s.SehirId = i.IlceSehirId
group by s.SehirAdi
having s.SehirAdi like 'B%'

--��renci  ad� soyad� ve ald��� kurs say�s�n� getiren sorguyu group by ile yap�n�z.
Select OgrenciAdi,OgrenciSoyadi,Count(KursAdi) from tb_KursOgrenci ko
inner join tb_Ogrenci o on o.OgrenciId = ko.KursOgrenciOgrenciId
inner join tb_KursEgitmen ke on ke.KursEgitmenId = ko.KursOgrenciKursEgitmenId
inner join tb_Kurs k on k.KursId = ke.KursEgitmenKursId

group by o.OgrenciAdi, OgrenciSoyadi

-- ��renci ad� soyad� ve ald��� kurs say�s�n� g�steren sorguyu yaz�n�z.

Select OgrenciId,Count(KursAdi), 
(Select OgrenciAdi from tb_Ogrenci o2 where o2.OgrenciId = o.OgrenciId),
(Select OgrenciSoyadi from tb_Ogrenci o3 where o3.OgrenciId = o.OgrenciId)
from tb_KursOgrenci ko
inner join tb_Ogrenci o on o.OgrenciId = ko.KursOgrenciOgrenciId
inner join tb_KursEgitmen ke on ke.KursEgitmenId = ko.KursOgrenciKursEgitmenId
inner join tb_Kurs k on k.KursId = ke.KursEgitmenKursId
group by o.OgrenciId


Select
sorgusonucu.KursSayisi,
(Select OgrenciAdi from tb_Ogrenci o2 where o2.OgrenciId = sorgusonucu.OgrenciId),
(Select OgrenciSoyadi from tb_Ogrenci o3 where o3.OgrenciId = sorgusonucu.OgrenciId) from (Select OgrenciId,Count(KursAdi) as KursSayisi
from tb_KursOgrenci ko
inner join tb_Ogrenci o on o.OgrenciId = ko.KursOgrenciOgrenciId
inner join tb_KursEgitmen ke on ke.KursEgitmenId = ko.KursOgrenciKursEgitmenId
inner join tb_Kurs k on k.KursId = ke.KursEgitmenKursId
group by o.OgrenciId) as sorgusonucu