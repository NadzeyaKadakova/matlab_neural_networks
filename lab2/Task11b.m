axis([0 10 0 10])
hold on
a= ginput(1); 
b= ginput(1);
line(a,b,'Color','blue','Marker','.')
while true
    temp=ginput(1);
    sub=[a(2)-a(1) b(2)-b(1); temp(1)-a(1) temp(2)-b(1)]; 
    if det(sub) > 0
        line(temp(1), temp(2), 'Color', 'green', 'Marker', 'p')
    end
    if det(sub) < 0
        line(temp(1), temp(2),'Color', 'red', 'Marker', 'h')
    end 
end




