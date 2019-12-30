myNet10=network(3,3,[1;1;1],[1 0 0;0 1 0;0 0 1],[0 0 0;1 0 0;0 1 0],[1 1 1]);
myNet10.inputs{1}.size=2;
myNet10.inputs{2}.size=1;
myNet10.inputs{3}.size=3;
myNet10.layers{1}.size=3;
myNet10.layers{2}.size=3;
myNet10.layers{3}.size=3;
view(myNet10)