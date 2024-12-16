use UrunDB;

Select u.UrunAdi,k.KategoriAdi from Urun as u,Kategori as k where u.UrunKategoriId = k.KategoriId

use KutuphaneDB;

Select * from tb_Yazar where YazarAdi like '___han'

Select * from tb_Yazar where YazarAdi like '__rh__'

Select * from tb_Yazar where YazarAdi like '%an%'

Select * from tb_Yazar where YazarAdi not like '__rh__'

Select * from tb_Yazar where YazarAdi not like '%an%'

Select * from tb_Yazar where YazarId in (1,3,5)

Select * from tb_Yazar where YazarAdi in ('Fatma','Gökhan','Sefer')

Select * from tb_Yazar where YazarAdi not in ('Fatma','Gökhan','Sefer')

Select * from tb_Yazar order by YazarAdi desc

Select * from tb_Yazar order by YazarAdi desc, YazarSoyadi asc

Select * from tb_Yazar where YazarAdi like '%rh%' order by YazarAdi asc


Select YazarAdi, LEN(YazarAdi) as AdKS, YazarSoyadi, LEN(YazarSoyadi) as SoyadKS from tb_Yazar

Select YazarAdi, YazarSoyadi, LEN(YazarAdi) + LEN(YazarSoyadi) + 1 from tb_Yazar

Select UPPER(YazarAdi), UPPER(YazarSoyadi) from tb_Yazar
Select LOWER(YazarAdi), LOWER(YazarSoyadi) from tb_Yazar

Select YazarAdi, SUBSTRING(YazarAdi,2,2) from tb_Yazar

Select YazarAdi, Left(YazarAdi,3) from tb_Yazar
Select YazarAdi, Right(YazarAdi,3) from tb_Yazar