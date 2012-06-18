x=[2 4 6 8 10]

%P-B uniform
y1=[
    14312 
    30356 
    42868 
    55924 
    72900 
]

%I-B uniform
y2=[
    1320 
    2392 
    3288 
    4792 
    5480 
]

%P-B rising
y3=[
    4828 
    51732 
    77668 
    103988 
    127380 
]

%I-B rising
y4=[
    2776 
    22392 
    33480 
    45176 
    55240 
]

%P-B falling
y5=[
    8484 
    44916 
    66724 
    85428 
    107620 
]

%I-B falling
y6=[
    1080 
    2040 
    3000 
    3960 
    4920 
]

plot(x, y1, 'b-+', x, y2, 'r-o', x, y3, 'g-*', x, y4, 'k-x', x, y5, 'c-v', x, y6, 'm-p');
ylabel('Tuning Time (bytes)');
xlabel('Dimensions');
legend('P-B Uniform', 'I-B Uniform', 'P-B Rising', 'I-B Rising', 'P-B Falling', 'I-B Falling', 'location', 'NorthWest');
axis tight
set(gca, 'XTick', x)
%title('Execution Time vs Image Size');
%print -deps execution_time.eps