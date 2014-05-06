filename_speed = 'D:\EED320\Code and Data\Data\Speed\Chennai\output';
noinp =3;  % Number of autoregressions of wind 
dat = 182;   % To be changed
trnPercent = 0.8;
lim = 46;     % To be changed
r = 0;
constr_speed;
filename_direction = 'D:\EED320\Code and Data\Data\Direction\Chennai\output';
memf = 17;   % Number of classes of wind 
constr_direction;
constr_sin;
anfis_test;
out1 = fisOutTest_anfis;
regout1 = regOut;
constr_cos;
anfis_test;
regout2 = regOut;
out2 = fisOutTest_anfis;
fisOutTest_anfis = sqrt(out1.*out1+out2.*out2);
regOut = sqrt(regout1.*regout1+regout2.*regout2);
mse_anfis = sqrt(sum((testDataOutput_speed-fisOutTest_anfis).^2)/f_anfis)
mse_reg = sqrt(sum((testDataOutput_speed-regOut).^2)/f_anfis)

    

        


            


    

        
