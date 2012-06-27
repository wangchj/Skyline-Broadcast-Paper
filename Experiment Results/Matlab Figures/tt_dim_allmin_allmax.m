x=[2 4 6 8 10]

%P-B all min
y1=[
    11312
    25356
    37868
    50924
    67900
]

%I-B all min
y2=[
    1320
    2392
    3288
    4792
    5480
]

%P-B all max
y3=[
    15684
    30356
    42868
    55924
    72900
]

%I-B all max
y4=[
    2416
    4880
    5984
    9232
    10800
]


%plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
%ylabel('Tuning Time (bytes)');
%xlabel('Dimensions');
%legend('P-B all min', 'I-B all min', 'P-B all max', 'I-B all max', 'location', 'NorthWest');
%axis tight
%set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps

figure1 = figure;
axes1 = axes('Parent',figure1,'FontSize',18,'FontName','Arial');
plot1 = plot(x,[y1, y2, y3, y4],'Parent',axes1);
set(plot1(1),'Marker','+','Color','b','DisplayName','RPS all min');
set(plot1(2),'Marker','o','Color','r','DisplayName','IPS all min');
set(plot1(3),'Marker','*','Color','g','DisplayName','RPS all max');
set(plot1(4),'Marker','x','Color','k','DisplayName','IPS all max');

ylabel('Tuning Time (bytes)','FontSize',18,'FontName','Arial');
xlabel('Dimensions','FontSize',18,'FontName','Arial');

legend1 = legend(axes1,'show');
set(legend1, 'FontName','Arial', 'FontSize', 16);