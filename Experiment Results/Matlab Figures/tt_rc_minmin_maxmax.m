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


plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
ylabel('Tuning Time (bytes)');
xlabel('Record Count');
legend('P-B (min, min)', 'I-B (min, min)', 'P-B (max, max)', 'I-B (max, max)', 'location', 'NorthWest');
axis tight
set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps