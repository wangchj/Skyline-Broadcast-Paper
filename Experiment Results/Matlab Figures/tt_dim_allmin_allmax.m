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


plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
ylabel('Tuning Time (bytes)');
xlabel('Dimensions');
legend('P-B all min', 'I-B all min', 'P-B all max', 'I-B all max', 'location', 'NorthWest');
axis tight
set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps