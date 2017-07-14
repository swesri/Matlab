clc;
clear all;
close all;
a = imread('C:\Users\ShaliniRK\Pictures\attachmentD000.jpg');
L= rgb2gray(a); 
imshow(L);
lev = graythresh(L);
BW = im2bw(L,lev);
figure(2);
disp(BW);
stem(BW);axis([0,400,0,1])
%w = dwt(a);
l=length(BW);l
ln=size(BW);ln
k=1;
p=1;
for i=1:467
     if(mod(i,150)==0)
      for j=1:550
          if(mod(j,150)==0)
       seq1(k) = BW(i,j);
         k=k+1;          
          else
       seq2(p) = BW(i,j);       
       p=p+1;
          end
      end
     end
end
seq1
seq2
%xx=seq1;
figure(3);
subplot(3,1,1);
stem(seq1);
subplot(3,1,2);
stem(seq2);
xx=[1 0 1 1 1 0 1];
y = qammod(xx,8);
subplot(3,1,3);
stem(y);

