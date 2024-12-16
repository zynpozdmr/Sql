use ObsDb;

Select OgrenciAdi2 as Adi, OgrenciSoyadi as Soyadi from tb_Ogrenci

Select OgrenciAdi2 as 'Öðrenci Adý', OgrenciSoyadi as 'Öðrenci Soyadý' from tb_Ogrenci

Select tb_Ogrenci.* from tb_Ogrenci
Select tb_Ogrenci.OgrenciAdi2, tb_Ogrenci.OgrenciSoyadi from tb_Ogrenci

Select ogr.* from tb_Ogrenci as ogr

Select ogr.OgrenciAdi2, ogr.OgrenciSoyadi from tb_Ogrenci as ogr


Select distinct OgrenciAdi2 from tb_Ogrenci -- benzersiz kayýtlarý getirir

Select Count(OgrenciFoto) as SatirSayisi from tb_Ogrenci

Select Min(OgrenciNotu) as MinimumNot from tb_Ogrenci

Select Max(OgrenciNotu) as MaksimumNot from tb_Ogrenci

Select Avg(OgrenciNotu) as SinifOrtalamasi from tb_Ogrenci

Select Sum(OgrenciNotu) as ToplamNot from tb_Ogrenci

Select * from tb_Ogrenci as ogr where OgrenciAdi2 = 'abdullah'

Select * from tb_Ogrenci where OgrenciNotu = 50
Select * from tb_Ogrenci where OgrenciNotu >= 90

Select * from tb_Ogrenci where OgrenciFoto is null

Select * from tb_Ogrenci where OgrenciFoto is not null

Select * from tb_Ogrenci where OgrenciNotu>=70 and OgrenciNotu<=90

Select * from tb_Ogrenci where OgrenciNotu between 70 and 90

Select * from tb_Ogrenci where OgrenciAdi2 = 'abdullah' and OgrenciNotu>60

Select * from tb_Ogrenci where OgrenciAdi2 = 'abdullah' or OgrenciAdi2='Emrah'

Select * from tb_Ogrenci where (OgrenciNotu between 70 and 90) or (OgrenciAdi2='abdullah') 
