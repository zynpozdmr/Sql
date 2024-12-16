--Öðrenci ve eðitmenlerin bulunduðu þehirleri benzersiz olarak getiren sorgu

Select SehirAdi from tb_Egitmen as e
inner join tb_Sehir as s on s.SehirId = e.EgitmenDogumSehirId
union
Select SehirAdi from tb_Ogrenci as o
inner join tb_Sehir as s on s.SehirId = o.OgrenciDogumSehirId


--eðitmenlerin bulunduðu þehirleri benzersiz olarak getiren bunun içinden öðrenci þehirlerini hariç tutan sorgu

Select SehirAdi from tb_Egitmen as e
inner join tb_Sehir as s on s.SehirId = e.EgitmenDogumSehirId
except
Select SehirAdi from tb_Ogrenci as o
inner join tb_Sehir as s on s.SehirId = o.OgrenciDogumSehirId

-- Eðitmen ve öðrenci þehirlerinden ayný olanlarý benzersiz olarak getir.
Select SehirAdi from tb_Egitmen as e
inner join tb_Sehir as s on s.SehirId = e.EgitmenDogumSehirId
intersect
Select SehirAdi from tb_Ogrenci as o
inner join tb_Sehir as s on s.SehirId = o.OgrenciDogumSehirId
