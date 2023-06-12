CREATE TABLE "tur"(
    "turno" BIGINT NOT NULL,
    "turadi" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "tur" ADD PRIMARY KEY("turno");
CREATE TABLE "kitap"(
    "kitapno" BIGINT NOT NULL,
    "isbnno" UUID NOT NULL,
    "kitapadi" VARCHAR(255) NOT NULL,
    "yazarno" BIGINT NOT NULL,
    "turno" BIGINT NOT NULL,
    "sayfasayisi" BIGINT NOT NULL,
    "puan" BIGINT NOT NULL
);
ALTER TABLE
    "kitap" ADD PRIMARY KEY("kitapno");
CREATE TABLE "ogrenci"(
    "ogrno" BIGINT NOT NULL,
    "ograd" VARCHAR(255) NOT NULL,
    "ogrsoyad" VARCHAR(255) NOT NULL,
    "cinsiyet" CHAR(255) NOT NULL,
    "dtarih" DATE NOT NULL,
    "sinif" VARCHAR(255) NOT NULL,
    "puan" BIGINT NOT NULL
);
ALTER TABLE
    "ogrenci" ADD PRIMARY KEY("ogrno");
CREATE TABLE "islem"(
    "islemno" BIGINT NOT NULL,
    "ogrno" BIGINT NOT NULL,
    "kitapno" BIGINT NOT NULL,
    "atarih" DATE NOT NULL,
    "vtarih" DATE NOT NULL
);
ALTER TABLE
    "islem" ADD PRIMARY KEY("islemno");
CREATE TABLE "yazar"(
    "yazarno" BIGINT NOT NULL,
    "yazarad" VARCHAR(255) NOT NULL,
    "yazarsoyad" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "yazar" ADD PRIMARY KEY("yazarno");
ALTER TABLE
    "islem" ADD CONSTRAINT "islem_kitapno_foreign" FOREIGN KEY("kitapno") REFERENCES "kitap"("kitapno");
ALTER TABLE
    "islem" ADD CONSTRAINT "islem_ogrno_foreign" FOREIGN KEY("ogrno") REFERENCES "ogrenci"("ogrno");
ALTER TABLE
    "kitap" ADD CONSTRAINT "kitap_yazarno_foreign" FOREIGN KEY("yazarno") REFERENCES "yazar"("yazarno");
ALTER TABLE
    "kitap" ADD CONSTRAINT "kitap_turno_foreign" FOREIGN KEY("turno") REFERENCES "tur"("turno");