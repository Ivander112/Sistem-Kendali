## Penjelasan Program Sistem Orde 2

### Soal

![image](https://user-images.githubusercontent.com/99254988/186876670-3600c86f-e35f-493e-b2b0-3dc6e5ea5014.png)

Variabel "T" merupakan nilai konstanta. Nilai ny boleh diubah. variabel "num" merupakan input dari sistem sementara variabel "den" merupakan input sistem. Kita perlu mendefinisikan "s" sebagai variabel transfer function dengan fungsi tf(num,den). Fungsi tf(num,den) mengubah input dan output menjadi suatu transfer function.

Untuk mendapatkan response step gunakan fungsi step(sys). Untuk mendapatkan response impulse gunakan fungsi impulse(sys). Untuk mendapatkan response ramp gunakan fungsi step(sys/s). Ketiga response ini ditampilkan pada 3 figur yang berbeda.

stepinf(sys) merupakan fungsi untuk mendapatkan informasi mengenai sistem yang sudah dibuat dan disimpan di variabel s1. Variabel sserror digunakan sebagai variabel menyimpan hasil steadystate error. Didapatkan dari selisih nilai setpoint(dalam kasus ini 1) dengan output yang didapat.
