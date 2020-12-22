N=200 ;
X=zeros(N,N);

if(mod(N,2)>0)            %如果是奇數
    Y=odd(N,X);           %跑出矩陣
    oddDiagonal(N);       %對角線
else
    Y=even(N,X); 
    evenDiagonal(N);
end

disp(Y);
showImage(N,Y);

%%
function Y=odd(N,X)
%決定起始點的index
cj=fix(N/2)+1;
ci=fix(N/2)+1;

num=1;         %數字
n=1;           %迴圈的大小
X(ci,cj)=1;    %起始點賦值

while(n<N)
    n=n+2;
   
    %右邊直行少上面一個
    X(ci:ci+n-2,cj+1)=num+1:num+n-1;
    
    %中間下排少左右兩個
    num=num+2*n-3;       %num=(num+n-1)+n-2   先把num值加到最大，再用for迴圈照位置順序減
    for k=0:n-1
        X(ci+n-2,cj-n+2+k)=num-k+1;
    end
    
    %左邊直行少上面一個
    num=num+n-1;
    for k=0:n-2
        X(ci+k,cj-n+2)=num-k;
    end
    
    %中間上排
    X(ci-1,cj-n+2:cj+1)=num+1:num+n;
    num=num+n;
    
    %重新定起始點
    ci=ci-1;
    cj=cj+1;
end
Y=X;
end


%%
function Y=even(N,X)
%決定起始點的index
cj=fix(N/2)+1;   
ci=fix(N/2);


num=0;         %數字
n=0;           %迴圈的大小

while(n<N)
    n=n+2;
    num=num+1;
    %上面直行少左邊一個(含起始點)
    X(ci,cj:cj+n-2)=num:num+n-2;
    
    %右邊直排少上面一個
    num=num+n-1;      %(num=num+n-2)+1
    X(ci+1:ci+n-1,cj+n-2)=num:num+n-2;
    
    %橫排少右邊一個
    num=num+n-1;      %num=(num+n-2)+1
    num=num+n-2;   
    for k=0:n-2
        X(ci+n-1,cj-1+k)=num-k; 
    end
    
    %左邊直行少下面一個
    num=num+n-1;
    for k=0:n-2
        X(ci+k,cj-1)=num-k; 
    end
    
    %重新定起始點
    ci=ci-1;
    cj=cj-1;
end
Y=X;
end


%%
function oddDiagonal(N)
sum=1;
for n=1:(N-1)/2
    m=2*n+1;
    sum=sum+4*m^2-6*(m-1);
end

disp("對角線總和為:")
disp(sum)
end


%%
function evenDiagonal(N)         
sum=0;
for n=1:N/2                         
    m=2*n; 
    sum=sum+4*m^2-6*(m-1);
end

disp("對角線總和為:")
disp(sum)
end


function showImage(N,Y)
A=zeros(1,N^2);
k=1;
myColors=[0 0 0;1 0 0;1 1 1];
colormap(myColors);
for ii=1:N
    for jj=1:N
        if(Y(ii,jj)==1)
            Y(ii,jj)=2;
        elseif(Y(ii,jj)==2)
            Y(ii,jj)=3;
        elseif(Y(ii,jj)==3)
            Y(ii,jj)=3;
        elseif(Y(ii,jj)==5)
            Y(ii,jj)=3;
        elseif(mod(Y(ii,jj),2)==0)
            Y(ii,jj)=3;
        elseif(mod(Y(ii,jj),3)==0)
            Y(ii,jj)=3;
        elseif(mod(Y(ii,jj),5)==0)
            Y(ii,jj)=3;
        else
            for kk=1:k
                if(mod(Y(ii,jj),A(kk))==0)
                    Y(ii,jj)=3;
                    break
                end
            end
            
            if(Y(ii,jj)>1)
                k=k+1;
                A(k)=Y(ii,jj);
                Y(ii,jj)=1;
            end
        end
    end
end
image(Y)
end