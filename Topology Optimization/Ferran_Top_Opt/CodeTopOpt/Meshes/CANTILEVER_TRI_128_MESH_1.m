% FICHERO CON LAS COORDENADAS Y CONECTIVIDADES
coord =[
    1               0             0.5               0
    2           0.125             0.5               0
    3               0           0.375               0
    4           0.125           0.375               0
    5            0.25             0.5               0
    6               0            0.25               0
    7           0.125            0.25               0
    8            0.25           0.375               0
    9            0.25            0.25               0
   10           0.375             0.5               0
   11               0           0.125               0
   12           0.125           0.125               0
   13           0.375           0.375               0
   14            0.25           0.125               0
   15           0.375            0.25               0
   16               0               0               0
   17             0.5             0.5               0
   18           0.125               0               0
   19             0.5           0.375               0
   20           0.375           0.125               0
   21            0.25               0               0
   22             0.5            0.25               0
   23           0.375               0               0
   24           0.625             0.5               0
   25             0.5           0.125               0
   26           0.625           0.375               0
   27           0.625            0.25               0
   28             0.5               0               0
   29           0.625           0.125               0
   30            0.75             0.5               0
   31            0.75           0.375               0
   32            0.75            0.25               0
   33           0.625               0               0
   34            0.75           0.125               0
   35           0.875             0.5               0
   36           0.875           0.375               0
   37            0.75               0               0
   38           0.875            0.25               0
   39           0.875           0.125               0
   40               1             0.5               0
   41           0.875               0               0
   42               1           0.375               0
   43               1            0.25               0
   44               1           0.125               0
   45               1               0               0
   46           1.125             0.5               0
   47           1.125           0.375               0
   48           1.125            0.25               0
   49           1.125           0.125               0
   50           1.125               0               0
   51            1.25             0.5               0
   52            1.25           0.375               0
   53            1.25            0.25               0
   54            1.25           0.125               0
   55            1.25               0               0
   56           1.375             0.5               0
   57           1.375           0.375               0
   58           1.375            0.25               0
   59           1.375           0.125               0
   60           1.375               0               0
   61             1.5             0.5               0
   62             1.5           0.375               0
   63             1.5            0.25               0
   64             1.5           0.125               0
   65             1.5               0               0
   66           1.625             0.5               0
   67           1.625           0.375               0
   68           1.625            0.25               0
   69           1.625           0.125               0
   70           1.625               0               0
   71            1.75             0.5               0
   72            1.75           0.375               0
   73            1.75            0.25               0
   74            1.75           0.125               0
   75            1.75               0               0
   76           1.875             0.5               0
   77           1.875           0.375               0
   78           1.875            0.25               0
   79           1.875           0.125               0
   80           1.875               0               0
   81               2             0.5               0
   82               2           0.375               0
   83               2            0.25               0
   84               2           0.125               0
   85               2               0               0
  ];

connec=[
1 18 12 16
2 12 11 16
3 21 14 18
4 14 12 18
5 23 20 21
6 20 14 21
7 28 25 23
8 25 20 23
9 33 29 28
10 29 25 28
11 37 34 33
12 34 29 33
13 41 39 37
14 39 34 37
15 45 44 41
16 44 39 41
17 50 49 45
18 49 44 45
19 55 54 50
20 54 49 50
21 60 59 55
22 59 54 55
23 65 64 60
24 64 59 60
25 70 69 65
26 69 64 65
27 75 74 70
28 74 69 70
29 80 79 75
30 79 74 75
31 85 84 80
32 84 79 80
33 12 7 11
34 7 6 11
35 14 9 12
36 9 7 12
37 20 15 14
38 15 9 14
39 25 22 20
40 22 15 20
41 29 27 25
42 27 22 25
43 34 32 29
44 32 27 29
45 39 38 34
46 38 32 34
47 44 43 39
48 43 38 39
49 49 48 44
50 48 43 44
51 54 53 49
52 53 48 49
53 59 58 54
54 58 53 54
55 64 63 59
56 63 58 59
57 69 68 64
58 68 63 64
59 74 73 69
60 73 68 69
61 79 78 74
62 78 73 74
63 84 83 79
64 83 78 79
65 7 4 6
66 4 3 6
67 9 8 7
68 8 4 7
69 15 13 9
70 13 8 9
71 22 19 15
72 19 13 15
73 27 26 22
74 26 19 22
75 32 31 27
76 31 26 27
77 38 36 32
78 36 31 32
79 43 42 38
80 42 36 38
81 48 47 43
82 47 42 43
83 53 52 48
84 52 47 48
85 58 57 53
86 57 52 53
87 63 62 58
88 62 57 58
89 68 67 63
90 67 62 63
91 73 72 68
92 72 67 68
93 78 77 73
94 77 72 73
95 83 82 78
96 82 77 78
97 4 2 3
98 2 1 3
99 8 5 4
100 5 2 4
101 13 10 8
102 10 5 8
103 19 17 13
104 17 10 13
105 26 24 19
106 24 17 19
107 31 30 26
108 30 24 26
109 36 35 31
110 35 30 31
111 42 40 36
112 40 35 36
113 47 46 42
114 46 40 42
115 52 51 47
116 51 46 47
117 57 56 52
118 56 51 52
119 62 61 57
120 61 56 57
121 67 66 62
122 66 61 62
123 72 71 67
124 71 66 67
125 77 76 72
126 76 71 72
127 82 81 77
128 81 76 77];



 

pointload = [85 2 -1/2] ;
% Side loads
%
sideload = [ ];

dirichlet_data =[1 3 6 11 16];

nodesolid = [85]; 
