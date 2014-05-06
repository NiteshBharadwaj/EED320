x = [];
xx = [];
for i = 1:dat
    w = num2str(i);
    h = strcat(filename_speed,w,'.csv');
    g = csvread(h);
    x = [x g(1:lim)];
    xx = [xx;g(1:lim)];
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
trnData_speed = x(:,1:dat-13);
testData_speed = x(:,dat-12:dat);
len = size(testData_speed);
%here test Data sorted in columns is defined as data
data_speed = [];
for i = 1: len(2)
    b = testData_speed(:,i);
    c = b';
    a = length(c);
    want = noinp+1;
    s = a-want;
    xy = [];
    for j = 1:want
        d = c(j:j+s-1);
        xy = [xy d'];
    end
    data_speed = [xy ; data_speed];
end
len = size(trnData_speed);
trnDataInColumns_speed = [];
for i = 1: len(2)
    b = trnData_speed(:,i);
    c = b';
    a = length(c);
    want = noinp+1;
    s = a-want;
    xy = [];
    for j = 1:want
        d = c(j:j+s-1);
        xy = [xy d'];
    end
    trnDataInColumns_speed = [xy ; trnDataInColumns_speed];
end