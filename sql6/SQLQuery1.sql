--	Her departmanda çalışan personel sayısını listeleyen sorgu
Select Departman, COUNT(Per_Id) as 'ÇalışanSayısı'from Personel
Group By Departman

--Departmanların maaş ortalamasını listeleyen sorgu
Select Departman, AVG(Maas) From Personel Group by Departman

--3.	Her bir departmanın en yüksek maaşını listeleyen sorgu
Select Departman, MAX(Maas) As 'EnYuksekMaas' from Personel Group By Departman

--	Her bir departmanda alınan en yüksek ve en düşük maaşı listeleyen sorgu
Select Departman, MAX(Maas) As 'EnYuksekMaas' , MIN(Maas) AS 'EnDusukMAas' from Personel Group By Departman 

--5.	★ Her bir departmandaki personellerin görevlerine göre aldıkları en yüksek ve en düşük maaşı listeleyen sorgu ★
