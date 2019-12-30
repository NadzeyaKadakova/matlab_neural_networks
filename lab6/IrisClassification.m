IrisData = readtable('Iris.csv');
sl = IrisData.SepalLengthCm';
sw = IrisData.SepalWidthCm';
pl = IrisData.PetalLengthCm';

P(1,:) = sl;
P(2,:) = sw;
P(3,:) = pl;

somForIris= selforgmap([1 3]);
somForIris.trainParam.epochs=200;
[somForIris tr] = train(somForIris,P);
figure
hold  on
plot3(sl(1,1:50),sw(1,1:50),pl(1,1:50),'*b')
plot3(sl(1,51:100),sw(1,51:100),pl(1,51:100),'*r')
plot3(sl(1,100:150),sw(1,100:150),pl(1,100:150),'*g')

y = somForIris(P);
cluster_index = vec2ind(y)