%ex 1
%net=network
%ex2
%net=network(2,3,[1;0;0],[1 1;0 0;0 0],[0 0 0;1 0 0;0 1 0],[0 0 1])
%view(net)
%ex3
%gensim(net)
%ex4
net1=network(3,2,[0;1],[1 1 1;0 0 0],[0 0;1 0],[0 1]);
net1.layers{1}.transferFcn='purelin';
net1.layers{2}.transferFcn='hardlim';
view(net1)
