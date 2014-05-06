function prfunc(no,type,fid)
    stt = 'Range=[0 17]\r\nNumMFs=17\r\nMF1=''N'':''trimf'',[0 1 2]\r\nMF2=''NNW'':''trimf'',[1 2 3]\r\nMF3=''NW'':''trimf'',[2 3 4]\r\nMF4=''WNW'':''trimf'',[3 4 5]\r\nMF5=''W'':''trimf'',[4 5 6]\r\nMF6=''WSW'':''trimf'',[5 6 7]\r\nMF7=''SW'':''trimf'',[6 7 8]\r\nMF8=''SSW'':''trimf'',[7 8 9]\r\nMF9=''S'':''trimf'',[8 9 10]\r\nMF10=''SSE'':''trimf'',[9 10 11]\r\nMF11=''SE'':''trimf'',[10 11 12]\nMF12=''ESE'':''trimf'',[11 12 13]\r\nMF13=''E'':''trimf'',[12 13 14]\r\nMF14=''ENE'':''trimf'',[13 14 15]\r\nMF15=''NE'':''trimf'',[14 15 16]\r\nMF16=''NNE'':''trimf'',[15 16 16]\r\nMF17=''C'':''trapmf'',[16 16 17 17]';
    if(type==1)
        fprintf(fid,strcat('[Input',num2str(no),']\r\nName=''input',num2str(no),'''\r\n',stt));
        fprintf(fid,'\r\n\r\n');
    else
        fprintf(fid,strcat('[Output1]\r\nName=''output1''\r\n',stt));
        fprintf(fid,'\r\n\r\n');
    end
end    