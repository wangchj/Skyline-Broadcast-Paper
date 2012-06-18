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


plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
ylabel('Dominance Tests');
xlabel('Record Count');
legend('P-B (min, min)', 'I-B (min, min)', 'P-B (max, min)', 'I-B (max, min)', 'location', 'NorthWest');
axis tight
set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps