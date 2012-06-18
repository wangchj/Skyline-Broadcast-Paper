x=[2 4 6 8 10]

%P-B uniform
y1=[
    2605
    72143
    95039
    98630
    99618
]

%I-B uniform
y2=[
    487
    1780
    3551
    5547
    7675
]

%P-B rising
y3=[
    3528
    76669
    699291
    937684
    1089899
]

%I-B rising
y4=[
    3528
    57737
    104574
    149496
    177015
]

%P-B falling
y5=[
    37760
    847084
    1395625
    1690721
    1785654
]

%I-B falling
y6=[
    36766
    476509
    808685
    1087444
    1091973
]

plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x', x, y5, 'c-v', x, y6, 'm-p');
ylabel('Dominance Tests');
xlabel('Dimensions');
legend('P-B Uniform', 'I-B Uniform', 'P-B Rising', 'I-B Rising', 'P-B Falling', 'I-B Falling', 'location', 'NorthWest');
axis tight
set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps