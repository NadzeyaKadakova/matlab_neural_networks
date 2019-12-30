axis([0 10 0 10])
R=3;
o = ginput(1);
t = 0:0.0001:2*pi;
x = o(1)+R*cos(t);
y = o(2)+R*sin(t);
plot(o(1),o(2),'b*', x,y,'b')
axis([0-R 10+R 0-R 10+R])

while true
   temp=ginput(1);   
    if ((temp(1)-o(1)).^2+(temp(2)-o(2)).^2) > R.^2
        color = 'green';
    else color = 'red';
    end
        line(temp(1), temp(2), 'Color', color, 'Marker', 'p')
        line('X',x,'Y',y,'color','blue');
        axis([0-R 10+R 0-R 10+R])    
end


