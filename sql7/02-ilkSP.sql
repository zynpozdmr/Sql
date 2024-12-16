ALTER PROCEDURE sp_OgrenciKursSayisi

AS
BEGIN
	Select * from tb_Ogrenci where OgrenciAdi like 'B%'
END