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

    
    