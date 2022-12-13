/https://adventofcode.com/2022/day/6

/ingestion
test:read0`:test/06.txt
input:read0`:input/06.txt

f: {x+?[;x](count distinct::)each y (til count[y]-1)+\:til x}
g: {x+{x>count distinct y z+til x}[x;y;](1+)/0}

/part 1 & 2
4 14 f\:first input
4 14 g\:first input


/
q)\ts:100 4 14 f\:first input
289 721072
q)\ts:100 4 14 g\:first input
470 1296
\

// Nathan Swann
// Next until count of distinct first 4 characters is 4
// Original string count - Next string count + 4
h:{c:count x; cn:count trim (next/) [{y<>count distinct y$x}[;y];x]; y+c-cn}

// Part 1
h[inp;4]

// Part 2
h[inp;14]
