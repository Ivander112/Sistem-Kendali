## **Assignment 5**

![image](https://user-images.githubusercontent.com/99254988/190119544-f57175c0-315f-4475-b612-c654b44d06e6.png)

Simulate above transfer function using PI (Proportional and Integral) control system. Please use this feedback gain :  
P : 1  
D : (1, 3, 5, 7, 9)  

Simulate by using mentioned input :
1. Step
2. Ramp
3. Impulse

And analyze the response based on :
1. Rise time
2. Settling time
3. Overshoot
4. Steady state Error

## ========= Penjelasan Program ========

0. Bersih bersih
  Menghapus semua output dari program ini 

1. Menentukan transfer function plant
  <ol type="a">
    <li>Deklarasi nilai T unutk sistem. di sitem ini (bebas), saya memakai nilai 16</li>
    <li>Deklarasikan transfer function sesuasi dengan soal. Transfer function plant disimpan di variabel "plant".</li>
    <li>Deklarasi nilai Kp (P) dan Kd (D) dimana nilai Ki berbeda beda</li>
  </ol>
  
2. Menentukan transfer function sistem (Loop pertama)
  <ol type="a">
    <li>Nyatakan variabel kosong untuk transfer function control, complete dan hasil feeback dalam array</li>
    <li>Masuk ke loop. Tentukan transfer function untuk control</li>
    <li>Tentukan transfer function sistem dengan mengalikan variabel "plant" dan </li>
    <li>Beri feedback transefer fucntion sistem. Simapn di variable complete</li>
  </ol>
  
3. Mencetak Step, impulse dan Ramp response
  <ol type="a">
    <li>Cetak respense step, impulse dan ramp. Tiap response dicetak dalam figure 3×2. Tiap figure mencakup response yang berbeda. Dilakukan looping untuk setiap KI</li>
    <li>Stepinfo() digunakan unutk mengetahui karakterisitik sistem. Disimpan dalam array of struct</li>
    <li>Hitung nilai steady state error dengan. Simpan dalam array sserror</li>
  </ol>
