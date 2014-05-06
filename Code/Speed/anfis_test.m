fis_mod = anfis(trnDataInColumns);
fisOutTrn_anfis = evalfis(trnDataInput,fis_mod);
fisOutTest_anfis = evalfis(testDataInput,fis_mod);
f_anfis = length(testDataOutput);
mse_anfis = sqrt(sum((testDataOutput-fisOutTest_anfis).^2)/f_anfis);