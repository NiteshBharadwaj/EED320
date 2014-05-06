trnlen = size(trnData);
op = [];
for i = 1:trnlen(2)
    for j = (noinp+1):trnlen(1)
        str = '';
        for k = noinp:-1:1
            str = horzcat(str,num2str(trnData(j-k,i)),',');
           
        end
        op{end+1} = str;
    end
end
op1 = unique(op);
oplen = length(op1);
z = zeros(oplen,memf);
for i = 1:trnlen(2)
    for j = (noinp+1):trnlen(1)
        str = '';
        for k = noinp:-1:1
            str = horzcat(str,num2str(trnData(j-k,i)),',');
        end
        ind=find(strcmp(str,op1));
        z(ind,trnData(j,i)) = z(ind,trnData(j,i))+1;
    end
end    
fin = zeros(oplen,memf);
flag = 0;
for i = 1:oplen
    flag = 0;
    for j = 1:memf
        if z(i,j)~=0
            flag = 1;
        end
    end               
    if(flag==0)     
        for k = 1:memf
            fin(i,k) = 0;
        end
        
    else
            sumrow = 0;
            for k =1:memf
                sumrow = sumrow + z(i,k);
            end
            for k = 1:memf
                fin(i,k) = z(i,k)/sumrow;
            end
    end        
end              
            


    
   