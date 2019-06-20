%==================================================================
%                        General Data File
% Title: TRIANGLE
% Units: SI
% Dimensions: 2D
% Type of problem: Plane_Stress
% Type of Phisics: ELASTIC
% Micro/Macro: MACRO
%
%==================================================================

%% Data

Data_prb = {
'TRIANGLE';
'SI';
'2D';
'Plane_Stress';
'ELASTIC';
'MACRO';
};

%% Coordinates
% Node                X                Y                Z

gidcoord = [
1            0            0            0
2            0      0.15385            0
3      0.15385            0            0
4      0.18484      0.14868            0
5            0      0.30769            0
6      0.30769            0            0
7      0.18349      0.29867            0
8      0.31406      0.22485            0
9            0      0.46154            0
10      0.46154            0            0
11      0.44464      0.15102            0
12      0.18214      0.44867            0
13      0.31271      0.37484            0
14      0.44328      0.30101            0
15      0.31136      0.52483            0
16            0      0.61538            0
17      0.61538            0            0
18      0.58055      0.21432            0
19      0.18078      0.59866            0
20      0.44193      0.45101            0
21      0.57251      0.37718            0
22      0.70106      0.14061            0
23      0.31001      0.67483            0
24      0.44058        0.601            0
25      0.70308      0.30336            0
26            0      0.76923            0
27      0.76923            0            0
28      0.17943      0.74865            0
29      0.57116      0.52718            0
30      0.70173      0.45335            0
31      0.83703      0.18538            0
32      0.43923        0.751            0
33      0.30865      0.82482            0
34       0.5698      0.67717            0
35       0.8323      0.37952            0
36      0.17808      0.89865            0
37            0      0.92308            0
38      0.92308            0            0
39      0.70038      0.60334            0
40      0.96423       0.1557            0
41      0.83095      0.52952            0
42      0.43788      0.90099            0
43      0.56845      0.82716            0
44      0.96288       0.3057            0
45       0.3073      0.97482            0
46      0.69903      0.75334            0
47      0.17673       1.0486            0
48      0.96153      0.45569            0
49       0.8296      0.67951            0
50            0       1.0769            0
51       1.0769            0            0
52       1.0935      0.23187            0
53       0.5671      0.97716            0
54      0.96017      0.60568            0
55      0.43653        1.051            0
56      0.69767      0.90333            0
57       1.0921      0.38186            0
58      0.30595       1.1248            0
59      0.82825       0.8295            0
60      0.17538       1.1986            0
61       1.0907      0.53186            0
62      0.95882      0.75568            0
63            0       1.2308            0
64       1.2308            0            0
65       1.2269      0.12904            0
66       1.2227      0.30804            0
67      0.56575       1.1272            0
68      0.69632       1.0533            0
69      0.43517        1.201            0
70       0.8269       0.9795            0
71       1.0894      0.68185            0
72       1.2213      0.45803            0
73       0.3046       1.2748            0
74      0.95747      0.90567            0
75      0.17403       1.3486            0
76         1.22      0.60802            0
77        1.088      0.83185            0
78        1.353      0.23433            0
79            0       1.3846            0
80       1.3846            0            0
81      0.69497       1.2033            0
82       0.5644       1.2771            0
83      0.82555       1.1295            0
84       1.3519      0.38421            0
85      0.43382        1.351            0
86      0.95612       1.0557            0
87       1.2187      0.75801            0
88       1.3505       0.5342            0
89      0.30325       1.4248            0
90       1.0867      0.98184            0
91       1.4974      0.14468            0
92      0.17267       1.4986            0
93       1.3492      0.68418            0
94        1.482      0.31058            0
95       1.2174        0.908            0
96      0.69362       1.3533            0
97      0.82419       1.2795            0
98      0.56304       1.4271            0
99      0.95495       1.2054            0
100            0       1.5385            0
101       1.5385            0            0
102       1.4811      0.46038            0
103      0.43247        1.501            0
104       1.0856       1.1316            0
105       1.3479      0.83409            0
106       1.4798      0.61037            0
107       0.3019       1.5748            0
108       1.2162       1.0578            0
109        1.614     0.086653            0
110       1.6125      0.23654            0
111      0.82284       1.4295            0
112      0.69227       1.5033            0
113       1.6114      0.38654            0
114      0.95355       1.3554            0
115      0.17132       1.6486            0
116       1.4785      0.76023            0
117       1.3467      0.98408            0
118      0.56169       1.5771            0
119       1.0841       1.2816            0
120            0       1.6923            0
121       1.6923            0            0
122       1.6103      0.53654            0
123      0.43112        1.651            0
124       1.2147       1.2078            0
125       1.4771      0.91023            0
126        1.609      0.68638            0
127      0.30054       1.7248            0
128       1.7495      0.13043            0
129       1.3453       1.1341            0
130       1.7418       0.3125            0
131      0.82149       1.5795            0
132      0.95206       1.5056            0
133      0.69092       1.6533            0
134       1.0827       1.4316            0
135       1.7407       0.4625            0
136      0.16997       1.7986            0
137       1.6077      0.83637            0
138      0.56034       1.7271            0
139       1.4759       1.0602            0
140       1.2134       1.3578            0
141       1.7396      0.61251            0
142            0       1.8462            0
143       1.8462            0            0
144      0.42977        1.801            0
145        1.344        1.284            0
146       1.8681      0.21549            0
147       1.6064      0.98637            0
148       1.7383      0.76252            0
149      0.29919       1.8748            0
150       1.4745       1.2102            0
151      0.95071       1.6556            0
152       1.8712      0.38846            0
153      0.82014       1.7295            0
154       1.0813       1.5818            0
155       1.2119        1.508            0
156       1.8701      0.53846            0
157      0.55899       1.8771            0
158       1.7369      0.91252            0
159      0.69054       1.8381            0
160       1.3426        1.434            0
161       1.6051       1.1363            0
162       1.8689       0.6887            0
163            2            0            0
164            0            2            0
165       1.4732       1.3602            0
166            2      0.15385            0
167      0.15385            2            0
168      0.30769            2            0
169            2      0.30769            0
170       1.7356       1.0625            0
171      0.94936       1.8056            0
172       1.0799       1.7318            0
173       1.8675       0.8387            0
174      0.81879       1.8795            0
175      0.46154            2            0
176            2      0.46154            0
177       1.2105        1.658            0
178       1.6037       1.2863            0
179       1.3411       1.5842            0
180      0.61538            2            0
181            2      0.61538            0
182       1.4718       1.5102            0
183       1.8661      0.98869            0
184       1.7342       1.2125            0
185      0.76923            2            0
186            2      0.76923            0
187       1.6024       1.4363            0
188       1.0786       1.8818            0
189       1.2092        1.808            0
190       1.8648       1.1387            0
191       1.3397       1.7342            0
192      0.92308            2            0
193            2      0.92308            0
194       1.7329       1.3625            0
195       1.4705       1.6601            0
196       1.6011       1.5863            0
197       1.8635       1.2887            0
198       1.0769            2            0
199            2       1.0769            0
200       1.7316       1.5125            0
201       1.3384       1.8841            0
202       1.2308            2            0
203            2       1.2308            0
204       1.8622       1.4386            0
205       1.4671        1.843            0
206       1.5997       1.7363            0
207       1.7303       1.6625            0
208       1.3846            2            0
209            2       1.3846            0
210       1.8609       1.5886            0
211       1.5984       1.8863            0
212        1.729       1.8124            0
213       1.5385            2            0
214            2       1.5385            0
215       1.8595       1.7386            0
216       1.6923            2            0
217            2       1.6923            0
218       1.8582       1.8886            0
219       1.8462            2            0
220            2       1.8462            0
221            2            2            0
];

%% Conectivities
% Element        Node(1)                Node(2)                Node(3)                Material

gidlnods = [
1 1 3 2 0
2 176 181 156 0
3 156 181 162 0
4 162 181 186 0
5 156 162 141 0
6 141 162 148 0
7 156 141 135 0
8 148 162 173 0
9 141 148 126 0
10 156 135 152 0
11 148 173 158 0
12 126 148 137 0
13 152 135 130 0
14 158 173 183 0
15 126 137 116 0
16 130 135 113 0
17 183 173 193 0
18 183 193 199 0
19 116 137 125 0
20 113 135 122 0
21 130 113 110 0
22 125 137 147 0
23 116 125 105 0
24 122 135 141 0
25 122 141 126 0
26 122 126 106 0
27 106 126 116 0
28 122 106 102 0
29 106 116 93 0
30 93 116 105 0
31 106 93 88 0
32 93 105 87 0
33 87 105 95 0
34 93 87 76 0
35 147 137 158 0
36 158 137 148 0
37 147 158 170 0
38 88 93 76 0
39 88 76 72 0
40 95 105 117 0
41 170 158 183 0
42 170 183 190 0
43 190 183 199 0
44 190 199 203 0
45 170 190 184 0
46 88 72 84 0
47 117 105 125 0
48 117 125 139 0
49 139 125 147 0
50 117 139 129 0
51 139 147 161 0
52 161 147 170 0
53 139 161 150 0
54 161 170 184 0
55 161 184 178 0
56 178 184 194 0
57 161 178 150 0
58 150 178 165 0
59 165 178 187 0
60 150 165 145 0
61 184 190 197 0
62 84 72 66 0
63 129 139 150 0
64 129 150 145 0
65 129 145 124 0
66 124 145 140 0
67 129 124 108 0
68 197 190 203 0
69 197 203 209 0
70 66 72 57 0
71 140 145 160 0
72 108 124 104 0
73 57 72 61 0
74 66 57 52 0
75 160 145 165 0
76 160 165 182 0
77 104 124 119 0
78 61 72 76 0
79 182 165 187 0
80 104 119 99 0
81 182 187 196 0
82 99 119 114 0
83 196 187 200 0
84 182 196 195 0
85 114 119 134 0
86 200 187 194 0
87 194 187 178 0
88 200 194 204 0
89 195 196 206 0
90 134 119 140 0
91 206 196 207 0
92 195 206 205 0
93 207 196 200 0
94 206 207 212 0
95 205 206 211 0
96 212 207 215 0
97 206 212 211 0
98 215 207 210 0
99 211 212 216 0
100 211 216 213 0
101 211 213 205 0
102 210 207 200 0
103 215 210 217 0
104 215 217 220 0
105 210 200 204 0
106 52 57 44 0
107 44 57 48 0
108 52 44 40 0
109 48 57 61 0
110 40 44 31 0
111 48 61 54 0
112 31 44 35 0
113 54 61 71 0
114 48 54 41 0
115 35 44 48 0
116 71 61 76 0
117 41 54 49 0
118 35 48 41 0
119 71 76 87 0
120 49 54 62 0
121 62 54 71 0
122 49 62 59 0
123 62 71 77 0
124 59 62 74 0
125 49 59 46 0
126 77 71 87 0
127 74 62 77 0
128 46 59 56 0
129 74 77 90 0
130 56 59 70 0
131 90 77 95 0
132 74 90 86 0
133 70 59 74 0
134 86 90 104 0
135 104 90 108 0
136 74 86 70 0
137 70 86 83 0
138 83 86 99 0
139 99 86 104 0
140 70 83 68 0
141 68 83 81 0
142 70 68 56 0
143 81 83 97 0
144 56 68 53 0
145 81 97 96 0
146 53 68 67 0
147 96 97 111 0
148 81 96 82 0
149 67 68 81 0
150 111 97 114 0
151 114 97 99 0
152 82 96 98 0
153 67 81 82 0
154 98 96 112 0
155 82 98 85 0
156 67 82 69 0
157 112 96 111 0
158 85 98 103 0
159 69 82 85 0
160 112 111 131 0
161 103 98 118 0
162 69 85 73 0
163 131 111 132 0
164 118 98 112 0
165 73 85 89 0
166 132 111 114 0
167 89 85 103 0
168 73 89 75 0
169 89 103 107 0
170 75 89 92 0
171 73 75 60 0
172 107 103 123 0
173 92 89 107 0
174 60 75 63 0
175 73 60 58 0
176 123 103 118 0
177 58 60 47 0
178 73 58 69 0
179 123 118 138 0
180 47 60 50 0
181 69 58 55 0
182 138 118 133 0
183 123 138 144 0
184 55 58 45 0
185 69 55 67 0
186 133 118 112 0
187 144 138 157 0
188 45 58 47 0
189 67 55 53 0
190 157 138 159 0
191 144 157 175 0
192 53 55 42 0
193 159 138 133 0
194 42 55 45 0
195 53 42 43 0
196 159 133 153 0
197 43 42 32 0
198 53 43 56 0
199 153 133 131 0
200 32 42 33 0
201 43 32 34 0
202 56 43 46 0
203 153 131 151 0
204 33 42 45 0
205 34 32 24 0
206 46 43 34 0
207 153 151 171 0
208 24 32 23 0
209 34 24 29 0
210 46 34 39 0
211 171 151 172 0
212 23 32 33 0
213 29 24 20 0
214 39 34 29 0
215 172 151 154 0
216 20 24 15 0
217 29 20 21 0
218 154 151 132 0
219 172 154 177 0
220 15 24 23 0
221 21 20 14 0
222 132 151 131 0
223 177 154 155 0
224 14 20 13 0
225 21 14 18 0
226 177 155 179 0
227 13 20 15 0
228 18 14 11 0
229 21 18 25 0
230 179 155 160 0
231 13 15 12 0
232 11 14 8 0
233 25 18 22 0
234 12 15 19 0
235 8 14 13 0
236 25 22 31 0
237 19 15 23 0
238 31 22 27 0
239 25 31 35 0
240 19 23 28 0
241 25 35 30 0
242 28 23 33 0
243 30 35 41 0
244 25 30 21 0
245 30 41 39 0
246 21 30 29 0
247 39 41 49 0
248 29 30 39 0
249 13 12 7 0
250 7 12 5 0
251 13 7 8 0
252 8 7 4 0
253 4 7 2 0
254 8 4 6 0
255 22 18 17 0
256 119 124 140 0
257 49 46 39 0
258 171 172 188 0
259 188 172 189 0
260 171 188 192 0
261 189 172 177 0
262 188 189 202 0
263 189 177 191 0
264 191 177 179 0
265 189 191 201 0
266 191 179 195 0
267 201 191 205 0
268 189 201 202 0
269 110 113 94 0
270 94 113 102 0
271 102 113 122 0
272 94 102 84 0
273 94 84 78 0
274 84 102 88 0
275 78 84 66 0
276 78 66 65 0
277 94 78 91 0
278 88 102 106 0
279 65 66 52 0
280 65 52 51 0
281 78 65 80 0
282 91 78 80 0
283 94 91 110 0
284 110 91 109 0
285 109 91 101 0
286 109 101 121 0
287 109 121 128 0
288 128 121 143 0
289 109 128 110 0
290 114 134 132 0
291 153 171 174 0
292 174 171 192 0
293 153 174 159 0
294 159 185 180 0
295 140 160 155 0
296 45 47 36 0
297 36 47 37 0
298 45 36 33 0
299 33 36 28 0
300 28 36 26 0
301 156 152 176 0
302 176 152 169 0
303 194 184 197 0
304 194 197 204 0
305 204 197 209 0
306 204 209 214 0
307 52 40 51 0
308 123 144 127 0
309 127 144 149 0
310 123 127 107 0
311 149 144 175 0
312 127 149 136 0
313 107 127 115 0
314 136 149 167 0
315 127 136 115 0
316 107 115 92 0
317 115 136 120 0
318 92 115 100 0
319 130 110 128 0
320 112 131 133 0
321 19 28 16 0
322 40 31 38 0
323 155 154 134 0
324 155 134 140 0
325 152 130 146 0
326 146 130 128 0
327 152 146 169 0
328 169 146 166 0
329 12 19 9 0
330 87 95 77 0
331 157 159 180 0
332 157 180 175 0
333 18 11 17 0
334 195 205 191 0
335 97 83 99 0
336 173 162 186 0
337 173 186 193 0
338 117 129 108 0
339 117 108 95 0
340 95 108 90 0
341 182 195 179 0
342 154 132 134 0
343 160 182 179 0
344 212 215 218 0
345 218 215 220 0
346 218 220 221 0
347 212 218 216 0
348 75 92 79 0
349 11 8 6 0
350 210 204 214 0
351 210 214 217 0
352 201 205 208 0
353 166 146 143 0
354 198 192 188 0
355 198 188 202 0
356 16 9 19 0
357 64 80 65 0
358 142 120 136 0
359 17 27 22 0
360 175 168 149 0
361 149 168 167 0
362 143 163 166 0
363 63 50 60 0
364 6 10 11 0
365 11 10 17 0
366 185 159 174 0
367 185 174 192 0
368 5 2 7 0
369 221 219 218 0
370 218 219 216 0
371 100 79 92 0
372 38 51 40 0
373 167 164 142 0
374 208 202 201 0
375 208 205 213 0
376 37 26 36 0
377 3 6 4 0
378 3 4 2 0
379 9 5 12 0
380 80 101 91 0
381 120 100 115 0
382 27 38 31 0
383 50 37 47 0
384 79 63 75 0
385 51 64 65 0
386 26 16 28 0
387 128 143 146 0
388 142 136 167 0
];

%% Variable Prescribed
% Node            Dimension                Value

lnodes = [
164 1 0 
164 2 0 
221 1 0 
221 2 0 
];

%% Force Prescribed
% Node                Dimension                Value

pointload_complete = [
1 1 0 
1 2 -1 
163 1 0 
163 2 -1 
];

%% Volumetric Force
% Element        Dim                Force_Dim

Vol_force = [
];

%% Group Elements
% Element        Group_num

Group = [
];

%% Initial Holes
% Elements that are considered holes initially
% Element

Initial_holes = [
];

%% Boundary Elements
% Elements that can not be removed
% Element

Boundary_elements = [
];

%% Micro gauss post
%
% Element

Micro_gauss_post = [
];


%% Micro Slave-Master
% Nodes that are Slaves
% Nodes             Value (1-Slave,0-Master)

Micro_slave = [
];

%% Nodes solid
% Nodes that must remain 
% Nodes

nodesolid = unique(pointload_complete(:,1));

%% External border Elements
% Detect the elements that define the edge of the domain
% Element               Node(1)           Node(2)

External_border_elements = [
];

%% External border Nodes
% Detect the nodes that define the edge of the domain
% Node

External_border_nodes = [
];

%% Materials
% Materials that have been used
% Material_Num              Mat_density        Young_Modulus        Poisson

Materials = [
];