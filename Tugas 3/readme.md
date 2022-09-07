## **Assignment 3**

Create a program code to determine stability using the Routh stability criteria. The program must be able to :
1. Returns the value of a polynomial
2. Displays the Routh table
3. Accepts a K value that can be changed via user input

### Note

code ini saya dapatkan dari [sini](https://viewer.mathworks.com/?viewer=plain_code&url=https%3A%2F%2Fwww.mathworks.com%2Fmatlabcentral%2Fmlc-downloads%2Fdownloads%2Fsubmissions%2F17483%2Fversions%2F5%2Fcontents%2FrhStabilityCriterion.m&embed=web)

## ========= Penjelasan Program ========

1. Initialization
  Bagian ini akan meminta user menginput nilai polinomial dan nilai K. Setelah itu ditentukan apakah jumlah element polinomial ganjil atau genap. 
  Selanjutnya inisialisasi routh table berisi nilai 0 sebanyak nilai polinomial yang ada. Jika element polinomial ganjil jalankan fungsi 
  rhTable(2,1:rhTableColumn - 1) = coeffVector(1,2:2:ceoffLength);
  Jika element nya genap jalankan fungsi 
  rhTable(2,:) = coeffVector(1,2:2:ceoffLength);

2. Menghitung nilai kolom tabel Routh-Hurwitz
  <ol type="a">
    <li>Jika semua baris pertama bernilai 0 maka lakukan lakukan fungsi if rhTable(i-1,:) == 0 dan seterusnya.</li>
    <li>Setelah itu lakukan perhitungan untuk baris pertama. Program merepresentasikan metode perhitungan yang digunakan.</li>
    <li>Menghitung setiap elemen di dalam tabel.</li>
  </ol>

3. Menghitung nilai poles yang tidak stabil
    a. Kita anggap Pole yang tidak stabil bernilai 0.
    b. lakukan pengecekan unutk poles yang tidak stabil.
    c. Jika tidak ditemukan poles yang tidak stabil maka cetak "it is a stable system" 
       jika ditemukan poles yang tidak stabil maka cetak "it is an unstable system!"
