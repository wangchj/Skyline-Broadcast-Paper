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


plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
ylabel('Dominance Tests');
xlabel('Record Count');
legend('P-B (min, max)', 'I-B (min, max)', 'P-B (max, max)', 'I-B (max, max)', 'location', 'NorthWest');
axis tight
set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps