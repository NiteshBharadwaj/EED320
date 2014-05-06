i = 0;
j = 0;
d = size(fin);
e = d(1);
f = d(2);
numrules = 0;
for i=1:e
    for j =1:f
        if(fin(i,j)~=0)
            numrules = numrules+1;
        end
    end
end
fid = fopen('System3.fis','w');
fprintf(fid,'[System]\r\nName=''System1''\r\nType=''mamdani''\r\nVersion=2.0\r\n');
fprintf(fid,strcat('NumInputs=',num2str(noinp)));
fprintf(fid,'\r\n');
fprintf(fid,'NumOutputs=1\r\n');
fprintf(fid,strcat('NumRules=',num2str(numrules)));
fprintf(fid,'\r\n');
fprintf(fid,'AndMethod=''min''\r\nOrMethod=''max''\r\nImpMethod=''min''\r\nAggMethod=''max''\r\nDefuzzMethod=''centroid''');
fprintf(fid,'\r\n\r\n');
for i = 1:noinp
    prfunc(i,1,fid);
end
prfunc(1,2,fid);
fprintf(fid,'[Rules]');
fprintf(fid,'\r\n');
for i = 1:e
    for j = 1:f
        if(fin(i,j)~=0)
            o = num2str(j);
            st2 = '';
            for k = 1:noinp
                l = num2str(rem(floor((i-1)/(noinp^(k-1))),noinp)+1);
                if(k==1)
                    st2 = horzcat(st2,l);
                else
                    st2 = horzcat(st2,' ',l);
                end    
            end    
            %l = num2str(floor((i-1)/(noinp*noinp))+1);
            %m = num2str(rem(floor((i-1)/noinp),noinp)+1);
            %st1 = num2str(n);
            %st2 = horzcat(' ',m);
            %st3 = horzcat(' ',st1);
            st2 = horzcat(st2,', ',o);
            st = strcat(st2,' (',num2str(fin(i,j)),') : 1');
            fprintf(fid,st);
            fprintf(fid,'\r\n');
        end
    end
end

            
            
            