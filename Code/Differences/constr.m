if(noinp==1)
    r = memf;    
elseif(noinp<memf)
    r = noinp^memf;
else    
    r = noinp^noinp;
end    
x = [];
xx = [];
for i = 1:dat
    w = num2str(i);
    h = strcat(filename,w,'.csv');
    g = csvread(h);
    x = [x diff(g(1:lim))];
    xx = [xx;diff(g(1:lim))];
end
d = size(x);
e = d(1);
f = d(2);
for i = 1:f
    for j = 1:e
        if(x(j,i)==-9999)
            if(j==1)
                x(j,i)= 0;
            else
                x(j,i) = x(j-1,i);
            end
        end
    end
end
trnData = x(:,1:dat-13);
testData = x(:,dat-12:dat);
len = size(testData);
%here test Data sorted in columns is defined as data
data = [];
for i = 1: len(2)
    b = testData(:,i);
    c = b';
    a = length(c);
    want = noinp+1;
    s = a-want;
    xy = [];
    for j = 1:want
        d = c(j:j+s-1);
        xy = [xy d'];
    end
    data = [xy ; data];
end
len = size(trnData);
trnDataInColumns = [];
for i = 1: len(2)
    b = trnData(:,i);
    c = b';
    a = length(c);
    want = noinp+1;
    s = a-want;
    xy = [];
    for j = 1:want
        d = c(j:j+s-1);
        xy = [xy d'];
    end
    trnDataInColumns = [xy ; trnDataInColumns];
end