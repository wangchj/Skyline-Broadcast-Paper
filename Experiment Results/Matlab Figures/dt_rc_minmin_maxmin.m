x=[20000 40000 60000 80000 100000]

%P-B (Min, Min)
y1=[
    321
    1464
    2266
    4000
    5400
]

%I-B (Min, Min)
y2=[
    37
    174
    289
    483
    890
]

%P-B (Max, Min)
y3=[

    379
    1284
    2233
    4920
    7171
]

%I-B (Max, Min)
y4=[
    308
    1254
    2196
    3746
    5090
]


%plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
%ylabel('Dominance Tests');
%xlabel('Record Count');
%legend('P-B (min, min)', 'I-B (min, min)', 'P-B (max, min)', 'I-B (max, min)', 'location', 'NorthWest');
%axis tight
%set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps

figure1 = figure;
axes1 = axes('Parent',figure1,'FontSize',18,'FontName','Arial');
plot1 = plot(x,[y1, y2, y3, y4],'Parent',axes1);
set(plot1(1),'Marker','+','Color','b','DisplayName','RPS (min, min)');
set(plot1(2),'Marker','o','Color','r','DisplayName','IPS (min, min)');
set(plot1(3),'Marker','*','Color','g','DisplayName','RPS (max, min)');
set(plot1(4),'Marker','x','Color','k','DisplayName','IPS (max, min)');

ylabel('Dominance Tests','FontSize',18,'FontName','Arial');
xlabel('Record Count','FontSize',18,'FontName','Arial');

legend1 = legend(axes1,'show');
set(legend1, 'FontName','Arial', 'FontSize', 16);