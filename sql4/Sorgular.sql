use EserSatisDB;

Select * from Musteri where LEN(MusteriAdi) = 5

--Maa�� 30binden fazla olan personeli getir
Select * from Personel where PersonelMaasi >30000

--Maa�� 30binden fazla olan personelin zaml� maa�� +5000 olsun, ad�n� soyad�n� getir
Select PersonelAdi,PersonelSoyadi, PersonelMaasi, (PersonelMaasi+5000) as ZamliMaas from Personel
where PersonelMaasi>30000

Update Personel set PersonelMaasi = PersonelMaasi+5000 where PersonelMaasi>30000

--Adres k�sm� girilmemi� olan personelin adresi Girilmemi� olarak yaz�ls�n.
Select PersonelAdi,PersonelSoyadi, PersonelMaasi, ISNULL(PersonelAdres, 'Girilmemi�') as Adres from Personel --where PersonelAdres is NULL

Update Personel Set PersonelAdres = 'Girilmemi�' where PersonelAdres is NULL


Delete from Personel where PersonelAdres is NULL


--Nested Query 

Select AVG(PersonelMaasi) as ortalama  from Personel
Select PersonelAdi,PersonelSoyadi,PersonelMaasi  from Personel

--personel listesi ve yan�nda ortalama maa�� nested query ile g�ster
Select PersonelAdi,PersonelSoyadi,PersonelMaasi, (Select AVG(PersonelMaasi) as ortalama  from Personel) as ortalamamaas from Personel

--eser adi ve sanatci adini getiren sorguyu nested query ile yaz�n
Select * from Eser
Select * from Sanatci

Select *, 
(Select SanatciAdi from Sanatci where Sanatci.SanatciID = Eser.EserSanatciID) as SanatciAdi,
(Select SanatciSoyadi from Sanatci where Sanatci.SanatciID = Eser.EserSanatciID) as SanatciSoyadi
from Eser

--Eser sat��lar tarihlerini, eseri alan m��terinin ad�, eserin ad� ,eserin sanatc�s�n�n ad�n� getiren sorguyu nested query ile yaz�n.
Select * from Satis
Select * from Musteri
Select * from Eser
Select * from Sanatci

Select SatisTarihi,
(Select MusteriAdi from Musteri where Satis.SatisMusteriID = musteri.MusteriID) as MusteriAdi,
(Select EserAdi from Eser where eser.EserID = Satis.SatisEserID) as EserAdi,
(Select SanatciAdi from Sanatci where Sanatci.SanatciID = 
(Select EserSanatciID from Eser where Eser.EserId = Satis.SatisEserID )) as SanatciAdi
from Satis


--eser ad� ve sanatci adini from s�zc���n� kullanarak getir
Select * from Eser
Select * from Sanatci

Select * from Eser as e, Sanatci as s where e.EserSanatciID = s.SanatciID

Select e.EserAdi,e.Fiyat,m.MusteriAdi,m.MusteriSoyadi,st.SatisTarihi, sn.SanatciAdi,sn.SanatciSoyadi 
from Satis as st,Musteri as m,Eser as e ,Sanatci as sn
where 
st.SatisMusteriID = m.MusteriID and 
e.EserID = st.SatisEserID and
e.EserSanatciID = sn.SanatciID

--eser fiyat� ortalama eser fiyat�ndan y�ksek olan eserleri getiren sorgu

Select * from Eser as e where e.Fiyat> (Select AVG(e2.Fiyat) from Eser e2)

--Fiyat� ortalama fiyattan y�ksek olan eserleri sat�n alan m��terilerin ad�n� soyad�n� getiren sorguyu yaz�n�z

Select m.MusteriAdi,m.MusteriSoyadi from Satis s, Musteri m, Eser e
where s.SatisEserID = e.EserID and
s.SatisMusteriID = m.MusteriID and
e.Fiyat > (Select AVG(e2.Fiyat) from Eser e2)