function z = Task4b(t, a, b)
y = a.*t.^b;
subplot(1,2,1);
plot(t,y)
axis auto; 
grid on; 
str = ['The graphic of function ',num2str(a),'m^',num2str(b)];
title(str); 
xlabel('The coordinate of Ox'); 
ylabel('The coordinate of Oy');
hold on
plot(t,y,'or')

subplot(1,2,2);
loglog(t,y)
axis auto; 
grid on;  
xlabel('The coordinate of ln(x)'); 
ylabel('The coordinate of ln(y)');
hold on
plot(t,y,'or')
end


