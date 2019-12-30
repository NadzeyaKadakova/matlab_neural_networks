function z = Task1b(t, a, b, c)
figure
y = a./t + b*sqrt(t) + c*exp(t);
plot(t,y)
axis([-1 2.5 -0.5 1.5]); 
grid on; 
str = ['The graphic of function ',num2str(a),'/t+',num2str(b),'*sqrt(t)+',num2str(c),'e^t'];
title(str); 
xlabel('The coordinate of Ox'); 
ylabel('The coordinate of Oy');
hold on
plot(t,y,'or')
end




