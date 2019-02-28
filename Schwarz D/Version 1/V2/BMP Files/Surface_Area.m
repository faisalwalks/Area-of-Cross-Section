clc
srcFile=dir('H:\Google Drive\College Stuff\Studies\Thesis (Project)\Models\Schwarz D\V2\BMP Files\*.bmp');
percentageBlack=zeros(1,length(srcFile));
sum=0;
for i=1:length(srcFile)
    filename=strcat('H:\Google Drive\College Stuff\Studies\Thesis (Project)\Models\Schwarz D\V2\BMP Files\',srcFile(i).name);
    I=imread(filename);
%     path=strcat('H:\Google Drive\College Stuff\Studies\Thesis (Project)\Models\Schwarz D\V1\BMP Files\save\',srcFile(i).name);
%     imwrite(I,path);
    percentageBlack(1,i)=((1-nnz(I)/numel(I))*100);
    sum=sum+percentageBlack(1,i);
end

sum_avg=sum/length(srcFile)
area=sum_avg*70*70
    