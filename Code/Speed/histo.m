un = unique(xx);
outhist = histc(xx,un');
area = 0;
for i = 1:length(outhist)-1;
    area = area+((un(i+1)-un(i))*outhist(i));
end    
c = 10;
k = 3.5;
hold on;
plot(un',outhist./area);
t = 0:0.1:30;
h = (k/c)*((t/c).^(k-1)).*exp(-((t/c).^k));
plot(t,h,'r');
hold off;

