x=[20000 40000 60000 80000 100000]

%P-B (Min, Max)
y1=[
    31486
    107597
    217274
    344524
    487111
]

%I-B (Min, Max)
y2=[
    2386
    6806
    12529
    17425
    26679
]

%P-B (Max, Max)
y3=[
    32175
    109801
    217087
    346431
    494901
]

%I-B (Max, Max)
y4=[
    32175
    109801
    217087
    346431
    494901
]


%plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
%ylabel('Dominance Tests');
%xlabel('Record Count');
%legend('P-B (min, max)', 'I-B (min, max)', 'P-B (max, max)', 'I-B (max, max)', 'location', 'NorthWest');
%axis tight
%set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps

figure1 = figure;
axes1 = axes('Parent',figure1,'FontSize',18,'FontName','Arial');
plot1 = plot(x,[y1, y2, y3, y4],'Parent',axes1);
set(plot1(1),'Marker','+','Color','b','DisplayName','RPS (min, max)');
set(plot1(2),'Marker','o','Color','r','DisplayName','IPS (min, max)');
set(plot1(3),'Marker','*','Color','g','DisplayName','RPS (max, max)');
set(plot1(4),'Marker','x','Color','k','DisplayName','IPS (max, max)');

ylabel('Dominance Tests','FontSize',18,'FontName','Arial');
xlabel('Record Count','FontSize',18,'FontName','Arial');

legend1 = legend(axes1,'show');
set(legend1, 'FontName','Arial', 'FontSize', 16);