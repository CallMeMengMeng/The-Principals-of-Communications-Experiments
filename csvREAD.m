clear %清除变量
clc%清屏
filename=dir('E:\PROGRAMS\MATLAB程序\*.csv');%获取全部的.xlsx文件
n=length(filename);%文件数目
 
for i=4510:4510+n-1%也就是4520:4529
   %思路：声明三维数组储存数据
   %['我是',int2str(i),'.csv']拼凑excel名称的字符串是为了遍历excel文件
   [Num(:,:,i-4510+1),TxT(:,:,i-4510+1),Raw(:,:,i-4510+1)]=xlsread(['WaveData',int2str(i),'.csv']);
   figure(i)
   plot(Num(:,:,i-4510+1))
   title('SP912 Wave (32KHz)')
end