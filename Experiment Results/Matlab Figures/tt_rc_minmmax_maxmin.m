x=[20000 40000 60000 80000 100000]

%P-B (Min, Max)
y1=[
    17964
    21420
    24188
    27740
    31324
]

%I-B (Min, Max)
y2=[
    1940
    2244
    2612
    2660
    3060
]

%P-B (Max, Min)
y3=[
    13124
    15284
    17012
    19844
    21620
]

%I-B (Max, Min)
y4=[
    1096
    1192
    1192
    1192
    1208
]


plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
ylabel('Tuning Time (bytes)');
xlabel('Record Count');
legend('P-B (min, max)', 'I-B (min, max)', 'P-B (max, min)', 'I-B (max, min)', 'location', 'NorthWest');
axis tight
set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps