# Project 順時鐘矩陣

--------------------------------------------------------------- 
## 以下是一個 5×5 矩陣, 數字由 1 從最中間順時鐘往外依序寫下:

      21 22 23 24 25
      20 7  8  9  10
      19 6  1  2  11
      18 5  4  3  12
      17 16 15 14 13
----------------------------------------------------------------
## 1. 試寫一 matlab 程式產生 N×N 的此種矩陣

     input:N(矩陣大小),matrix(矩陣名稱)
     output:NxN此種矩陣

     1.先造一個NxN的零矩陣
     2.判斷N為奇偶數
       <奇數>
          (1) 將數字1的index找出來(fix(N/2)+1,fix(N/2)+1)，並設定那個位置為起始點c
          (2) 將矩陣看成 1x1 3x3 5x5 ... nxn ... NxN 的矩陣 每個矩陣最小的數字為起始點
          (3) 從起始點開始填數字，填了(n-2)個數字後轉向，再填(n-1)個數字轉向*兩次，填n個數字
          (4) 最後一個數字位置訂為新的起始點，重複(3)直到矩陣大小直到NxN
          
                                         21 22 23 24 25
                     7  8  9             20          10 <c>
                     6     2 <c>         19          11
                     5  4  3 (3x3)       18          12
                                         17 16 15 14 13 (5x5)                                   
       <偶數>
          (1) 將數字1的index找出來(N/2,N/2)，並設定那個位置為起始點c
          (2) 將矩陣看成 2x2 4x4 6x6 ... nxn ... NxN 的矩陣 每個矩陣最小的數字為起始點
          (3) 從起始點開始填數字，填了(n-2)個數字後轉向，再填(n-1)個數字轉向*兩次，填n個數字
          (4) 最後一個數字位置訂為新的起始點，重複(3)直到矩陣大小直到NxN
          
     3.輸出矩陣             

----------------------------------------------------------------
## 2. 給定 N×N 的此種矩陣, 求其對角線 (aii) 及反對角線 (an−i,i) 之總和. 例如以上 5×5 矩陣其值為 101

     input:N(矩陣大小)
     output:對角線們的值
     
     1.判斷N為奇偶數
       <奇數> n=1,3,5,...,N
       <偶數> n=2,4,6,...,N
     2.sum=sum+4*n^2+(-6*(n-4))
     
         <n^2-(n-4)>    <n^2>
             21 22 23 24 25
             20          10 
             19          11
             18          12
             17 16 15 14 13    
        <n^2-2*(n-4)>  <n^2-3*(n-4)>
        
     3.輸出sum
     
------------------------------------------------------------------
## 3.給定 200×200 的此矩陣, 將所有質數點位置設為黑色, 非質數點位置設為白色, 以 image 顯示出此矩陣樣子.

     input:N
     output:image(X)

     1.給定一個 1xN 空矩陣A(放質數)
     2.先將可以整除2,3,5的數變成黑色點
     3.沒辦法整除2,3,5的數，若沒辦法整除矩陣A內已有的數，則加入A矩陣
     4.將A矩陣的數都變成黑色點，1變成紅色(非質非合)
     5.輸出矩陣圖片
      
     *檢驗方法* 找一個質數或合數，看他的顏色是黑色還是白色
          
      
     
