## Penjelasan Program Sistem Orde 2

### Soal

![image.png](attachment:image.png)


Variabel "T" merupakan nilai konstanta. Nilai ny boleh diubah. variabel "num" merupakan input dari sistem sementara variabel "den" merupakan input sistem. Kita perlu mendefinisikan "s" sebagai variabel transfer function dengan fungsi tf(num,den). Fungsi tf(num,denum) mengubah input dan output menjadi suatu transfer function.

Untuk mendapatkan response step gunakan fungsi step(sys). Untuk mendapatkan response impulse gunakan fungsi impulse(sys). Untuk mendapatkan response ramp gunakan fungsi step(sys/s). Ketiga response ini ditampilkan pada 3 figur yang berbeda.

stepinf(sys) merupakan fungsi untuk mendapatkan informasi mengenai sistem yang sudah dibuat dan disimpan di variabel s1. Variabel sserror digunakan sebagai variabel menyimpan hasil steadystate error. Didapatkan dari selisih nilai setpoint(dalam kasus ini 1) dengan output yang didapat.
