testDataInput_speed = data_speed(:,1:want-1);
testDataOutput_speed = data_speed(:,want);
testDataInput_direction = data_direction(:,1:want-1);
testDataOutput_direction = data_direction(:,want);
trnDataInput_speed = trnDataInColumns_speed(:,1:want-1);
trnDataOutput_speed = trnDataInColumns_speed(:,want);
trnDataInput_direction = trnDataInColumns_direction(:,1:want-1);
trnDataOutput_direction = trnDataInColumns_direction(:,want);

testData= [testDataInput_speed testDataInput_direction testDataOutput_speed];
trnDataInColumns = [trnDataInput_speed trnDataInput_direction trnDataOutput_speed];
trnDataInput = [trnDataInput_speed trnDataInput_direction];
testDataInput = [testDataInput_speed testDataInput_direction];
testDataOutput = testDataOutput_speed;