littest = [];
litfis = [];
litfis2 = [];
p1 = 0;
p2 = 0;
si = size(comp);
ro = si(1);
for i = 1:ro
    if(testDataOutput(i)==1)
        littest{end+1} = 'N';
    elseif(testDataOutput(i)==2)
        littest{end+1} = 'NNW';
    elseif(testDataOutput(i)==3)
        littest{end+1} = 'NW';
    elseif(testDataOutput(i)==4)
        littest{end+1} = 'WNW';
    elseif(testDataOutput(i)==5)
        littest{end+1} = 'W';
    elseif(testDataOutput(i)==6)
        littest{end+1} = 'WSW';
    elseif(testDataOutput(i)==7)
        littest{end+1} = 'SW';
    elseif(testDataOutput(i)==8)
        littest{end+1} = 'SSW';
    elseif(testDataOutput(i)==9)
        littest{end+1} = 'S';
    elseif(testDataOutput(i)==10)
        littest{end+1} = 'SSW';
    elseif(testDataOutput(i)==11)
        littest{end+1} = 'SE';
    elseif(testDataOutput(i)==12)
        littest{end+1} = 'ESE';
    elseif(testDataOutput(i)==13)
        littest{end+1} = 'E';
    elseif(testDataOutput(i)==14)
        littest{end+1} = 'ENE';
    elseif(testDataOutput(i)==15)
        littest{end+1} = 'NE';
    elseif(testDataOutput(i)==16)
        littest{end+1} = 'NNE';
    else
        littest{end+1} = 'C';
    end
    if(fisOutTest(i)>=0 && fisOutTest(i)<=1)
        litfis2{end+1} = 'NNE or N';
    elseif(fisOutTest(i)>1 && fisOutTest(i)<=2)
        litfis2{end+1} = 'N or NNW';   
    elseif(fisOutTest(i)>2 && fisOutTest(i)<=3)
        litfis2{end+1} = 'NNW or NW'; 
    elseif(fisOutTest(i)>3 && fisOutTest(i)<=4)
        litfis2{end+1} = 'NW or WNW'; 
    elseif(fisOutTest(i)>4 && fisOutTest(i)<=5)
        litfis2{end+1} = 'WNW or W'; 
    elseif(fisOutTest(i)>5 && fisOutTest(i)<=6)
        litfis2{end+1} = 'W or WSW'; 
    elseif(fisOutTest(i)>6 && fisOutTest(i)<=7)
        litfis2{end+1} = 'WSW or SW'; 
    elseif(fisOutTest(i)>7 && fisOutTest(i)<=8)
        litfis2{end+1} = 'SW or SSW'; 
    elseif(fisOutTest(i)>8 && fisOutTest(i)<=9)
        litfis2{end+1} = 'SSW or S'; 
    elseif(fisOutTest(i)>9 && fisOutTest(i)<=10)
        litfis2{end+1} = 'S or SSE'; 
    elseif(fisOutTest(i)>10 && fisOutTest(i)<=11)
        litfis2{end+1} = 'SSE or SE'; 
    elseif(fisOutTest(i)>11 && fisOutTest(i)<=12)
        litfis2{end+1} = 'SE or ESE'; 
    elseif(fisOutTest(i)>12 && fisOutTest(i)<=13)
        litfis2{end+1} = 'ESE or E'; 
    elseif(fisOutTest(i)>13 && fisOutTest(i)<=14)
        litfis2{end+1} = 'E or ENE'; 
    elseif(fisOutTest(i)>14 && fisOutTest(i)<=15)
        litfis2{end+1} = 'ENE or NE'; 
    elseif(fisOutTest(i)>15 && fisOutTest(i)<=16)
        litfis2{end+1} = 'NE or NNE'; 
    else
        litfis2{end+1} = 'C or C';
    end
    if(fisOutTest(i)>=0 && fisOutTest(i)<=1.5)
        litfis{end+1} = 'N';
    elseif(fisOutTest(i)>1.5 && fisOutTest(i)<=2.5)
        litfis{end+1} = 'NNW';   
    elseif(fisOutTest(i)>2.5 && fisOutTest(i)<=3.5)
        litfis{end+1} = 'NW'; 
    elseif(fisOutTest(i)>3.5 && fisOutTest(i)<=4.5)
        litfis{end+1} = 'WNW'; 
    elseif(fisOutTest(i)>4.5 && fisOutTest(i)<=5.5)
        litfis{end+1} = 'W'; 
    elseif(fisOutTest(i)>5.5 && fisOutTest(i)<=6.5)
        litfis{end+1} = 'WSW'; 
    elseif(fisOutTest(i)>6.5 && fisOutTest(i)<=7.5)
        litfis{end+1} = 'SW'; 
    elseif(fisOutTest(i)>7.5 && fisOutTest(i)<=8.5)
        litfis{end+1} = 'SSW'; 
    elseif(fisOutTest(i)>8.5 && fisOutTest(i)<=9.5)
        litfis{end+1} = 'S'; 
    elseif(fisOutTest(i)>9.5 && fisOutTest(i)<=10.5)
        litfis{end+1} = 'SSE'; 
    elseif(fisOutTest(i)>10.5 && fisOutTest(i)<=11.5)
        litfis{end+1} = 'SE'; 
    elseif(fisOutTest(i)>11.5 && fisOutTest(i)<=12.5)
        litfis{end+1} = 'ESE'; 
    elseif(fisOutTest(i)>12.5 && fisOutTest(i)<=13.5)
        litfis{end+1} = 'E'; 
    elseif(fisOutTest(i)>13.5 && fisOutTest(i)<=14.5)
        litfis{end+1} = 'ENE'; 
    elseif(fisOutTest(i)>14.5 && fisOutTest(i)<=15.5)
        litfis{end+1} = 'NE'; 
    elseif(fisOutTest(i)>15.5 && fisOutTest(i)<=16)
        litfis{end+1} = 'NNE'; 
    else
        litfis{end+1} = 'C';
    end
    if(strcmp(littest{end},litfis{end}))
        p1 = p1+1;
    end
    str2 = strsplit(litfis2{end},' or ');
    if(strcmp(littest{end},str2(1)) || strcmp(littest{end},str2(2)))
        p2 = p2+1;
    end  
end
disp(p1*100/ro);
disp(p2*100/ro);
litr = [littest' litfis' litfis2'];
        
    
        
        