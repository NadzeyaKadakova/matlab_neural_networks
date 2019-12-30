myNet9=network(2,1,[1],[1 1],[0],[1]);

myNet9.layers{1}.transferFcn = 'hardlim';
myNet9.inputs{1}.size = 1;
myNet9.inputs{2}.size = 1;
myNet9.layers{1}.size=1;
view(myNet9)

myNet9.IW{1,1}=1;
myNet9.IW{1,2}=1;
myNet9.b{1}=[-1];

p=[0 0 1 1; 0 1 0 1];
sim(myNet9,p)

myNet9.b{1}=[-2];
p=[0 0 1 1; 0 1 0 1];
sim(myNet9,p)