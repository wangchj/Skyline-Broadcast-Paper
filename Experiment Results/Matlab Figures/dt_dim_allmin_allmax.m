x=[2 4 6 8 10]

%P-B all min
y1=[
    2605 
    72143
    95039 
    98630 
    99618 
]

%I-B all min
y2=[
    487
    1780
    3551
    5547
    7675
]

%P-B all max
y3=[
    48491
    80043
    94924
    98835
    99640
]

%I-B all max
y4=[
    48491
    80043
    94924
    98835
    99640
]
figure1 = figure;
axes1 = axes('Parent',figure1,'FontSize',18,'FontName','Arial');
plot1 = plot(x,[y1, y2, y3, y4],'Parent',axes1);
%plot(x, y1, 'b-^', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
set(plot1(1),'Marker','^','Color',[0 0 1],'DisplayName','RPS all min');
set(plot1(2),'Marker','o','Color',[1 0 0],'DisplayName','IPS all min');
set(plot1(3),'Marker','*','Color',[0 1 0],'DisplayName','RPS all max');
set(plot1(4),'Marker','x','Color',[0 0 0],'DisplayName','IPS all max');

ylabel('Dominance Tests','FontSize',18,'FontName','Arial');
xlabel('Dimensions','FontSize',18,'FontName','Arial');

legend1 = legend(axes1,'show');
set(legend1, 'FontName','Arial', 'FontSize', 16);