clc
srcFile=dir('H:\Google Drive\College Stuff\Studies\Thesis (Project)\Models\Spherical Gyroid\V3 V1\BMP Files\*.bmp');
percentageBlack=zeros(1,length(srcFile));
sum=0;
for i=1:length(srcFile)
    filename=strcat('H:\Google Drive\College Stuff\Studies\Thesis (Project)\Models\Spherical Gyroid\V3 V1\BMP Files\',srcFile(i).name);
    I=imread(filename);
%     path=strcat('H:\Google Drive\College Stuff\Studies\Thesis (Project)\Models\Schwarz D\V1\BMP Files\save\',srcFile(i).name);
%     imwrite(I,path);
    percentageBlack(1,i)=((1-nnz(I)/numel(I)));
    sum=sum+percentageBlack(1,i);
end

% I=imread('Merge of 2 parts_485.bmp')
%  percentageBlack=((1-nnz(I)/numel(I)))
%  area=percentageBlack*70*70
sum_avg=sum/length(srcFile)
area=sum_avg*70*70
    