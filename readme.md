# SQL Sorgu Alıştırmaları

Bu hafta SQL sorguları üzerine çalışıyorsunuz. Bugünkü alıştırmada sizin için hazırladığımız veritabanında aşağıda istediğimiz sonuçları elde etmenize yarayan SQL sorgularını oluşturacaksınız.

# Proje Kurulumu

Projeyi forklayın ve clonlayın. Tamamladığınızda da pushlayın.

## Kütüphane Bilgi Sistemi

Bu veritabanı, bir okulun kütüphanesinden öğrencilerin aldıkları kitapların bilgisini barındırmaktadır.

#Tablolar
`ogrenci` tablosu öğrencilerin listesini tutar.
`islem` tablosu öğrencilerin kütüphaneden aldıkları kitapların bilgilerini tutar
`kitap` tablosu kütüphanedeki kitapların bilgisini tutar
`yazar` tablosu kitapların yazarları bilgisini tutar
`tur` tablosu kitapların türlerini tutar.

Tablo ilişiklerini görmek için [ktphn.png] dosyasına göz atın.

Yazdığınız sorguları buradan test edebilirsiniz: [https://ergineer.com/assets/materials/fkg36so5-kutuphanebilgisistemi-sql/] (update, delete, drop sorguları iptal edilmiştir).

### Görevler

Aşağıda istenilen sonuçlara ulaşabilmek için gerekli SQL sorgularını altlarına yazın.

    1) ÖRNEK SORU: Öğrenci tablosundaki tüm kayıtları listeleyin.

    	CEVAP: select * from ogrenci


    2) Öğrenci tablosundaki öğrencinin adını ve soyadını ve sınıfını listeleyin.
        SELECT ograd, ogrsoyad, sinif FROM ogrenci;

    3) Öğrenci tablosundaki kız öğrencileri listeleyin.
         SELECT * FROM ogrenci WHERE cinsiyet = 'K';

    4) Öğrenci tablosunda kaydı bulunan sınıfların adını her sınıf bir kez görüntülenecek şekilde listeleyiniz
    	 SELECT DISTINCT sinif FROM ogrenci;

    5) Öğrenci tablosunda, 10A sınıfında olan kız öğrencileri listeleyiniz.
    	 SELECT * FROM ogrenci WHERE cinsiyet='K' AND sinif ='10A';

    6) Öğrenci tablosundaki 10A veya 10B sınıfındaki öğrencilerin adını, soyadını ve sınıfını listeleyiniz.
         SELECT ograd, ogrsoyad, sinif FROM ogrenci WHERE sinif ='10A' or sinif='10B';

    7) Öğrenci tablosundaki öğrencinin adını, soyadını ve numarasını okul numarası olarak listeleyiniz. (as kullanım örneği)
       SELECT ograd, ogrsoyad, ogrno AS OkulNo FROM ogrenci;

    8) Öğrenci tablosundaki öğrencinin adını ve soyadını birleştirip, adsoyad olarak listeleyiniz. (concat, as kullanım örneği)
      SELECT CONCAT (ograd,  ' ', ogrsoyad) AS ogradsoyad FROM ogrenci;

    9) Öğrenci tablosundaki Adı ‘A’ harfi ile başlayan öğrencileri listeleyiniz.
    	 SELECT * FROM ogrenci WHERE ograd LIKE 'A%';

    10) Kitaplar tablosundaki sayfa sayısı 50 ile 200 arasında olan kitapların adını ve sayfa sayısını listeleyiniz.
    	 SELECT kitapadi, sayfasayisi FROM kitap WHERE sayfasayisi BETWEEN 50 AND 200;

    11) Öğrenci tablosunda adı Fidan, İsmail ve Leyla olan öğrencileri listeleyiniz.
    	 SELECT * FROM ogrenci WHERE ograd IN ('Fidan','İsmail','Leyla');

    12) Öğrenci tablosundaki öğrencilerden adı A, D ve K ile başlayan öğrencileri listeleyiniz.
    	SELECT * FROM ogrenci WHERE ograd LIKE '[ADK]%'; (çalışmadı)
    	SELECT * FROM ogrenci WHERE ograd IN ('A%', 'D%', 'K%'); (çalışmadı)
    	SELECT * FROM ogrenci WHERE ograd LIKE 'A%' OR ograd LIKE 'D%' OR ograd LIKE 'K%'; (çalıştı)

    13) Öğrenci tablosundaki sınıfı 9A olan Erkekleri veya sınıfı 9B olan kızların adını, soyadını, sınıfını ve cinsiyetini listeleyiniz.
    	SELECT ograd, ogrsoyad, sinif, cinsiyet FROM ogrenci WHERE cinsiyet ='E' AND sinif ='9A' OR cinsiyet ='K' AND sinif ='9B';

    14) Sınıfı 10A veya 10B olan erkekleri listeleyiniz.
    	SELECT *FROM ogrenci WHERE sinif  IN ('10A', '10B') AND cinsiyet ='E';

    15) Öğrenci tablosunda doğum yılı 1989 olan öğrencileri listeleyiniz.


    16) Öğrenci numarası 30 ile 50 arasında olan Kız öğrencileri listeleyiniz.


    17) Öğrencileri adına göre sıralayınız (alfabetik).


    18) Öğrencileri adına, adı aynı olanlarıda soyadlarına göre sıralayınız.


    19) 10A sınıfındaki öğrencileri okul numarasına göre azalan olarak sıralayınız.


    20) Öğrenciler tablosundaki ilk 10 kaydı listeleyiniz.
    [İPUCU: `Select top tüm mysql versiyonlarında düzgün çalışmaz. LİMİT kullanmak daha faydalıdır`]

    21) Öğrenciler tablosundaki ilk 10 kaydın ad, soyad ve doğum tarihi bilgilerini listeleyiniz.


    22) Sayfa sayısı en fazla olan kitabı listeleyiniz.


    23) Öğrenciler tablosundaki en genç öğrenciyi listeleyiniz.


    24) 10A sınıfındaki en yaşlı öğrenciyi listeyin.


    25) İkinci harfi N olan kitapları listeleyiniz.


    26) Öğrencileri sınıflarına göre gruplayarak listeleyin.


    27) Öğrencileri her sorgulamada sıralaması farklı olacak şekilde rastgele listeleyin.
    [İPUCU: rand() fonksiyonu]


    28) Öğrenci tablosundan Rastgele bir öğrenci seçiniz.


    29) 10A sınıfından rastgele bir öğrencinin adını, soyadını, numarasını ve sınıfını getirin.


    # Esnek
    30) Öğrenci tablosunda aynı isimde kaçar öğrenci olduğunu bulmak istiyoruz.
    Öğrenci isimlerinin sayısını "adet" olarak öğrencilerin isimleri "isim" olarak listeleyin.
    [İPUCU: count() ve group by]
