function [jumlahHari] = hitung_hari_123210181(tanggalAwal, bulanAwal, tahunAwal, tanggalAkhir, bulanAkhir, tahunAkhir)

if(bulanAkhir >= 1 && bulanAkhir <13 && bulanAwal >=1 && bulanAwal <13) %error handling jika bulan yang diinputkan <=1 dan >12%

tahunAwal = datetime(tahunAwal, bulanAwal, tanggalAwal);
tahunAkhir = datetime(tahunAkhir, bulanAkhir, tanggalAkhir);
jumlahHari = between(tahunAwal, tahunAkhir, 'Days');
jumlahHari = erase(string(jumlahHari), 'd');
jumlahHari = str2double(jumlahHari);

else
   disp('Bulan yang anda Masukkan tidak valid');
end
