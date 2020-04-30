// This program is used to calculate Round Varinances, Ver.1.1
// Contributed to Github Server on 4/30/2020
// Jun Steed Huang email: steedhuang@163.com     
// For more background theory, follow us on researchgate 
// Clear the picture
  clf
// Following program is used to calculate RV  
// F can be a Fractional Complex Number, 0 <= |F| <= 3.
// F1=1.5 is for the Taoist Three based moment between Mean and Variance
// F2=2.0 is for the Normal Variance on the Normal circle Water site
// F3=2.5 is for the Taosit Five based moment between Variance and Skewness
// F4=sqrt(2)+sqrt(-2) is for Upper Round Variance on the Normal circle Wind site
// F5=sqrt(2)-sqrt(-2) is for Down Round Variance on the Normal circle Hill site
  F4 = sqrt(2)+sqrt(-2);
  F5 = sqrt(2)-sqrt(-2);
// This is the sars-cov-1 gene alphabetical order label from Spike 649-689, 
  CMC = [18
2
1
9
12
11
1
2
19
21
6
14
8
3
25
19
9
14
11
5
11
1
2
1
11
9
2
3
25
21
8
6
3
15
15
15
15
12
12
24
3
];
  cmc1 = mean((CMC - mean(CMC)).^F4);
  cmc3 = mean((CMC - mean(CMC)).^F5);
  X = [real(cmc1) real(cmc3)]
  Y = [imag(cmc1) imag(cmc3)]
  plot(X,Y,'g');
// Plot again on the same figure
// This is the pangolin gene alphabetical order label from Spike 649-689, 
  CMC = [24
2
1
9
12
6
1
2
19
21
6
13
13
3
25
19
9
14
11
5
6
1
2
1
11
9
2
3
25
21
3
20
3
15
15
15
15
3
12
24
3
];
  cmc1 = mean((CMC - mean(CMC)).^F4);
  cmc3 = mean((CMC - mean(CMC)).^F5);
  X = [real(cmc1) real(cmc3)]
  Y = [imag(cmc1) imag(cmc3)]
  plot(X,Y,'r');  
// This is the sars-cov-2 gene alphabetical order label from Spike 649-689, 
  CMC = [24
2
1
9
12
11
1
2
19
21
6
13
13
3
25
19
9
14
11
5
11
1
2
1
11
9
2
3
25
18
8
18
8
13
3
5
24
24
2
24
3
];
  cmc1 = mean((CMC - mean(CMC)).^F4);
  cmc3 = mean((CMC - mean(CMC)).^F5);
  X = [real(cmc1) real(cmc3)]
  Y = [imag(cmc1) imag(cmc3)]
  plot(X,Y,'c');  
// This is the bat gene alphabetical order label from Spike 649-689, 
  CMC = [24
2
1
9
12
11
1
2
19
21
6
13
13
3
25
19
9
14
11
5
11
1
2
1
11
9
2
3
25
18
8
18
8
13
3
15
15
15
15
24
3
];
  cmc1 = mean((CMC - mean(CMC)).^F4);
  cmc3 = mean((CMC - mean(CMC)).^F5);
  X = [real(cmc1) real(cmc3)]
  Y = [imag(cmc1) imag(cmc3)]
  plot(X,Y,'b');  
  disp('Done the Complex Moment Calculations');
// Put label on
  xlabel('Large label dispersion');
  ylabel('Small label dispersion');
  title('The Round Variances for Virus Spike Amino Acid Sequence');
  legend('SARS-COV-1', 'Pangolin','SARS-COV-2', 'Bat');
