x = [];
xx = [];
for i = 1:dat
    w = num2str(i);
    h = strcat(filename_direction,w,'.csv');
    g = csvread(h);
    x = [x g(1:lim)];
    xx = [xx;g(1:lim)];
end
d = size(x);
e = d(1);
f = d(2);
for i = 1:f
    for j = 1:e
        if(x(j,i)==-1) 
            if(j==1)
                x(j,i)= 17;
            else
                x(j,i) = x(j-1,i);
            end
        end
    end
end
trnData_direction = x(:,1:dat-13);
testData_direction = x(:,dat-12:dat);
len = size(testData_direction);
%here test Data sorted in columns is defined as data
data_direction = [];
for i = 1: len(2)
    b = testData_direction(:,i);
    c = b';
    a = length(c);
    want = noinp+1;
    s = a-want;
    xy = [];
    for j = 1:want
        d = c(j:j+s-1);
        xy = [xy d'];
    end
    data_direction = [xy ; data_direction];
end
len = size(trnData_direction);
trnDataInColumns_direction = [];
for i = 1: len(2)
    b = trnData_direction(:,i);
    c = b';
    a = length(c);
    want = noinp+1;
    s = a-want;
    xy = [];
    for j = 1:want
        d = c(j:j+s-1);
        xy = [xy d'];
    end
    trnDataInColumns_direction = [xy ; trnDataInColumns_direction];
end