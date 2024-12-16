Select * from Bolumler Inner Join Ogrenci on
Bolumler.BolumId= Ogrenci.BolumId

Select * from Bolumler Left Join Ogrenci on
Bolumler.BolumId= Ogrenci.BolumId

Select * from Bolumler Right Join Ogrenci on
Bolumler.BolumId= Ogrenci.BolumId


Select Bolumler.BolumAdi, AVG(GNO) from Bolumler 
Inner Join Ogrenci ON Ogrenci.BolumID = Bolumler.BolumID
Group by Bolumler.BolumAdi

Select Bolumler.BolumAdi, COUNT(Ogr_no) from Ogrenci 
Right Join Bolumler 
ON Ogrenci.BolumID = Bolumler.BolumID
Group by Bolumler.BolumAdi

--Not ortalaması 3'nin altında öğrencisi olan bölümleri ve öğrenci sayılarını getiren sorgu
Select Bolumler.BolumAdi , COUNT(Ogr_no) from Ogrenci 
Inner Join Bolumler 
ON Ogrenci.BolumID = Bolumler.BolumID
where GNO<3
Group by Bolumler.BolumAdi

Delete Ogrenci from Ogrenci
Inner JOIN Bolumler 
ON Ogrenci.BolumID = Bolumler.BolumID
where Bolumler.BolumAdi= 'Mimarlýk'

Update Ogrenci Set Eposta='yeni@gmail.com' from Ogrenci
Inner JOIN Bolumler 
ON Ogrenci.BolumID = Bolumler.BolumID
where Bolumler.BolumAdi= 'Bilgisayar Mühendisliði'
