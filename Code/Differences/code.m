p = [];
q = [];
trnlen = size(trnData);
calmData = [];
mediumData = [];
lowData = [];
for j = 1:trnlen(2)
    s = e;   
    for i = 1:trnlen(1)
        if trnData(i,j)<-4
            q = [q 1];
            calmData = [calmData trnData(i,j)];
        elseif trnData(i,j)> 4
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
            o = o+((noinp^(k-1))*(p(j-k,i)-1));                     %(9*(p(j-3,i)-1))+(3*(p(j-2,i)-1))+p(j-1,i);
        end    
        z(o,p(j,i)) = z(o,p(j,i))+1;
    end   
end
fin = zeros(r,memf);
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
gensys;
fis1 = readfis('System3.fis');
testDataInput = data(:,1:want-1);
testDataOutput = data(:,want);
fisOutTest = evalfis(testDataInput,fis1);
f = length(testDataOutput);
mse = sqrt(sum((testDataOutput-fisOutTest).^2)/f);
trnDataInput = trnDataInColumns(:,1:want-1);
trnDataOutput = trnDataInColumns(:,want);
g = length(trnDataInput);
onesa = ones(g);
regCoef = regress(trnDataOutput,[onesa(:,1) trnDataInput]);
onesb = ones(f);
regOut = [onesb(:,1) testDataInput]*regCoef;
mseReg = sqrt(sum((testDataOutput-regOut).^2)/f);
disp(strcat('mse = ',num2str(mse)));
disp(strcat('mseReg = ',num2str(mseReg)));
error = testDataOutput - fisOutTest;
comp = [testDataOutput fisOutTest error];