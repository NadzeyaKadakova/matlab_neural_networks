PreliminaryExaminationNumber = 2;   
N = 10;  
LowerLimit = 3;   
TotalThreshold = 11;

net=newp([LowerLimit N;LowerLimit N], 1);
net.IW{1,1} = [1 1];
net.b{1} = -TotalThreshold;

p=[[6;7] [9;5] [6;4] [2;6] [4;10] [2;2] [5;6]];
t = [1 1 0 0 1 0 1]
a = sim(net,p) %[0] - 0 class, [1] - 1 class
plotpv(p, a)
plotpc(net.IW{1,1}, net.b{1})
a == t
