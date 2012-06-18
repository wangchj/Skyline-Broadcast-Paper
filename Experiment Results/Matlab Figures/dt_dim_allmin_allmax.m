x=[2 4 6 8 10]

%P-B all min
y1=[
    2605 
    72143
    95039 
    98630 
    99618 
]

%I-B all min
y2=[
    487
    1780
    3551
    5547
    7675
]

%P-B all max
y3=[
    48491
    80043
    94924
    98835
    99640
]

%I-B all max
y4=[
    48491
    80043
    94924
    98835
    99640
]


plot(x, y1, 'b-^', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x');
ylabel('Dominance Tests');
xlabel('Dimensions');
legend('P-B all min', 'I-B all min', 'P-B all max', 'I-B all max', 'location', 'NorthWest');
axis tight
set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps