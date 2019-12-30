myNet=network(2,1,1,[1 1],0,1);

myNet.layers{1}.size=3;

myNet.inputs{1}.range=[-4 4;-4 4];

myNet.inputs{1}.size = 1;
myNet.inputs{2}.size = 1;

myNet.IW{1,1}=[1;2;3];
myNet.IW{1,2}=[1;2;-3];
myNet.b{1}=[2;1;2];
view(myNet)
p1=[0.5]; 
p2=[0.4];  
y=sim(myNet,[p1;p2])
p1=[3];
p2=[1.5];
z=sim(myNet,[p1;p2])
