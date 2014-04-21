x=[2 4 6 8 10]

%One-Time Index Percentage
y1=[
    0.3333
    0.2653
    0.2394
    0.2258
    0.2174
]

%(1, m) Index Percentage
y2=[
    0.6666
    0.5306
    0.4788
    0.4516
    0.4348
]

%DFDI Index Percentage
y3=[
    0.3869
    0.3271
    0.3044
    0.2926
    0.2852
]

%plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*');
%ylabel('Index Percentage');
%xlabel('Dimensions');
%legend('One-Time Index', '(1, m) Index, m = 2', 'DFDI, r = 2', 'location', 'NorthWest');
%axis tight
%set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps

figure1 = figure;
axes1 = axes('Parent',figure1,'FontSize',18,'FontName','Arial');
plot1 = plot(x,[y1, y2, y3],'Parent',axes1);
set(plot1(1),'Marker','+','Color','b','DisplayName','One-Time Index');
set(plot1(2),'Marker','o','Color','r','DisplayName','(1, m) Index, m = 2');
set(plot1(3),'Marker','*','Color','g','DisplayName','TDI, r = 2');

ylabel('Index Percentage','FontSize',18,'FontName','Arial');
xlabel('Dimensions','FontSize',18,'FontName','Arial');

legend1 = legend(axes1,'show');
set(legend1, 'FontName','Arial', 'FontSize', 16);