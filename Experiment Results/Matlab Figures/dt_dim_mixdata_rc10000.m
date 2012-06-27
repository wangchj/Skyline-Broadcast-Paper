x=[2 4 6 8 10]

%P-B uniform
y1=[
    2605
    72143
    95039
    98630
    99618
]

%I-B uniform
y2=[
    487
    1780
    3551
    5547
    7675
]

%P-B rising
y3=[
    3528
    76669
    699291
    937684
    1089899
]

%I-B rising
y4=[
    3528
    57737
    104574
    149496
    177015
]

%P-B falling
y5=[
    37760
    847084
    1395625
    1690721
    1785654
]

%I-B falling
y6=[
    36766
    476509
    808685
    1087444
    1091973
]

%plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x', x, y5, 'c-v', x, y6, 'm-p');
%ylabel('Dominance Tests');
%xlabel('Dimensions');
%legend('P-B Uniform', 'I-B Uniform', 'P-B Rising', 'I-B Rising', 'P-B Falling', 'I-B Falling', 'location', 'NorthWest');
%axis tight
%set(gca, 'XTick', x)

figure1 = figure;
axes1 = axes('Parent',figure1,'FontSize',18,'FontName','Arial');
plot1 = plot(x,[y1, y2, y3, y4, y5, y6],'Parent',axes1);
set(plot1(1),'Marker','+','Color',[0 0 1],'DisplayName','RPS Uniform');
set(plot1(2),'Marker','o','Color',[1 0 0],'DisplayName','IPS Uniform');
set(plot1(3),'Marker','*','Color',[0 1 0],'DisplayName','RPS Rising');
set(plot1(4),'Marker','x','Color',[0 0 0],'DisplayName','IPS Rising');
set(plot1(5),'Marker','v','Color','c','DisplayName','RPS Falling');
set(plot1(6),'Marker','p','Color','m','DisplayName','IPS Falling');

ylabel('Dominance Tests','FontSize',18,'FontName','Arial');
xlabel('Dimensions','FontSize',18,'FontName','Arial');

legend1 = legend(axes1,'show');
set(legend1, 'FontName','Arial', 'FontSize', 16);