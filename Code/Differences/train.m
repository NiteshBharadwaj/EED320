p = [];
q = [];
trnlen = size(trnData);
calmData = [];
mediumData = [];
lowData = [];
for j = 1:trnlen(2)
    s = e;   
    for i = 1:trnlen(1)
        if trnData(i,j)<-4.8
            q = [q 1];
            calmData = [calmData trnData(i,j)];
        elseif trnData(i,j)>4.8
            mediumData = [mediumData trnData(i,j)];
            q = [q 3];
        else
            lowData = [lowData trnData(i,j)];
            q = [q 2];
        end
    end
    p = [p q'];
    q = [];
end
u = size(p);
e = u(1);
f = u(2);
z = zeros(r,memf);
for i  = 1:f
    for j = (noinp+1):e
        o = p(j-1,i);
        for k = 2:noinp
            o = o+((noinp^(k-1))*(p(j-k,i)-1));                     
        end    
        z(o,p(j,i)) = z(o,p(j,i))+1;
    end   
end
fin = zeros(r,memf);
flag = 0;
for i = 1:r
    flag = 0;
    for j = 1:memf
        if z(i,j)~=0
            flag = 1;
        end
    end               
    if(flag==0)     
        fin(i,1) = 0;
        fin(i,2) = 0;
        fin(i,3) = 0;
    else
            fin(i,1) = z(i,1)/(z(i,1)+z(i,2)+z(i,3));
            fin(i,2) = z(i,2)/(z(i,1)+z(i,2)+z(i,3));
            fin(i,3) = z(i,3)/(z(i,1)+z(i,2)+z(i,3));
    end
end    