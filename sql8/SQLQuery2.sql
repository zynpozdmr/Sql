Declare @ad nvarchar (50)
Declare @soyad nvarchar (50), @sinif int
Declare @sayi int = 5
Declare @hata nvarchar (max)
Declare @kayitSayisi int

Set @sayi=15
Select @sayi=25


Select @sayi =25
Declare @aranacakKelime nvarchar(50)
Select @aranacakKelime ='%ura%'
--Select * from tb_Egitmen e
--where e.EgitmenAdi like @aranacakKelime
--Insert into tb_Egitmen
--(EgitmenAdi,EgitmenSoyadi,EgitmenDogumSehirId)
--Values('Maide Feyza', 'Er',1)
--Select @hata =@@ERROR
Select @kayitSayisi =@@ROWCOUNT
print @kayitSayisi 


Select EgitmenAdi,EgitmenSoyadi,
EgitmenAylikGelir,
(Case
When EgitmenAylikGelir<35000 Then 'maaş az'
When EgitmenAylikGelir<85000 Then 'maaş normal'
Else 'maaş fazla'
End) as MaasDurum,

(Case
When EgitmenAylikGelir<35000 then EgitmenAylikGelir * 1.3
When EgitmenAylikGelir<85000 then EgitmenAylikGelir * 1.1
Else EgitmenAylikGelir
End) as ZamliMaas,

EgitmenDogumSehirId from tb_Egitmen


Select e.EgitmenAdi, e.EgitmenSoyadi, e.EgitmenAylikGelir,
--şart ifadesinde koşuldan sonraki ilk durum koşul sağlanırsa virgül sonrası koşul sağlanmazsa
IIF(EgitmenAylikGelir<35000,'maaş az', ' ')
as MaasDurum,
IIF(EgitmenAylikGelir<80000,'maaş normal', 'maaş fazla')
as MaasDurum
from tb_Egitmen as e


Declare @secim int= 1
IF @secim=1
	BEGIN
		Select * from tb_Egitmen
		Select * from tb_KursEgitmen
	END
ELSE IF @secim=2
	Select * from tb_Ilce
ELSE 
	BEGIN
		Select *from tb_Ogrenci
	END

-- sayac 12ye kadar olan sayıların toplamını ekrana yazdır
--10 sayısına gelince bunu atlasın
--toplam 15ten büyük olduğunda döngüden çık
Declare @sayac int=0
Declare @toplam int=0
WHILE @sayac<12
BEGIN
	SELECT @sayac= @sayac + 1
		IF @sayac =10 
		BEGIN
			CONTINUE
		END
	SELECT @toplam= @toplam + @sayac
	print  @toplam
	IF @toplam>16
		BREAK
END


