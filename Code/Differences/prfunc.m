function prfunc(no,type,fid)
    stt = 'Range=[-20 20]\r\nNumMFs=3\r\nMF1=''Calm'':''gaussmf'',[6.0903 -8.85]\r\nMF2=''Low'':''gaussmf'',[4.2692 0.0051]\r\nMF3=''Medium'':''gaussmf'',[6.0905 8.9053]';
    if(type==1)
        fprintf(fid,strcat('[Input',num2str(no),']\r\nName=''input',num2str(no),'''\r\n',stt));
        fprintf(fid,'\r\n\r\n');
    else
        fprintf(fid,strcat('[Output1]\r\nName=''output1''\r\n',stt));
        fprintf(fid,'\r\n\r\n');
    end
end    