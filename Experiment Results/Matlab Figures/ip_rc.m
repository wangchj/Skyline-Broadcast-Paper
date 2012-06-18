x=[20000 40000 60000 80000 100000]

%One-Time Index Percentage
y1=[
    0.5781
    0.4346
    0.3622
    0.3186
    0.2895
]

%(1, m) Index Percentage
y2=[
    0.7327
    0.6058
    0.5318
    0.4833
    0.4490
]

%DFDI Index Percentage
y3=[
    0.5891
    0.4445
    0.3707
    0.3259
    0.2958
]

plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*');
ylabel('Index Percentage');
xlabel('Record Count');
legend('One-Time Index', '(1, m) Index, m = 2', 'DFDI, r = 2', 'location', 'NorthWest');
axis tight
set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps