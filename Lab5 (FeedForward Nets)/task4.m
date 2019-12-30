%Task 4
%Var 2
i=4; % the Difficulty Index of the Function for Approximation
P = -2:(.4/i):2; % Training Subset: Inputs
T = 1 + sin(i*pi*P/4); % Training Subset: Targets
P1 = -2:(.04/i):2; % Testing Subset
S1=10;
min_b = 0.01;
net = newff(P,T,S1); 
net.trainParam.goal=0.001;
net.trainParam.show=NaN;
i = 1;
while 1
net.trainParam.epochs=i;
[net,tr]=train(net,P,T);   % Training 
Y1=sim(net,P1);            % Testing 
y=sim(net,P);
[m,b,r] = postreg(y,T);
if b<=min_b
    break
end
if i>=150
    break
end
plot(P,T,'b',P,T,'b',P,y,'*k','LineWidth',1) 
end
plot(P,T,'b',P,T,'b',P,y,'*k','LineWidth',1) 

