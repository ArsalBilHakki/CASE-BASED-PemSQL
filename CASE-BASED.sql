CREATE SCHEMA CASEBASED;

USE CASEBASED;

-- SOAL 1

CREATE TABLE mahasiswa (
  nim VARCHAR(15) PRIMARY KEY,
  nama VARCHAR(100),
  alamat VARCHAR(100),
  jenis_kelamin CHAR(1),
  tanggal_lahir DATE,
  password VARCHAR(15)
);

CREATE TABLE mata_kuliah (
  kode_mk VARCHAR(8) PRIMARY KEY,
  nama_mk VARCHAR(30),
  sks SMALLINT,
  mk_prasyarat VARCHAR(8),
  min_nilai_mk_prasyarat VARCHAR(2)
);

CREATE TABLE krs (
  nim VARCHAR(15),
  tahun CHAR(4),
  is_ganjil CHAR(1),
  kode_mk VARCHAR(8),
  nilai_angka DECIMAL(10,0),
  nilai_huruf VARCHAR(2),
  PRIMARY KEY (nim, tahun, is_ganjil, kode_mk),
  FOREIGN KEY (nim) REFERENCES mahasiswa(nim),
  FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk)
);

-- SOAL 2

INSERT INTO mahasiswa VALUES
('M001', 'Benjamin Netanyahu', 'Tel Aviv', 'L', '1999-10-21', 'passben'),
('M002', 'Isaac Herzog', 'Jerusalem', 'L', '2000-06-10', 'passisaac'),
('M003', 'Donald Trump', 'New York', 'L', '1998-06-14', 'passtump'),
('M004', 'Pete Hegseth', 'Minnesota', 'L', '2001-07-06', 'passpete'),
('M005', 'Ali Khamenei', 'Tehran', 'L', '1999-04-17', 'passali');

INSERT INTO mata_kuliah VALUES
('MK001', 'Struktur Data', 3, NULL, NULL),
('MK002', 'Algoritma', 3, 'MK001', 'C'),
('MK003', 'Basis Data', 4, NULL, NULL),
('MK004', 'Pemrograman Lanjut', 4, 'MK002', 'C'),
('MK005', 'Sistem Operasi', 3, NULL, NULL),
('MK006', 'Jaringan Komputer', 3, 'MK005', 'C'),
('MK007', 'Kecerdasan Buatan', 3, 'MK004', 'B'),
('MK008', 'Analisis Numerik', 2, NULL, NULL),
('MK009', 'Manajemen Proyek TI', 3, NULL, NULL),
('MK010', 'Pemrograman Web', 3, 'MK004', 'B');

-- M001
-- 2023 Ganjil
INSERT INTO krs VALUES
('M001', '2023', '1', 'MK001', 62, 'C+'),
('M001', '2023', '1', 'MK003', 78, 'B+'),
('M001', '2023', '1', 'MK005', 55, 'C'),
('M001', '2023', '1', 'MK008', 84, 'A'),
('M001', '2023', '1', 'MK009', 73, 'B');

-- 2023 Genap
INSERT INTO krs VALUES
('M001', '2023', '0', 'MK002', 67, 'C+'),
('M001', '2023', '0', 'MK004', 71, 'B'),
('M001', '2023', '0', 'MK006', 60, 'C+'),
('M001', '2023', '0', 'MK007', 81, 'A'),
('M001', '2023', '0', 'MK010', 75, 'B+');

-- 2024 Ganjil
INSERT INTO krs VALUES
('M001', '2024', '1', 'MK001', 88, 'A'),
('M001', '2024', '1', 'MK003', 79, 'B+'),
('M001', '2024', '1', 'MK005', 52, 'D+'),
('M001', '2024', '1', 'MK007', 70, 'B'),
('M001', '2024', '1', 'MK009', 66, 'C+');

-- M002
-- 2023 Ganjil
INSERT INTO krs VALUES
('M002', '2023', '1', 'MK001', 76, 'B+'),
('M002', '2023', '1', 'MK003', 83, 'A'),
('M002', '2023', '1', 'MK005', 68, 'C+'),
('M002', '2023', '1', 'MK008', 58, 'C'),
('M002', '2023', '1', 'MK009', 45, 'D');

-- 2023 Genap
INSERT INTO krs VALUES
('M002', '2023', '0', 'MK002', 72, 'B'),
('M002', '2023', '0', 'MK004', 80, 'A'),
('M002', '2023', '0', 'MK006', 66, 'C+'),
('M002', '2023', '0', 'MK007', 74, 'B'),
('M002', '2023', '0', 'MK010', 47, 'D');

-- 2024 Ganjil
INSERT INTO krs VALUES
('M002', '2024', '1', 'MK001', 54, 'D+'),
('M002', '2024', '1', 'MK003', 63, 'C+'),
('M002', '2024', '1', 'MK005', 79, 'B+'),
('M002', '2024', '1', 'MK008', 59, 'C'),
('M002', '2024', '1', 'MK009', 81, 'A');

-- M003
-- 2023 Ganjil
INSERT INTO krs VALUES
('M003', '2023', '1', 'MK001', 67, 'C+'),
('M003', '2023', '1', 'MK003', 72, 'B'),
('M003', '2023', '1', 'MK005', 56, 'C'),
('M003', '2023', '1', 'MK008', 85, 'A'),
('M003', '2023', '1', 'MK009', 77, 'B+');

-- 2023 Genap
INSERT INTO krs VALUES
('M003', '2023', '0', 'MK002', 51, 'D+'),
('M003', '2023', '0', 'MK004', 73, 'B'),
('M003', '2023', '0', 'MK006', 61, 'C+'),
('M003', '2023', '0', 'MK007', 64, 'C+'),
('M003', '2023', '0', 'MK010', 90, 'A');

-- 2024 Ganjil
INSERT INTO krs VALUES
('M003', '2024', '1', 'MK001', 75, 'B+'),
('M003', '2024', '1', 'MK003', 58, 'C'),
('M003', '2024', '1', 'MK005', 67, 'C+'),
('M003', '2024', '1', 'MK008', 69, 'C+'),
('M003', '2024', '1', 'MK010', 80, 'A');

-- M004
-- 2023 Ganjil
INSERT INTO krs VALUES
('M004', '2023', '1', 'MK001', 69, 'C+'),
('M004', '2023', '1', 'MK003', 62, 'C+'),
('M004', '2023', '1', 'MK005', 71, 'B'),
('M004', '2023', '1', 'MK007', 88, 'A'),
('M004', '2023', '1', 'MK009', 74, 'B');

-- 2023 Genap
INSERT INTO krs VALUES
('M004', '2023', '0', 'MK002', 66, 'C+'),
('M004', '2023', '0', 'MK004', 79, 'B+'),
('M004', '2023', '0', 'MK006', 72, 'B'),
('M004', '2023', '0', 'MK008', 81, 'A'),
('M004', '2023', '0', 'MK010', 53, 'D+');

-- 2024 Ganjil
INSERT INTO krs VALUES
('M004', '2024', '1', 'MK001', 60, 'C+'),
('M004', '2024', '1', 'MK003', 82, 'A'),
('M004', '2024', '1', 'MK005', 75, 'B+'),
('M004', '2024', '1', 'MK007', 63, 'C+'),
('M004', '2024', '1', 'MK010', 78, 'B+');

-- M005
-- Semester 2023 Ganjil
INSERT INTO krs VALUES
('M005', '2023', '1', 'MK001', 87, 'A'),
('M005', '2023', '1', 'MK003', 49, 'D'),
('M005', '2023', '1', 'MK005', 61, 'C+'),
('M005', '2023', '1', 'MK008', 55, 'C'),
('M005', '2023', '1', 'MK009', 71, 'B');

-- Semester 2023 Genap
INSERT INTO krs VALUES
('M005', '2023', '0', 'MK002', 78, 'B+'),
('M005', '2023', '0', 'MK004', 60, 'C+'),
('M005', '2023', '0', 'MK006', 72, 'B'),
('M005', '2023', '0', 'MK007', 59, 'C'),
('M005', '2023', '0', 'MK010', 64, 'C+');

-- Semester 2024 Ganjil
INSERT INTO krs VALUES
('M005', '2024', '1', 'MK001', 79, 'B+'),
('M005', '2024', '1', 'MK003', 81, 'A'),
('M005', '2024', '1', 'MK005', 70, 'B'),
('M005', '2024', '1', 'MK008', 60, 'C+'),
('M005', '2024', '1', 'MK009', 75, 'B+');

-- SOAL 3

DELIMITER //
CREATE PROCEDURE Login(
  IN in_nim VARCHAR(15), IN in_password VARCHAR(15),
  OUT out_message VARCHAR(50)
)
BEGIN
  DECLARE user_exists INT;
  DECLARE pwd_match INT;

  SELECT COUNT(*) INTO user_exists FROM mahasiswa WHERE nim = in_nim;

  IF user_exists = 0 THEN
    SET out_message = 'user tidak ada';
  ELSE
    SELECT COUNT(*) INTO pwd_match 
    FROM mahasiswa 
    WHERE nim = in_nim AND password = in_password;

    IF pwd_match = 0 THEN
      SET out_message = 'password salah';
    ELSE
      SET out_message = 'Login Sukses';
      SELECT nim, nama, alamat 
      FROM mahasiswa 
      WHERE nim = in_nim;
    END IF;
  END IF;
END //
DELIMITER ;

-- SOAL 4

DELIMITER //
CREATE PROCEDURE Daftar_Peserta_Kelas(
  IN in_tahun CHAR(4), IN in_is_ganjil CHAR(1), IN in_kode_mk VARCHAR(8)
)
BEGIN
  SELECT m.nim, m.nama
  FROM krs k
  JOIN mahasiswa m ON m.nim = k.nim
  WHERE k.tahun = in_tahun AND k.is_ganjil = in_is_ganjil AND k.kode_mk = in_kode_mk;
END //
DELIMITER ;

-- SOAL 5

DELIMITER //
CREATE PROCEDURE Hitung_IPS(
  IN in_nim VARCHAR(15), IN in_tahun CHAR(4), IN in_is_ganjil CHAR(1),
  OUT out_ips DECIMAL(5,2)
)
BEGIN
  DECLARE total_sks INT;
  DECLARE total_bobot DOUBLE;

  SELECT 
    SUM(mk.sks),
    SUM(mk.sks *
      CASE
        WHEN k.nilai_huruf = 'A' THEN 4
        WHEN k.nilai_huruf = 'B+' THEN 3.5
        WHEN k.nilai_huruf = 'B' THEN 3
        WHEN k.nilai_huruf = 'C+' THEN 2.5
        WHEN k.nilai_huruf = 'C' THEN 2
        WHEN k.nilai_huruf = 'D+' THEN 1.5
        WHEN k.nilai_huruf = 'D' THEN 1
        ELSE 0
      END
    )
  INTO total_sks, total_bobot
  FROM krs k
  JOIN mata_kuliah mk ON k.kode_mk = mk.kode_mk
  WHERE k.nim = in_nim AND k.tahun = in_tahun AND k.is_ganjil = in_is_ganjil;

  IF total_sks > 0 THEN
    SET out_ips = total_bobot / total_sks;
  ELSE
    SET out_ips = 0;
  END IF;
END //
DELIMITER ;

-- SOAL 6

DELIMITER //
CREATE FUNCTION konversi_nilai(nilai DECIMAL(10,0)) RETURNS VARCHAR(2)
DETERMINISTIC
BEGIN
  RETURN CASE
    WHEN nilai > 80 THEN 'A'
    WHEN nilai > 75 THEN 'B+'
    WHEN nilai > 69 THEN 'B'
    WHEN nilai > 60 THEN 'C+'
    WHEN nilai > 55 THEN 'C'
    WHEN nilai > 50 THEN 'D+'
    WHEN nilai > 44 THEN 'D'
    ELSE 'E'
  END;
END //
DELIMITER ;

-- SOAL 7

DELIMITER //
CREATE PROCEDURE KHS(
  IN in_nim VARCHAR(15), IN in_tahun CHAR(4), IN in_is_ganjil CHAR(1)
)
BEGIN
  SELECT k.kode_mk, m.nama_mk, k.nilai_huruf
  FROM krs k
  JOIN mata_kuliah m ON m.kode_mk = k.kode_mk
  WHERE k.nim = in_nim AND k.tahun = in_tahun AND k.is_ganjil = in_is_ganjil;

  CALL Hitung_IPS(in_nim, in_tahun, in_is_ganjil, @ips);
  SELECT @ips AS IP_Semester;
END //
DELIMITER ;

-- SOAL 8

CREATE TABLE krs_history (
  nim VARCHAR(15),
  tahun CHAR(4),
  is_ganjil CHAR(1),
  kode_mk VARCHAR(8),
  nilai_angka DECIMAL(10,0),
  nilai_huruf VARCHAR(2),
  nilai_angka_baru DECIMAL(10,0),
  nilai_huruf_baru VARCHAR(2),
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER trg_update_krs
BEFORE UPDATE ON krs
FOR EACH ROW
BEGIN
  IF OLD.nilai_angka <> NEW.nilai_angka OR OLD.nilai_huruf <> NEW.nilai_huruf THEN
    INSERT INTO krs_history (
      nim, tahun, is_ganjil, kode_mk,
      nilai_angka, nilai_huruf,
      nilai_angka_baru, nilai_huruf_baru
    ) VALUES (
      OLD.nim, OLD.tahun, OLD.is_ganjil, OLD.kode_mk,
      OLD.nilai_angka, OLD.nilai_huruf,
      NEW.nilai_angka, NEW.nilai_huruf
    );
  END IF;
END //
DELIMITER ;
