clear %�������
clc%����
filename=dir('E:\PROGRAMS\MATLAB����\*.csv');%��ȡȫ����.xlsx�ļ�
n=length(filename);%�ļ���Ŀ
 
for i=4510:4510+n-1%Ҳ����4520:4529
   %˼·��������ά���鴢������
   %['����',int2str(i),'.csv']ƴ��excel���Ƶ��ַ�����Ϊ�˱���excel�ļ�
   [Num(:,:,i-4510+1),TxT(:,:,i-4510+1),Raw(:,:,i-4510+1)]=xlsread(['WaveData',int2str(i),'.csv']);
   figure(i)
   plot(Num(:,:,i-4510+1))
   title('SP912 Wave (32KHz)')
end