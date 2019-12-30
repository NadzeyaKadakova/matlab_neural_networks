function h= Task2b(t,a,b,c,d)
figure
y = a*sin(t)+b*cos(t)+c*sin(2*t)+d*cos(2*t);
plot(t,y)
axis([-4 4 -8 12]); 
grid on; 
str = ['The graphic of function ',num2str(a),'sin(t)+',num2str(b),'cos(t)+',num2str(c),'sin(2t)+',num2str(d),'cos(2t)'];
title(str); 
xlabel('The coordinate of Ox'); 
ylabel('The coordinate of Oy');
hold on
plot(t,y,'or')
end

