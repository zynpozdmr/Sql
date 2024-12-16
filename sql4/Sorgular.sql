use EserSatisDB;

Select * from Musteri where LEN(MusteriAdi) = 5

--Maaþý 30binden fazla olan personeli getir
Select * from Personel where PersonelMaasi >30000

--Maaþý 30binden fazla olan personelin zamlý maaþý +5000 olsun, adýný soyadýný getir
Select PersonelAdi,PersonelSoyadi, PersonelMaasi, (PersonelMaasi+5000) as ZamliMaas from Personel
where PersonelMaasi>30000

Update Personel set PersonelMaasi = PersonelMaasi+5000 where PersonelMaasi>30000

--Adres kýsmý girilmemiþ olan personelin adresi Girilmemiþ olarak yazýlsýn.
Select PersonelAdi,PersonelSoyadi, PersonelMaasi, ISNULL(PersonelAdres, 'Girilmemiþ') as Adres from Personel --where PersonelAdres is NULL

Update Personel Set PersonelAdres = 'Girilmemiþ' where PersonelAdres is NULL


Delete from Personel where PersonelAdres is NULL


--Nested Query 

Select AVG(PersonelMaasi) as ortalama  from Personel
Select PersonelAdi,PersonelSoyadi,PersonelMaasi  from Personel

--personel listesi ve yanýnda ortalama maaþý nested query ile göster
Select PersonelAdi,PersonelSoyadi,PersonelMaasi, (Select AVG(PersonelMaasi) as ortalama  from Personel) as ortalamamaas from Personel

--eser adi ve sanatci adini getiren sorguyu nested query ile yazýn
Select * from Eser
Select * from Sanatci

Select *, 
(Select SanatciAdi from Sanatci where Sanatci.SanatciID = Eser.EserSanatciID) as SanatciAdi,
(Select SanatciSoyadi from Sanatci where Sanatci.SanatciID = Eser.EserSanatciID) as SanatciSoyadi
from Eser

--Eser satýþlar tarihlerini, eseri alan müþterinin adý, eserin adý ,eserin sanatcýsýnýn adýný getiren sorguyu nested query ile yazýn.
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


--eser adý ve sanatci adini from sözcüðünü kullanarak getir
Select * from Eser
Select * from Sanatci

Select * from Eser as e, Sanatci as s where e.EserSanatciID = s.SanatciID

Select e.EserAdi,e.Fiyat,m.MusteriAdi,m.MusteriSoyadi,st.SatisTarihi, sn.SanatciAdi,sn.SanatciSoyadi 
from Satis as st,Musteri as m,Eser as e ,Sanatci as sn
where 
st.SatisMusteriID = m.MusteriID and 
e.EserID = st.SatisEserID and
e.EserSanatciID = sn.SanatciID

--eser fiyatý ortalama eser fiyatýndan yüksek olan eserleri getiren sorgu

Select * from Eser as e where e.Fiyat> (Select AVG(e2.Fiyat) from Eser e2)

--Fiyatý ortalama fiyattan yüksek olan eserleri satýn alan müþterilerin adýný soyadýný getiren sorguyu yazýnýz

Select m.MusteriAdi,m.MusteriSoyadi from Satis s, Musteri m, Eser e
where s.SatisEserID = e.EserID and
s.SatisMusteriID = m.MusteriID and
e.Fiyat > (Select AVG(e2.Fiyat) from Eser e2)