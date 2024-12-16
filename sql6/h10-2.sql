--��renci ve e�itmenlerin bulundu�u �ehirleri benzersiz olarak getiren sorgu

Select SehirAdi from tb_Egitmen as e
inner join tb_Sehir as s on s.SehirId = e.EgitmenDogumSehirId
union
Select SehirAdi from tb_Ogrenci as o
inner join tb_Sehir as s on s.SehirId = o.OgrenciDogumSehirId


--e�itmenlerin bulundu�u �ehirleri benzersiz olarak getiren bunun i�inden ��renci �ehirlerini hari� tutan sorgu

Select SehirAdi from tb_Egitmen as e
inner join tb_Sehir as s on s.SehirId = e.EgitmenDogumSehirId
except
Select SehirAdi from tb_Ogrenci as o
inner join tb_Sehir as s on s.SehirId = o.OgrenciDogumSehirId

-- E�itmen ve ��renci �ehirlerinden ayn� olanlar� benzersiz olarak getir.
Select SehirAdi from tb_Egitmen as e
inner join tb_Sehir as s on s.SehirId = e.EgitmenDogumSehirId
intersect
Select SehirAdi from tb_Ogrenci as o
inner join tb_Sehir as s on s.SehirId = o.OgrenciDogumSehirId
