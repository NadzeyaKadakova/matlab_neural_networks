MyNet7=network(2,1,[1],[1 1],[0],[1]);
MyNet7.layers{1}.size=1;
MyNet7.inputs{1}.size = 1;
MyNet7.inputs{2}.size = 2;
MyNet7.IW{1,1}=2;
MyNet7.IW{1,2}=[-3 1];
MyNet7.b{1}=10;
MyNet7.layers{1}.transferFcn='purelin';
view(MyNet7)
x1=[2];
x23=[10 -10];
y=sim(MyNet7,[x1;[10; -10]]);
y1=purelin(2*x1+dot([-3 1],x23)+10);