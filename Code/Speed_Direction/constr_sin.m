data = data_speed.*sin(transformToRadians(data_direction));
trnDataInColumns = trnDataInColumns_speed.*sin(transformToRadians(trnDataInColumns_direction));
testDataInput_speed = data_speed(:,1:want-1);
testDataOutput_speed = data_speed(:,want);
testDataInput_direction = data_direction(:,1:want-1);
testDataOutput_direction = data_direction(:,want);
trnDataInput_speed = trnDataInColumns_speed(:,1:want-1);
trnDataOutput_speed = trnDataInColumns_speed(:,want);
trnDataInput_direction = trnDataInColumns_direction(:,1:want-1);
trnDataOutput_direction = trnDataInColumns_direction(:,want);

testData = data;
trnDataInput = trnDataInColumns(:,1:want-1);
trnDataOutput = trnDataInColumns(:,want);
testDataInput = testData(:,1:want-1);
testDataOutput = testData(:,want);
