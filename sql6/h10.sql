-- Kurs ad�, �ehir ad�, �l�e Ad�, e�itmen ad�, e�itmen soyad� b�y�k harflerle

-- 
Select k.KursAdi, e.EgitmenAdi, UPPER(e.EgitmenSoyadi) as Soyad�, s.SehirAdi, i.IlceAdi from tb_KursEgitmen as ke, 
tb_Kurs as k, 
tb_Egitmen as e,
tb_Ilce as i,
tb_Sehir as s

where ke.KursEgitmenKursId = k.KursId and 
ke.KursEgitmenEgitmenId = e.EgitmenId and 
k.KursIlceId = i.IlceId and
i.IlceSehirId = s.SehirId


Select k.KursAdi, e.EgitmenAdi, UPPER(e.EgitmenSoyadi) as Soyad�, s.SehirAdi, i.IlceAdi from tb_KursEgitmen as ke
inner join tb_Egitmen as e on  ke.KursEgitmenEgitmenId = e.EgitmenId
inner join tb_Kurs as k on ke.KursEgitmenKursId = k.KursId
inner join tb_Ilce as i on k.KursIlceId = i. IlceId
inner join tb_Sehir as s on i.IlceSehirId = s.SehirId


-- Kurs adlar�n� �ehir adlar�n� ve il�e adlar�n� getiren sorguyu yaz�n�z

Select k.KursAdi, s.SehirAdi,i.IlceAdi from tb_Kurs as k
left join tb_Ilce as i on i.IlceId = k.KursIlceId
left join tb_Sehir as s on s.SehirId = i.IlceSehirId

Select k.KursAdi, s.SehirAdi,i.IlceAdi from tb_Kurs as k
right join tb_Ilce as i on i.IlceId = k.KursIlceId
right join tb_Sehir as s on s.SehirId = i.IlceSehirId


