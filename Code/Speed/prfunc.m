function prfunc(no,type,fid)
    stt = 'Range=[0 15]\r\nNumMFs=3\r\nMF1=''Calm'':''trapmf'',[-1000 -10 2 6.911]\r\nMF2=''Low'':''trapmf'',[0  2 8.911 12.2483]\r\nMF3=''Medium'':''trapmf'',[6.911 10 14.2483 24.48]';
    if(type==1)
        fprintf(fid,strcat('[Input',num2str(no),']\r\nName=''input',num2str(no),'''\r\n',stt));
        fprintf(fid,'\r\n\r\n');
    else
        fprintf(fid,strcat('[Output1]\r\nName=''output1''\r\n',stt));
        fprintf(fid,'\r\n\r\n');
    end
end    