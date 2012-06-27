x=[20000 40000 60000 80000 100000]

%P-B (Min, Min)
y1=[
    9728
    10276
    12416
    14592
    15360
]

%I-B (Min, Min)
y2=[
    1472
    1456
    1488
    1552
    1568
]

%P-B (Max, Max)
y3=[
    17964
    21420
    24188
    27452
    30700
]

%I-B (Max, Max)
y4=[
    1876
    2180
    2532
    2804
    2996
]


%plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
%ylabel('Tuning Time (bytes)');
%xlabel('Record Count');
%legend('P-B (min, min)', 'I-B (min, min)', 'P-B (max, max)', 'I-B (max, max)', 'location', 'NorthWest');
%axis tight
%set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps

figure1 = figure;
axes1 = axes('Parent',figure1,'FontSize',18,'FontName','Arial');
plot1 = plot(x,[y1, y2, y3, y4],'Parent',axes1);
set(plot1(1),'Marker','+','Color','b','DisplayName','RPS (min, min)');
set(plot1(2),'Marker','o','Color','r','DisplayName','IPS (min, min)');
set(plot1(3),'Marker','*','Color','g','DisplayName','RPS (max, max)');
set(plot1(4),'Marker','x','Color','k','DisplayName','IPS (max, max)');

ylabel('Tuning Time (bytes)','FontSize',18,'FontName','Arial');
xlabel('Record Count','FontSize',18,'FontName','Arial');

legend1 = legend(axes1,'show');
set(legend1, 'FontName','Arial', 'FontSize', 16);