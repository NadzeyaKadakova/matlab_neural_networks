axis([0 10 0 10]);
hold on;
A = ginput(1);
B = ginput(1);
N = (B-A).*[-1 1];
N = N(end:-1:1);
center = (B+A)./2;

plot(A(1),A(2),'b*',B(1),B(2),'b*', center(1,1), center(1,2), 'r*')
line([A(1),B(1)], [A(2),B(2)], 'Color','blue')

delta=3;
Aminus = A + N.*delta; 
Aplus = A - N.*delta;
Bminus = B - N.*delta;
Bplus = B + N.*delta;
Nminus = center - N.*delta;
Nplus = center + N.*delta;

line([Aminus(1,1), Aplus(1,1)], [Aminus(1,2), Aplus(1,2)], 'Color','red')
line([Bminus(1,1), Bplus(1,1)], [Bminus(1,2), Bplus(1,2)], 'Color','red')
line([Nminus(1,1), Nplus(1,1)], [Nminus(1,2), Nplus(1,2)], 'Color','green')
axis equal


