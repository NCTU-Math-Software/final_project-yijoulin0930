# final_project-yijoulin0930
final_project-yijoulin0930 created by GitHub Classroom
--------------------------------------------------------------- 
##Project
以下是一個 5×5 矩陣, 數字由 1 從最中間順時鐘往外依序寫下:

      21 22 23 24 25
      20 7  8  9  10
      19 6  1  2  11
      18 5  4  3  12
      17 16 15 14 13
----------------------------------------------------------------
 ##1. 試寫一 matlab 程式產生 n×n 的此種矩陣

     1.先造一個NxN的零矩陣
     2.判斷奇偶數
       (1)奇數:
          (i)  將數字1的index找出來(fix(N/2)+1,fix(N/2)+1)，並設定那個位置為起始點c
          (ii) 將矩陣看成 1x1 3x3 5x5 ..... NxN 的矩陣 每個矩陣從右上角
          
          
                   7  8  9             21 22 23 24 25
                   6     2             20          10
                   5  4  3 (3x3)       19          11
                                       18          12
                                       17 16 15 14 13 (5x5)
                     
                   
      
      

          
      
     
