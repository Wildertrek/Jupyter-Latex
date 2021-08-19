##
## This file contains the sample code from Butrey and Whitaker (2017).
## R's responses are preceded by ##.
##
## =====================
## Chapter 1 
## =====================
3 / 2
## [1] 1.5

3/
2
## [1] 1.5

a <- 1
a.1 <- 1
2a <- 1
## Error: unexpected symbol in "2a"
a 2 <- 1
## Error: unexpected numeric constant in "a 2"

sin (log (34))
## [1] -0.375344

1/49 * 49
## [1] 1                        # as expected
1 - (1/49 * 49)
## [1] 1.110223e-16
(49 * 1/49) == (1/49 * 49) # should be TRUE
## [1] FALSE

sqrt (pi)
## [1] 1.772454



## Chapter 2 
## =====================
5
## [1] 5

c(1, 17)
## [1]  1 17
c(-1, pi, 17)
## [1] -1.000000  3.141593 17.000000
c(-1, pi, 1700000)
## [1] -1.000000e+00  3.141593e+00  1.700000e+06

rep (c(2, 4), 3)              # repeat a vector
## [1] 2 4 2 4 2 4
rep (c("Yes", "No"), c(3, 1)) # repeat elements of vector
## [1] "Yes" "Yes" "Yes" "No" 
rep (c("Yes", "No"), each = 8)
##  [1] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
## [10] "No"  "No"  "No"  "No"  "No"  "No"  "No" 

1:5
## [1] 1 2 3 4 5
6:-2
## [1]  6  5  4  3  2  1  0 -1 -2 # Can go in reverse, by 1
2.3:5.9
## [1] 2.3 3.3 4.3 5.3            # Permitted (but unusual)
3 + 2:7                      # Watch out here! This is 3 +
## [1]  5  6  7  8  9 10          # (vector produced by 2:7)
(3 + 2):7
## [1] 5 6 7                      # This is 5:7

101:105 >= 102                # Which elements are >= 102?
## [1] FALSE  TRUE  TRUE  TRUE  TRUE
101:105 == 104                # Which equal (==) 104?
## [1] FALSE FALSE FALSE  TRUE FALSE

1 - 1/46:50 * 46:50 == 0
## [1]  TRUE  TRUE  TRUE FALSE  TRUE

101:105 >= 102
## [1] FALSE  TRUE  TRUE  TRUE  TRUE
sum (101:105 >= 102)
## [1] 4                            # Four elements are >= 102
101:105 == 104
## [1] FALSE FALSE FALSE  TRUE FALSE
mean (101:105 == 104)
## [1] 0.2                          # 20% are == 104

5:10
## [1]  5  6  7  8  9 10
(5:10) + 4
## [1]  9 10 11 12 13 14
(5:10)^2                      # Square each element;
## [1]  25  36  49  64  81 100     # parentheses necessary

(thing1 <- c(20, 15, 10, 5, 0)^2)
## [1] 400 225 100  25   0
(thing2 <- 105:101)
## [1] 105 104 103 102 101
thing2 + thing1
## [1] 505 329 203 127 101
thing2 / thing1
## [1] 0.2625000 0.4622222 1.0300000 4.0800000       Inf

max (thing2, thing1)
## [1] 400
pmax (thing2, thing1)
## [1] 400 225 103 102 101

5:10 + c(0, 10, 100, 1000, 10000, 100000)  # Two 6-vectors
## [1]   5  16   107  1008  10009 100010 # Add by element
5:10 + c(1, 10, 100)         # A 6-vector and a 3-vector
## [1]   6  16   107 9  19 110    # The 3-vector is replicated
5:10 + 3:7                   # A 6-vector and a 5-vector
## [1]  8 10 12 14 16 13          # 5+3, 6+4, ..., 9+7, 10+3
## Warning message:
 5:10 + 3:7 :
##   longer object length is not a multiple of shorter length

vec <- c(101, 102, 103)
names(vec)
## NULL
names(vec) <- c("a", "b", "Long name")
names(vec)
## [1] "a"         "b"         "Long name"

c(a = 101, b = 102, Long.name = 103)
##         a         b Long.name 
##       101       102       103 

c(1, 4, 7, 2, 5)      # Create numeric vector
## [1] 1 4 7 2 5
c(1, 4, 7, 2, 5, "3") # What if one element is character?
## [1] "1" "4" "7" "2" "5" "3"

1/7
## [1] 0.1428571           # by default, 7 digits are displayed
c(1/7, "a")
## [1] "0.142857142857143" "a"  

as.numeric (c(" 123.5  ", "-123e-2", "4,355", "45. 6",
##                 "$23", "75%"))
## [1] 123.50  -1.23     NA     NA     NA     NA
## Warning message:
## NAs introduced by coercion 

as.logical (c(123, 5 - 5, 1e-300, 1e-400, 1 - 1/49 * 49))
## [1]  TRUE FALSE  TRUE FALSE  TRUE

(a <- 101:105)
## [1] 101 102 103 104 105
a[3]
## [1] 103

a[c(4, 2)]
## [1] 104 102
a[1+1]                # A simple expression; this works
## [1] 102
a[2.999999999999999]  # This is truncated to 3, but...
## [1] 102
a[2.9999999999999999] # exactly 3 in double-precision.
## [1] 103
a[49 * (1/49)]        # This index gets truncated to zero;
## integer (0)             # R produces a vector of length zero

a[-2]             # Omit element 2
## [1] 101 103 104 105
a[c(-1, 3)]       # Illegal
## Error in a[c(-1, 3)] : only 0's may be mixed
##     with negative subscripts
a[-1:2]   # Illegal, because -1:2 evaluates to -1, 0, 1, 2
## Error in a[-1:2] : only 0's may be mixed
##     with negative subscripts
a[-(1:2)] # -(1:2) is (-1, -2): omit elements 1 and 2.
## [1] 103 104 105

age <- c(53, 26, 81, 18, 63, 34)
age > 60
## [1] FALSE FALSE  TRUE FALSE  TRUE FALSE
age[age > 60]
## [1] 81 63

people <- c("Ahmed", "Mary", "Lee", "Alex", "John", "Viv")
age > 60            # Just as a reminder
## [1] FALSE FALSE  TRUE FALSE  TRUE FALSE
people[age > 60]    # Return name where (age > 60) is TRUE
## [1] "Lee"  "John"

age.gt.60  <- age > 60
people[age.gt.60]
## [1] "Lee"  "John" # as expected
people[0 + age.gt.60]
## [1] "Ahmed" "Ahmed"
people[-age.gt.60]
## [1] "Mary"   "Lee"    "Alex"   "John"   "Viv"

(vec <- c(a = 12, b = 34, c = -1))
##  a  b  c 
## 12 34 -1 
vec["b"]
##  b 
## 34 
vec[names (vec) != "a"]
##  b  c 
## 34 -1 

(b <- c(101, 102, 103, 104))
## [1] 101 102 103 104
a <- b[b < 99] # Reasonable, but no elements of b are < 99
a
## numeric(0)       # a has length 0

sum (a)
## [1] 0            # Possibly unexpected
sum (a + 12345)
## [1] 0            # Definitely unexpected
if (a < 2) cat ("yes\n")
## Error in if (a < 2) cat("yes\n") : argument is length zero

(a <- c(101, 102, -99, 104, -99, 9106)) # last item should
## [1]  101  102  -99  104  -99 9106         # have been 106
a[6] <- 106               # numeric subscript
a
## [1] 101 102 -99 104 -99 106
a[a < 0] <- 9999          # logical subscript
a
## [1]  101  102 9999  104 9999  106

b <- c("A", "missing", "C", "D")
names (b) <- c("Red", "White", "Blue", "Green")
b
##       Red     White      Blue     Green 
##       "A" "missing"       "C"       "D" 
b["White"] <- "B"         # name subscript
b
##   Red White  Blue Green 
##   "A"   "B"   "C"   "D" 

a <- 101:103
b <- c(7, 2, 1, 15)
c(a, b)                    # Combine two vectors
## [1] 101 102 103   7   2   1  15
a                          # Unchanged; no assignment made
## [1] 101 102 103
a[4:7] <- b                # index non-existent values
a
## [1] 101 102 103   7   2   1  15
b
## [1]  7  2  1 15
b[6] <- 22                 # index non-existent value
b
## [1]  7  2  1 15 NA 22        # b[5] filled in with NA

(nax <- c(101, 102, NA, 104))
## [1] 101 102  NA 104
nax * 2                # Arithmetic on NAs produce NAs....
## [1] 202 204  NA 208
nax >= 102             # ...as do logical ones
## [1] FALSE  TRUE    NA  TRUE
mean (nax)             # One NA affects the computation
## [1] NA
mean (nax, na.rm=TRUE) # na.rm=TRUE excludes NAs
## [1] 102.3333
is.na (nax)            # Locate NAs with logical vector
## [1] FALSE FALSE  TRUE FALSE
which (is.na (nax))    # Numeric indices of NAs
## [1] 3

nax[!is.na (nax)]      # Return the non-missing values
## [1] 101 102 104
(nay <- na.omit (nax)) # This keeps track of deleted ones
## [1] 101 102 104
## attr(,"na.action")
## [1] 3
## attr(,"class")
## [1] "omit"

(b <- c(101, 102, 103, 104))
## [1] 101 102 103 104
(a <- c(1, 2, NA, 4))
## [1]  1  2 NA  4
b[!is.na (a) & a == 2] # We probably want this...
## [1] 102
b[a == 2]              # ...and not this.
## [1] 102  NA

b[a[2]]                # a[2] = 2; extract element 2 of b
## [1] 102                  # ... which is 102
b[a[3]]                # a[3] is NA
## [1] NA
(a <- as.logical (a))  # Now convert a to logical
## [1] TRUE TRUE   NA TRUE
b[a[3]]                # a[3] is NA
## [1] NA NA NA NA

vec <- rep (c("red", "blue", NA, "green"), c(3, 2, 1, 4))
vec
##  [1] "red"   "red"   "red"   "blue"  "blue"  NA     
##  [7] "green" "green" "green" "green"
table (vec)
## vec
##  blue green   red 
##     2     4     3 

table (vec, useNA = "always")
##  blue green   red  <NA> 
##     2     4     3     1 

table (vec[-6], useNA="ifany")
##  blue green   red 
##     2     4     3 
table (vec[-6], useNA="always")
##  blue green   red  <NA> 
##     2     4     3     0 

table (vec, exclude="green")
## blue  red <NA> 
##    2    3    1 
table (vec, exclude=NULL)
##  blue green   red  <NA> 
##     2     4     3     1 

yr <- rep (2015:2017, each=5)
market <- c("a", "a", "b", "a", "b", "b", "b", "a", "b",
##               "b", "a", "b", "a", "b", "a")
cost <- c(64, 87, 71, 79, 79, 91, 86, 92, NA,
##             55, 37, 41, 60, 66, 82)
(tab <- table (market, yr)) 
##       yr
## market 2015 2016 2017
##      a    3    1    3
##      b    2    4    2
prop.table (tab)    # These proportions sum to 1
##       yr
## market       2015       2016       2017
##      a 0.20000000 0.06666667 0.20000000
##      b 0.13333333 0.26666667 0.13333333
prop.table (tab, 2) # Each column's proportions sum to 1
##       yr
## market 2015 2016 2017
##      a  0.6  0.2  0.6
##      b  0.4  0.8  0.4

addmargins (tab)            # append row and column sums
##       yr
## market 2015 2016 2017 Sum
##    a      3    1    3   7
##    b      2    4    2   8
##    Sum    5    5    5  15
addmargins (tab, 2)         # append column sums
##       yr
## market 2015 2016 2017 Sum
##      a    3    1    3   7
##      b    2    4    2   8

tapply (cost, yr, min)       # find minimum within each yr
## 2015 2016 2017 
##   64   NA   37 
tapply (cost, yr, min, na.rm=TRUE)
## 2015 2016 2017 
##   64   55   37 

tapply (cost, list (market, yr), mean, na.rm=TRUE)
##       2015     2016     2017
## a 76.66667 92.00000 59.66667
## b 75.00000 77.33333 53.50000 
tapply (cost, list (market, yr), 
##                    function (x) sum (x^2, na.rm=TRUE))
##    2015  2016  2017
## a 17906  8464 11693
## b 11282 18702  6037

nm <- c("Freehan", "Cash", "Horton",
##     "Stanley", "Northrop", "Kaline")
scores <- c(263, 263, 285, 259, 264, 287) # 2 tied at 263
nm[order(scores)]              # ascending order of score
## [1] "Stanley"  "Freehan"  "Cash" 
## [4] "Northrop" "Horton"   "Kaline"  
nm[order(scores, nm)]                 # tie broken by nm
## [1] "Stanley"  "Cash"     "Freehan"     # (alphabetically)
## [4] "Northrop" "Horton"   "Kaline"  
nm[order (scores, decreasing = TRUE)] # descending
## [1] "Kaline"   "Horton"   "Northrop"
## [4] "Freehan"  "Cash"     "Stanley"

c("g", "5", "b", "J", "!") %in% letters
## [1]  TRUE FALSE  TRUE FALSE FALSE
table (c("g", "5", "b", "J", "!") %in% letters)
## FALSE  TRUE 
##     3     2 

union (c("g", "5", "b", "J", "!"),
##                   letters)     # elements in either vector
##   [1] "g" "5" "b" "J" "!" "a" "c" "d" "e" "f" "h" "i" "j"
##  [14] "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w"
##  [27] "x" "y" "z"
intersect (c("g", "5", "b", "J", "!"),
##                   letters)     # elements in both vectors
## [1] "g" "b"
setdiff (c("g", "5", "b", "J", "!"),
##                   letters)     # elements of a not in b
## [1] "5" "J" "!"

let <- c(letters, c("j", "j", "x"))
(tab <- table (let))
## let
## a b c d e f g h i j k l m n o p q r s t u v w x y z 
## 1 1 1 1 1 1 1 1 1 3 1 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 
which (tab != 1) # table locations where duplicates appear
##  j  x 
## 10 24              # 10th & 24th table entries aren't ones
names (tab)[tab != 1]
## [1] "j" "x"

table (table (let))
##  1  2  3 
## 24  1  1           # 24 entries are 1, one is 2, one is 3

nm <- c("Jensen", "Chang", "Johnson",
##     "Lopez", "McNamara", "Reese")
nm2 <- c("Lopez", "Ruth", "Nakagawa", "Jensen", "Mays")
match (nm, nm2)
## [1]  4 NA NA  1 NA NA
nm2[match (nm, nm2)]
## [1] "Jensen" NA       NA       "Lopez"  NA       NA     

match (nm, nm2, nomatch = 0)
## [1] 4 0 0 1 0 0
nm2[match (nm, nm2, nomatch = 0)]
## [1] "Jensen" "Lopez" 

rle (c("a", "b", "b", "a", "c", "c", "c"))
## Run Length Encoding
##   lengths: int [1:4] 1 2 1 3
##   values : chr [1:4] "a" "b" "a" "c"



## Chapter 3 
## =====================
(a <- matrix (101:115, nrow = 5, ncol = 3))
##      [,1] [,2] [,3]
## [1,]  101  106  111
## [2,]  102  107  112
## [3,]  103  108  113
## [4,]  104  109  114
## [5,]  105  110  115

length (a)
## [1] 15
dim (a)
## [1] 5 3

a[c(4, 2), c(3, 1)]
##      [,1] [,2]
## [1,]  114  104
## [2,]  112  102

a[-2,]
##      [,1] [,2] [,3]
## [1,]  101  106  111
## [2,]  103  108  113
## [3,]  104  109  114
## [4,]  105  110  115

a[,2]
## [1] 106 107 108 109 110 

a[,2,drop = FALSE]
##      [,1]
## [1,]  106
## [2,]  107
## [3,]  108
## [4,]  109
## [5,]  110

yr <- rep (2015:2017, each = 5)
market <- c(2, 2, 3, 2, 3, 3, 3, 2, 3, 3, 2, 3, 2, 3, 2)
(tbl <- table (market, yr))
##       yr
## market 2015 2016 2017
##      2    3    1    3
##      3    2    4    2

colnames (tbl)
## [1] "2015" "2016" "2017"
colnames (tbl) <- c("FY15", "FY16", "FY17")
tbl
##       yr
## market FY15 FY16 FY17
##      2    3    1    3
##      3    2    4    2

tbl[2,]
## FY15 FY16 FY17 
##    2    4    2 
tbl["2",]
## FY15 FY16 FY17 
##    3    1    3 

a <- matrix (101:115, 5, 3)
## # These four commands produce identical results
rowSums (a)
apply (a, 1, sum)
## # Pass argument na.rm into the sum() function
apply (a, 1, sum, na.rm = T) 
apply (a, 1, function (x) sum (x))
## [1] 318 321 324 327 330
## # User-written command selects the second-smallest entry
## # in each column
apply (a, 2, function (x) sort(x)[2])
## [1] 102 107 112

apply (a, 2, range)
##      [,1] [,2] [,3]
## [1,]  101  106  111
## [2,]  105  110  115

apply(a, 1, range)
##      [,1] [,2] [,3] [,4] [,5]
## [1,]  101  102  103  104  105
## [2,]  111  112  113  114  115
## # Use t() to transpose that matrix
t(apply(a, 1, range))
##      [,1] [,2]
## [1,]  101  111
## [2,]  102  112
## [3,]  103  113
## [4,]  104  114
## [5,]  105  115

apply (a, 2, function (x) which (x > 109))
## [[1]]
## integer(0)
## [[2]]
## [1] 5
## [[3]]
## [1] 1 2 3 4 5

a <- matrix (101:115, 5, 3); a[5, 3] <- a[3, 1] <- NA; a
##      [,1] [,2] [,3]
## [1,]  101  106  111
## [2,]   NA  107  112
## [3,]  103  108  113
## [4,]  104  109  114
## [5,]  105  110   NA
apply (a, 2, function (x) sum (is.na (x)))
## [1] 1 0 1

which (is.na (a))
## [1]  3 15
which (is.na (a), arr.ind = TRUE)
##      row col
## [1,]   2   1
## [2,]   5   3

b <- matrix (1:20, nrow = 4, byrow = TRUE)
b <- cbind (b, c(3, 2, 0, 5))
colnames (b) <- c("P1", "P2", "P3", "P4", "P5", "Use")
b
##      P1 P2 P3 P4 P5 Use
## [1,]  1  2  3  4  5   3
## [2,]  6  7  8  9 10   2
## [3,] 11 12 13 14 15   0
## [4,] 16 17 18 19 20   5

(subby <- cbind (1:nrow(b), b[,"Use"]))
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    2
## [3,]    3    0
## [4,]    4    5
b[subby]
## [1]  3  7 20

who <- rep (c("George", "Sally"), c(2, 6))
when <- rep (c("AM", "PM"), 4)
worked <- c(T, T, F,T, F, T, F, T)
(sched <- table (who, when, worked))
## , , worked = FALSE
##         when
## who      AM PM
##   George  0  0
##   Sally   3  0
## , , worked = TRUE
##         when
## who      AM PM
##   George  1  1
##   Sally   0  3
sched[2,1,1]
## [1] 3

(mylist <- list (alpha = 1:3, b = "yes", funk = log, 45))
## $alpha
## [1] 1 2 3
## $b
## [1] "yes"
## $funk
## function (x, base = exp(1))  .Primitive("log")
## [[4]]
## [1] 45

ages <- c(26, 45, 33, 61, 22, 71, 43)
gender <- c("F", "M", "F", "M", "M", "F", "F")
split (ages, gender)
## $F
## [1] 26 33 71 43
## $M
## [1] 45 61 22
split (ages, ages > 60)
## $`FALSE`
## [1] 26 45 33 22 43
## $`TRUE`
## [1] 61 71

names(mylist)
## [1] "alpha" "b"     "funk"  ""     

unlist (mylist[-3])
## alpha1 alpha2 alpha3      b        
##    "1"    "2"    "3"  "yes"   "45" 

dimnames(tbl)
## $market
## [1] "2" "3"
## $yr
## [1] "FY15" "FY16" "FY17"
dimnames (sched)
## $who
## [1] "George" "Sally" 
## $when
## [1] "AM" "PM"
## $worked
## [1] "FALSE" "TRUE" 

dimnames(tbl)[[2]][1] <- "Archive"
tbl
##       yr
## market Archive FY16 FY17
##      2       3    1    3
##      3       2    4    2

(mydf <- data.frame (
##         Who = letters[1:5], Cost = c(3, 2, 11, 4, 0),
##         Paid = c(F, T, T, T, F), stringsAsFactors = FALSE))
##   Who Cost  Paid
## 1   a    3 FALSE
## 2   b    2  TRUE
## 3   c   11  TRUE
## 4   d    4  TRUE
## 5   e    0 FALSE 

mydf[2]          # Numeric subscript
##   Cost
## 1    3
## 2    2
## 3   11
## 4    4
## 5    0
mydf["Cost"]     # Subscript by name
##   Cost
## 1    3
## 2    2
## 3   11
## 4    4
## 5    0
mydf[c(F, T, F)] # Logical subscript
##   Cost
## 1    3
## 2    2
## 3   11
## 4    4
## 5    0

mydf[[2]]
## [1]  3  2 11  4  0
mydf[["Cost"]]
## [1]  3  2 11  4  0
mydf[["C"]]
## NULL
mydf[["C", exact = FALSE]]
## [1]  3  2 11  4  0

mydf$W                     # Extracts the "Who" column
## [1] "a" "b" "c" "d" "e"

mydf[1:2, c("Cost", "Paid")]
##   Cost  Paid
## 1    3 FALSE
## 2    2  TRUE
mydf[,"Who", drop = FALSE] # Example of drop = FALSE
##   Who
## 1   a
## 2   b
## 3   c
## 4   d
## 5   e

(mat <- matrix (1001:1006, 2, 3)) # Matrix with six items
## # Ask for a non-existent entry, using vector-like indexing
mat[8]  
## [1] NA 
mat[,4] # Ask for a non-existent column
## Error in mat[, 4] : subscript out of bounds

mydf2 <- data.frame (alpha = 1:5, b = c(T, T, F, T, F), 
##   NX = c("NA", "NB", "NC", "ND", "NE"),
##   stringsAsFactors = FALSE, 
##   row.names = c("Red", "Blue", "White", "Reddish", "Black"))
mydf2
##         alpha     b NX
## Red         1  TRUE NA
## Blue        2  TRUE NB
## White       3 FALSE NC
## Reddish     4  TRUE ND
## Black       5 FALSE NE
## # Let's ask for rows that don't exist.
mydf2[c(9, 4, 7, 1),]
##         alpha    b   NX
## NA         NA   NA <NA>
## Reddish     4 TRUE   ND
## NA.1       NA   NA <NA>
## Red         1 TRUE   NA

mydf2["Re",]              # Not enough to be unambiguous
##    alpha  b    c
## NA    NA NA <NA>

## # Ask for the first column by abbreviated name.
mydf2$alph
## [1] 1 2 3 4 5               # No problem
## # Create another column with a similar name
mydf2$alpha.plus.1 <- mydf2$alpha + 1
mydf2$alph
## NULL
mydf2$alph + 1            # No error, but..
## numeric(0)                  # probably unexpected

(dd <- data.frame (a = c(TRUE, FALSE), b = c(1, 123),
##       cc = c("a", "b"), stringsAsFactors = FALSE))
##       a   b c
## 1  TRUE   1 a
## 2 FALSE 123 b
apply (dd, 1, function (x) x)
##    [,1]    [,2]   
## a  " TRUE" "FALSE"
## b  "  1"   "123"  
## cc "a"     "b"  

sapply (mydf2, class)
##        alpha            b           NX alpha.plus.1 
##    "integer"    "logical"  "character"    "numeric" 

apply (dd, 1, function (x) any (x == 1))
## [1] FALSE FALSE
sapply (1:2, function (i) any (dd[i,] == 1))
## [1]  TRUE FALSE

age <- data.frame (Age = c(35, 37, 56, 24, 72, 65),
##  Spouse = c(34, 33, 49, 28, 70, 66),
##  Gender = c("F", "M", "F", "M", "F", "F"))
split (age$Age, age$Gender)
## $F
## [1] 35 56 72 65
## $M
## [1] 37 24
sapply (split (age$Age, age$Gender), mean)
##    F    M 
## 57.0 30.5 

split (age, age$Gender)
## $F
##   Age Spouse Gender
## 1  35     34      F
## 3  56     49      F
## 5  72     70      F
## 6  65     66      F
## $M
##   Age Spouse Gender
## 2  37     33      M
## 4  24     28      M
lapply (split (age, age$Gender), summary)
## $F
##       Age            Spouse      Gender
##  Min.   :35.00   Min.   :34.00   F:4   
##  1st Qu.:50.75   1st Qu.:45.25   M:0   
##  Median :60.50   Median :57.50         
##  Mean   :57.00   Mean   :54.75         
##  3rd Qu.:66.75   3rd Qu.:67.00         
##  Max.   :72.00   Max.   :70.00         
## $M
##       Age            Spouse      Gender
##  Min.   :24.00   Min.   :28.00   F:0   
##  1st Qu.:27.25   1st Qu.:29.25   M:2   
##  Median :30.50   Median :30.50         
##  Mean   :30.50   Mean   :30.50         
##  3rd Qu.:33.75   3rd Qu.:31.75         
##  Max.   :37.00   Max.   :33.00         

stPayment2016$JanDebt +  CustPayment2016$FebPurch -
##                            CustPayment2016$FebPmt

th (CustPayment2016, JanDebt + FebPurch - FebPmt)

## CustPayment2016$FebDebt <- with (CustPayment2016,
                   JanDebt + FebPurch - FebPmt)

## CustPayment2016 <- within (CustPayment2016,
                   FebDebt <- JanDebt + FebPurch - FebPmt)

cos (log (sqrt (8 - 3)))
## [1] 0.6933138

(8 - 3) %>% sqrt %>% log %>% cos
## [1] 0.6933138

(dvec <- as.Date (c(0, 17250:17252),
##                     origin = "1970-01-01"))
## [1] "1970-01-01" "2017-03-25" "2017-03-26" "2017-03-27"

as.Date (c("Feb 29, 2016", "Feb 29, 2017",
##              "September 30, 2017"), format = "%b %d, %Y")
## [1] "2016-02-29" NA           "2017-09-30"

sp.dates <- c("3 octubre 2016", "26 febrero 2017",
##                 "5 mayo 2017")
as.Date (sp.dates, format = "%d %B %y")
## [1] NA NA NA              
## # Not understood in English locale; use Spanish for now
Sys.setlocale ("LC_TIME", "Spanish")
## [1] "Spanish_Spain.1252"            # Setting was successful
(dts <- as.Date (sp.dates, format = "%d %B %Y"))
## [1] "2016-10-03" "2017-02-26" "2017-05-05"
Sys.setlocale ("LC_TIME", "USA")  # Change back
## [1] "English_United States.1252"    # Setting was successful
as.character (dts, "%d %B %Y")
## [1] "03 October 2016"  "26 February 2017" "05 May 2017"     

d1 <- as.Date ("2017-01-02")
d2 <- as.Date ("2017-06-15")
weekdays (c(d1, d2))
## [1] "Monday"   "Thursday"
months (c(d1, d2))
## [1] "January" "June"   
months (c(d1, d2), abbreviate=TRUE)
## [1] "Jan" "Jun"
quarters (c(d1, d2))
## [1] "Q1" "Q2"

format (c(d1, d2), "%Y")
## [1] "2017" "2017"
format (c(d1, d2), "%d")
## [1] "02" "15"
format (d1, "%A, %B %m, %Y")
## [1] "Monday, January 01, 2017"

## # Date objects are numeric; we can add and subtract them
d1 + 30 
## [1] "2017-07-02"
(d <- d2 - d1)
## Time difference of 13 days # an object of class difftime
as.numeric (d)           # convert to numeric, in days
## [1] 13
units (d)
## [1] "days" 
as.numeric (d, units = "weeks")
## [1] 1.857143

(start <- as.POSIXlt("2017-01-17 14:51:23"))
## [1] "2017-01-17 14:51:23 PST" # R has inferred time zone PST
unlist (start)
##    sec    min   hour   mday    mon   year   wday   yday
##   "23"   "51"   "14"   "17"    "0"  "117"    "2"   "16"
##  isdst   zone gmtoff 
##    "0"  "PST"     NA 

(ct1 <- as.POSIXct ("Mar 31, 2017 10:26:08 pm", 
##         format = "%b %d, %Y %I:%M:%S %p"))
## [1] "2017-03-31 22:26:08 PDT"
(ct2 <- as.POSIXct ("2017-04-01 05:26:08", tz = "UTC"))
## [1] "2017-04-01 05:26:08 UTC"
as.numeric (ct1 - ct2, units = "secs")
## [1] 0

c(ct1, ct2)
## [1] "2017-03-31 22:26:08 PDT" "2017-03-31 22:26:08 PDT"
weekdays (c(ct1, ct2))
## [1] "Friday" "Friday"
weekdays (ct2) # 
## [1] "Saturday"
weekdays (c(ct2))
## [1] "Friday"

(curdate <- date())
## [1] "Wed Sep 21 00:36:47 2016"
(now <- as.POSIXct (curdate,
##                       format = "%A %B %d %H:%M:%S %Y"))
## [1] "2016-09-21 00:36:47 PDT" # POSIXct object
as.Date (now)
## [1] "2016-09-21"

seq (as.Date ("2016-11-04"), by = 1, length = 4)
## [1] "2016-11-04" "2016-11-05" "2016-11-06" "2016-11-07"
## # Create and save a POSIXct object, for convenience
ourPos <- as.POSIXct ("2016-11-04 00:00:00")
seq (ourPos, by = 1, length = 3)
## [1] "2016-11-04 00:00:00 PDT" "2016-11-04 00:00:01 PDT"
## [3] "2016-11-04 00:00:02 PDT"
seq (ourPos, by = "day", length = 3)
## [1] "2016-11-04 PDT" "2016-11-05 PDT" "2016-11-06 PDT"
seq (ourPos, by = "day", length = 4)
## [1] "2016-11-04 00:00:00 PDT" "2016-11-05 00:00:00 PDT"
## [3] "2016-11-06 00:00:00 PDT" "2016-11-06 23:00:00 PST"
seq (ourPos, by = "DSTday", length = 4)
## [1] "2016-11-04 PDT" "2016-11-05 PDT" "2016-11-06 PDT"
## [4] "2016-11-07 PST"
seq (ourPos, by = "month", length = 4)
## [1] "2016-11-04 PDT" "2016-12-04 PST" "2017-01-04 PST"
## [4] "2017-02-04 PST"

d1 <- as.POSIXct ("2017-05-01 12:00:00")
d2 <- as.POSIXct ("2017-05-01 12:00:06") # d1 + 6 seconds
d3 <- as.POSIXct ("2017-05-07 12:00:00") # d1 + 6 days
(d2 - d1) == (d3 - d1)
## [1] FALSE # expected
as.numeric (d2 - d1) == as.numeric (d3 - d1)
## [1] TRUE # possibly unexpected

c(d1, NA)
## [1] "2017-05-01 12:00:00 PDT" NA      
c(NA, d1)
## [1]         NA 1493665200
c(as.POSIXct (NA), d1)
## [1] NA                        "2017-05-01 12:00:00 PDT"
c(NA, as.Date (d1))
## [1]    NA 17287

date.df <- data.frame (
##          Start = as.Date (c("2017-05-03", "2017-04-16")))
date.df$End <- as.Date (c("2018-06-01", "2018-02-16"))
date.df
##        Start        End
## 1 2017-05-03 2018-06-01
## 2 2017-04-16 2018-02-16
apply (date.df, 1, function (x) x[2] - x[1])
## Error in x[2] - x[1]: non-numeric arg. to binary operator

sapply (1:2, function (i)
##                    as.numeric (date.df[i,2] - date.df[i,1],
##                                units = "days"))
## [1] 394 306 

n1 <- names (df1)
n2 <- names (df2)
all (sort (n1) == sort (n2)) # should be TRUE

c1 <- sapply (df1, class)
c2 <- sapply (df2, class)
isTRUE (all.equal (c1, c2[names (c1)])) # should be TRUE

(df1 <- data.frame (Key = letters[1:3], Value = 1:3, 
##     stringsAsFactors = FALSE))
##   Key Value
## 1   a     1
## 2   b     2
## 3   c     3
(df2 <- data.frame (Key = c("a", "c", "f"),
##     Origin = 101:103, stringsAsFactors = FALSE))
##   Key Origin
## 1   a    101
## 2   c    102
## 3   f    103
merge (df1, df2, by = "Key")                 # inner join
##   Key Value Origin
## 1   a     1    101
## 2   c     3    102
merge (df1, df2, by = "Key", all.x = TRUE)   # left join
##   Key Value Origin
## 1   a     1    101
## 2   b     2     NA
## 3   c     3    102
merge (df1, df2, by = "Key", all.y = TRUE)   # right join
##   Key Value Origin
## 1   a     1    101
## 2   c     3    102
## 3   f    NA    103
merge (df1, df2, by = "Key", all.x = TRUE,
##                                all.y = TRUE)   # outer join
##   Key Value Origin
## 1   a     1    101
## 2   b     2     NA
## 3   c     3    102
## 4   f    NA    103

(df3 <- data.frame (Key = c("b", "b", "f", "f"),
##           Origin = 101:104, stringsAsFactors = FALSE))
##   Key Origin
## 1   b    101
## 2   b    102
## 3   f    103
## 4   f    104
merge (df1, df3, by = "Key", all.x = TRUE)
##   Key Value Origin
## 1   a     1     NA
## 2   b     2    101
## 3   b     2    102
## 4   c     3     NA



## Chapter 4 
## =====================
(planets <- c("Mercury", "Venus", NA, "Mars"))
## [1] "Mercury" "Venus"   NA        "Mars"   
length (planets) # Four elements
## [1] 4
nchar (planets) # Count characters
## [1]  7  5 NA  4

(quo <- 
##       "She wrote, \"To enter a 'new-line,' type \"\\n\".\"")
## [1] "She wrote, \"To enter a 'new-line,' type \"\\n\".\""
nchar (quo)
## [1] 47
cat (quo, "\n")
## She wrote, "To enter a 'new-line,' type "\n"." 

vec <- c (" ", " ", "", "   ", "", "2016", "",
##             " 2016", "2016", "   ")
table (vec)
## vec
##                    2016  2016 
##     3     2     2     1     2 
names (table (vec))
## [1] ""      " "     "   "   " 2016" "2016" 

new.month <- month.name
substring (new.month, nchar (new.month) - 1) <- "YZ"
new.month
##  [1] "JanuaYZ"   "FebruaYZ"  "MarYZ"     "AprYZ"    
##  [5] "MYZ"       "JuYZ"      "JuYZ"      "AuguYZ"   
##  [9] "SeptembYZ" "OctobYZ"   "NovembYZ"  "DecembYZ" 

## # Seven digits by default, decimals aligned
format (c(1.2, 1234.56789, 0))              
## [1] "   1.200" "1234.568" "   0.000"
## # Add comma separator
format (c(1.2, 1234.56789, 0), big.mark=",")
## [1] "    1.200" "1,234.568" "    0.000"
## # Currency style, blank zeros
format (c(1.2, 1234.56789, 0), digits = 6, nsmall=2, 
##           zero.print=F, width=2)
## [1] "   1.20" "1234.57" "       "

## costs <- c(1, 333, 555.55, 123456789.012)
## # Format as integers using %d
sprintf ("I spent $%d in %s", costs, month.name[1:4])
## [1] "I spent $1 in January"    "I spent $333 in February"   
## [3] "I spent $555 in March"    "I spent $123456789 in April"

## # Format as double-precision (%f) with default precision
sprintf ("I spent $%f in %s", costs, month.name[1:4]) 
## [1] "I spent $1.000000 in January"      
## [2] "I spent $333.000000 in February"   
## [3] "I spent $555.550000 in March"      
## [4] "I spent $123456789.012000 in April"
## # Format as currency, without specifying field width
sprintf ("I spent $%.2f in %s", costs, month.name[1:4])
## [1] "I spent $1.00 in January"      
## [2] "I spent $333.00 in February"   
## [3] "I spent $555.55 in March"      
## [4] "I spent $123456789.01 in April"

biggest <- max (nchar (sprintf ("%.2f", costs)))
sprintf ("I spent $%*.2f in %s", 
##             biggest, costs, month.name[1:4])
## [1] "I spent $        1.00 in January" 
## [2] "I spent $      333.00 in February"
## [3] "I spent $      555.55 in March"   
## [4] "I spent $123456789.01 in April"   

100000           # Big enough to start scientific notation
## [1] 1e+05
c(1, 100000)     # Both numbers get scientific notation
## [1] 1e+00 1e+05
c(1, 100000, 123456)     # R keeps precision here
## [1]      1 100000 123456
as.integer (10000000 + 1)
## [1] 10000001               # Integers are a little different

format (10000000)
## [1] "1e+07"            # scientific notation
format (100000000, scientific = FALSE)
## [1] "100000000"

vec <- c(5, 6, 2, 9, 1, 3, NA, 7)
as.character (cut (vec, c(1, 4, 7, 10)))
## [1] NA       "(4,7]"  "(4,7]"  "(1,4]"  "(7,10]" "(1,4]" 
## [7] NA       "(4,7]" 

set.seed (246)
vecN <- rnorm (100)
table (cut (vecN, breaks = 5))
##  (-3.18,-1.94] (-1.94,-0.709] (-0.709,0.522] 
##              2             21             52 
##   (0.522,1.75]    (1.75,2.99] 
##             20              5 

quantile (vecN)
##          0%         25%         50%         75%        100% 
## -3.17217563 -0.61809034 -0.06712505  0.45347704  2.98469969 
table (cut (vecN, quantile (vecN))) # lowest value omitted
##   (-3.17,-0.618] (-0.618,-0.0671]  (-0.0671,0.453] 
##               24               25               25 
##     (0.453,2.98] 
##               25 
table (cut (vecN, quantile (vecN), include.lowest = TRUE))
##   [-3.17,-0.618] (-0.618,-0.0671]  (-0.0671,0.453] 
##               25               25               25 
##     (0.453,2.98] 
##               25 

head (outer (month.abb, 2016:2018, paste, sep="."), 3)
##      [,1]       [,2]       [,3]      
## [1,] "Jan.2016" "Jan.2017" "Jan.2018"
## [2,] "Feb.2016" "Feb.2017" "Feb.2018"
## [3,] "Mar.2016" "Mar.2017" "Mar.2018"

myout <- outer (month.abb, 2016:2018, paste, sep=".")
paste0 ("Bal.", myout)[1:3]
## [1] "Bal.Jan.2016" "Bal.Feb.2016" "Bal.Mar.2016"

newnames <- c("ID", paste0 ("Bal.", myout),
                    paste0 ("Pay.", myout))

# 2 values x 12 months x 3 years
part1 <- rep (c("Bal", "Pay"), 12 * 3)
 # Double each month, repeat x 3
part2 <- rep (rep (month.abb, each=2), 3)
part3 <- rep (2016:2018, each = 24)
newnames <- c("ID", paste (part1, part2, part3, sep="."))

set.seed (2016)
dts <- as.Date (sample (0:730, size = 600),
##                   origin = "2015-01-01")
table (quarters (dts)) # Shows calendar quarter
##  Q1  Q2  Q3  Q4 
## 134 153 151 162 

table (paste0 (substring (dts, 1, 4), ".",
##                  quarters (dts)))
## 2015.Q1 2015.Q2 2015.Q3 2015.Q4 2016.Q1 2016.Q2 2016.Q3 
##      72      71      75      81      62      82      76 
## 2016.Q4 
##      81 

(mtbl <- table (format (dts, "%Y.%B")))
##     2015.April    2015.August  2015.December ...
##             24             23             24 ...

(month.order <- paste0 (2015:2016, ".", month.name))
##  [1] "2015.January"   "2016.February"  "2015.March" ...
mtbl[month.order]
##   2015.January  2016.February     2015.March ...
##             24             21             27 ...

grep ("C", state.name)
## [1]  5  6  7 33 40
grep ("C", state.name, value = TRUE)
## [1] "California"     "Colorado"       "Connecticut"   
## [4] "North Carolina" "South Carolina"
grep ("^C", state.name, value = TRUE)
## [1] "California"  "Colorado"    "Connecticut"

sen <- c("US Senate", "Send", "Arsenic", "sent", "worsen")
grep ("Sen", sen)             # which elements have "Sen"?
## [1] 1 2
grep ("Sen", sen, value = TRUE)     # elements with "Sen"
## [1] "US Senate" "Send" 
grep ("[sS]en", sen, value = TRUE)  #  either case "S"
## [1] "US Senate" "Send"      "Arsenic"   "sent"      "worsen"
grep ("sen", sen, value = TRUE,     # upper or lower-case
##         ignore.case = T)
## [1] "US Senate" "Send"      "Arsenic"   "sent"      "worsen"
grep ("^[sS]en", sen, value = T)    # start "Sen" or "sen"
## [1] "Send" "sent"   
grep ("sen$", sen, value = T)       # end with "sen"
## [1] "worsen"

reno <- c("Reno", "Reno, NV 895116622", "Reno 911", 
##             "Reno Nevada 89507")
grep ("Reno.+[0-9]{5}", reno, value = TRUE)
## [1] "Reno, NV 895116622" "Reno Nevada 89507" 

dt <- c("Balance due 16 Jun or earlier in 2017", 
##      "26 Aug or any day in 3018",
##      "'76 Trombones' marched in a 1962 film", 
##      "4 Apr 2018", "9Aug2006",
##      "99 Voters May Register in 20188")

(mo <- paste (month.abb, collapse="|"))
## [1] "Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec"
re <- paste0 (".*[0-3]?[0-9].*(", mo, ").*[1-2][0-9]{3}")
grep (re, dt, value = TRUE)
## [1] "Balance due 13 Jun or earlier in 2017"
## [2] "26 Aug or any day in 2018"            
## [3] "9Aug2006"                             
## [4] "99 Voters May Register in 20188"        

vec <- c("c:\\temp", "/bin/u", "$5", "\n", "2 back: \\\\")
grep ("$", vec)            # Indices of elements with ends
## [1] 1 2 3 4 5
grep ("\$", vec, value = TRUE)
## Error: '\$' is an unrecognized escape...
grep ("\\$", vec, value = TRUE)
## [1] "$5" 

grep ("\\", vec)
## Error in grep("\\", vec) : 
##  invalid regular expression '\', reason 'Trailing backslash'
grep ("\\\\", vec, value = TRUE)         # elements with \
## [1] "c:\\temp"     "2 back: \\\\"
grep ("\\\\\\\\", vec, value = TRUE)     # two backslashes
## [1] "2 back: \\\\"

grep ("\\", vec, value = TRUE, fixed = TRUE)       # one \
## [1] "c:\\temp"     "2 back: \\\\"
grep ("\\\\", vec, value = TRUE, fixed = TRUE)     # two \
## [1] "2 back: \\\\"

grep ("\\\\|/", vec, value = TRUE)
## [1] "c:\\temp"     "/bin/u"     "2 back: \\\\"
grep ("\\|/", vec, value = TRUE, fixed = TRUE)
## character(0)

vec <- c("1234", "6", "99 Balloons", "Catch 22", "Mannix")
grep ("[[:upper:]]", vec, value = TRUE)   # any upper-case
## [1] "99 Balloons" "Catch 22"    "Mannix"   
grep ("[^[:upper:]]", vec, value = TRUE)  # any non-upper
## [1] "1234"        "6"           "99 Balloons" "Catch 22"   
## [5] "Mannix" 
grep ("^[^[:upper:]]+$", vec, value = TRUE) # no upper
## [1] "1234" "6"   

grep ("^[^[:digit:]]+$", vec, value = TRUE) # long way
## [1] "Mannix"
grep ("^\\D*$", vec, value = TRUE)          # shorter
## [1] "Mannix"

(newvec <- grep ("\\<\\d{4}\\>", dt, value = TRUE))
## [1] "Balance due 16 Jun or earlier in 2017"
## [2] "26 Aug or any day in 3018"            
## [3] "'76 Trombones' marched in a 1962 film"
## [4] "4 Apr 2018" 
grep (mo, newvec, value = TRUE)
## [1] "Balance due 16 Jun or earlier in 2017"
## [2] "26 Aug or any day in 3018"            
## [3] "4 Apr 2018"    

(regout <- regexpr ("\\<\\d+\\>", dt))
## [1] 13  1  2  1 -1  1
## attr(,"match.length")
## [1]  2  2  2  1 -1  2
## attr(,"useBytes")
## [1] TRUE

regmatches (dt, regout)
## [1] "13" "26" "76" "4"  "99"

## # Note that some output from this command is suppressed
(gout <- gregexpr ("\\<\\d+\\>", dt)) 
## [[1]]
## [1] 13 34
## attr(,"match.length")
## [1] 2 4
## ...
## [[2]]
## [1]  1 22
## attr(,"match.length")
## [1] 2 4
## ...
## [[6]]
## [1]  1 27
## attr(,"match.length")
## [1] 2 5
## ...
regmatches (dt, gout)
## [[1]]
## [1] "13"   "2017"
## [[2]]
## [1] "26"   "2018"
## [[3]]
## [1] "76"   "1962"
## [[4]]
## [1] "4"    "3018"
## [[5]]
## character(0)
## [[6]]
## [1] "99"    "20188"
matrix (as.numeric (unlist (regmatches (dt, gout))),
##           ncol = 2, byrow = TRUE)
##      [,1]  [,2]
## [1,]   13  2017
## [2,]   26  2018
## [3,]   76  1962
## [4,]    4  3018
## [5,]   99 20188

(mytxt <- c("This is", "what I write.",
##               "Is it good?", "I'm not sure."))
## [1] "This is" "what I write." "Is it good?" "I'm not sure."
sub("i", "9", mytxt)       # replace first i with 9
## [1] "Th9s is" "what I wr9te." "Is 9t good?" "I'm not sure."
sub("[iI]", "9", mytxt)    # replace first (i or I) with 9
## [1] "Th9s is" "what 9 write." "9s it good?" "9'm not sure."
gsub("[iI]", "9", mytxt)   # replace all (i or I) with 9
## [1] "Th9s 9s" "what 9 wr9te." "9s 9t good?" "9'm not sure."

folks <- c("Norman Bethune", "Ralph Bunche",
##                  "Lech Walesa", "Nelson Mandela")
sub ("([[:alpha:]]+) ([[:alpha:]]+)", "\\2, \\1", folks)
## [1] "Bethune, Norman" "Bunche, Ralph"   "Walesa, Lech"   
## [4] "Mandela, Nelson"

keys <- c("CA-2017-04-02-66J-44", "MI-2017-07-17-41H-72",
##             "CA-2017-08-24-Missing-378")
(key.list <- strsplit (keys, "-"))
## [[1]]
## [1] "CA"   "2017" "04"   "02"   "66J"  "44"  
## [[2]]
## [1] "MI"   "2017" "07"   "17"   "41H"  "72"  
## [[3]]
## [1] "CA"      "2017"    "08"      "24"      "Missing" "378" 

matrix (unlist (key.list), ncol = 6, byrow = TRUE)
##      [,1] [,2]   [,3] [,4] [,5]      [,6] 
## [1,] "CA" "2017" "04" "02" "66J"     "44" 
## [2,] "MI" "2017" "07" "17" "41H"     "72" 
## [3,] "CA" "2017" "08" "24" "Missing" "378"

gsub ("^ *| *$", "", c("  Both Kinds ", "Trailing   ", 
##                          "Neither",  "     Leading"))
## [1] "Both Kinds" "Trailing"    "Neither"    "Leading"   

as.numeric (gsub ("\\$|,", "", "$12,345.67"))
## [1] 12345.67

as.numeric (gsub ("^[^0-9.]|,", "", "$12,345.67"))
## [1] 12345.67
as.numeric (gsub ("^[^[:digit:]]|,", "", "$12,345.67"))
## [1] 12345.67 

"\U4e2d\U56fd"

nchar ("\U4e2d\U56fd")
## [1] 2                   # Two characters...
nchar ("\U4e2d\U56fd", type = "bytes")
## [1] 6                   # ...requiring six bytes in UTF-8

(yogi <-  "It's d\xe9j\xe0 vu all over again.")
## [1] "It's déjà vu all over again."
Encoding (yogi)
## [1] "latin1"
c(regexpr ("\xe0", yogi), regexpr ("\ue0", yogi),
##     regexpr ("à", yogi))
## [1] 9 9 9

(bob <- "bob owes me \x80123")
## [1] "bob owes me €123"
Encoding (bob)
## [1] "latin1"
(euro <- "\U20ac")                 # Assign Unicode Euro
## [1] "€"
Encoding (euro)
## [1] "UTF-8"
grepl (euro, bob)                  # Is it there?
## [1] FALSE
(bob <- iconv (bob, to = "UTF-8")) # Convert to UTF-8
## [1] "bob owes me €123"
grepl (euro, bob)                  # Is it there?
## [1] TRUE

data.frame (a = "\U4e2d\U56fd", stringsAsFactors = FALSE)
##                  a
## 1 <U+4E2D><U+56FD>

data.frame (a = "\U4e2d\U56fd",
##               stringsAsFactors = FALSE)[1,1]

(cols  <- factor (c("red", "yellow", "green", "red",
##                       "green", "red", "red")))
## [1] red    yellow green  red    green  red    red   
## Levels: green red yellow
table (cols)
##  green    red yellow 
##      2      4      1 

cols[cols != "green"]
## [1] red    yellow red    red    red   
## Levels: green red yellow
table (cols[cols != "green"])
##  green    red yellow 
##      0      4      1 

cols2 <- cols
cols2[2] <- "amber"
## Warning message:
## In `[<-.factor`(`*tmp*`, 2, value = "amber") :
##   invalid factor level, NA generated
cols2
## [1] red   <NA>  green red   green red   red  
## Levels: green red yellow

levels(cols)
## [1] "green"  "red"    "yellow"
levels(cols)[3] <- "amber"
cols
## [1] red   amber green red   green red   red  
## Levels: green red amber

levels(cols)
## [1] "green" "red"   "amber"
factor (cols, levels = c("red", "amber", "green"))
## [1] red   amber green red   green red   red  
## Levels: red amber green

(bad.idea <- cols)
## [1] red   amber green red   green red   red  
## Levels: green red amber
levels(bad.idea) <- c("red", "amber", "green")
bad.idea
## [1] amber green red   amber red   amber amber
## Levels: red amber green

## ....5...10....5...10....5...10....5...10....5...10....5...60
wanted <- factor (c(2, 6, 15, 44, "Missing"))    # indices
src <- 101:200                    # vector to extract from
as.numeric (wanted)               # ...but this happens
## [1] 2 4 1 3 5
src[wanted]
## [1] 102 104 101 103 105

src[as.numeric (as.character (wanted))]
## [1] 102 106 115 144  NA
## Warning message:
## NAs introduced by coercion 

(f <- factor (c("b", "a", "NA", "b", NA, "a", "c",
##                   "b", NA, "<NA>")))
##  [1] b    a    NA   b    <NA> a    c    b    <NA> <NA>
## Levels: <NA> a b c NA # alphabetized by default
table (f, exclude=NULL)
## <NA>    a    b    c   NA <NA> 
##    1    2    3    1    1    2 
## levels (f)
## [1] "<NA>" "a"    "b"    "c"    "NA"  

(f <- factor (c("b", "a", NA, "b", "b", NA, "c", "a")))
## [1] b    a    <NA> b    b    <NA> c    a   
## Levels: a b c
f <- as.character(f)                # Convert to character
f[is.na (f)] <- "Missing"           # Replace missings
(f <- factor (f))                   # Re-factorize
## [1] b      a       Missing b       b       Missing c       a
## Levels: a b c Missing

for (i in 1:26)
##        assign (paste0 (LETTERS[i], LETTERS[i]), i, pos = 1)
get ("WW")               # Example
## [1] 23
## # Remove the 26 new objects from the workspace
remove (list = grep ("^[A-Z]{2}$", ls (), value = T))

nm <- paste0 ("p", sprintf ("%03d", 1:100))   # Object names
res <- paste0 ("res", sprintf ("%03d", 1:100))# Result names
for (i in nm) {                               # Begin loop
    result <- report (get (i))                # Run function
    assign (res[i], result, pos=1)
}

num <- sprintf ("%03d", 1:100)       # 001, 002, etc.
pnm <- paste0 ("p", num) 
qnm <- paste0 ("q", num)
rnm <- paste0 ("res", num)
cmd <- paste0 (rnm, " <- report (", pnm, ", ", qnm, ")")
cmd[45]                              # as an example
## [1] "res045 <- report (p045, q045)"

inp <- "<U+4E2D><U+56FD>"             # ASCII (not UTF-8)
(out <- gsub (">", "", inp))          # remove > chars
## [1] "<U+4E2D<U+56FD"
(out <- gsub ("<U\\+", "\\\\U", out)) # change <U+ to \U
## [1] "\\U4E2D\\U56FD"
(out <- paste0 ("\"", out, "\""))     # add quotes
## [1] "\"\\U4E2D\\U56FD\""
eval (parse (text = out))



## Chapter 5 
## =====================
funk <- function (x, y = 2) {
Example function to compute sqrt (x) + y
## # Arguments: x, numeric;
## #            y, numeric
##     if (x < 0) {
##         warning ("Negative number cannot be funk-i-fied")
##         return (NA)
##     }
  return (sqrt(x) + y)
## }
funk (x = 9, y = 3)          # run with x = 9, y = 3
## [1] 6

table (c(1, 1, 2, 3, 1, NA, 2, 1), use="always")
## Error in table(c(1, 1, 2, 3, 1, NA, 2, 1), use = "always") :
##   all arguments must have the same length
table (c(1, 1, 2, 3, 1, NA, 2, 1), useNA="always")
##    1    2    3 <NA> 
##    4    2    1    1 

args (table)
## function (..., exclude = if (useNA == "no") c(NA, NaN),
##           useNA = c("no", "ifany", "always"),
##           dnn = list.names(...), deparse.level = 1) 
## NULL

(newdf <- data.frame (a = c(1, 2.345)))
##       a
## 1 1.000
## 2 2.345
print.data.frame (newdf, digits=2)
##     a
## 1 1.0
## 2 2.3
print.data.frame (newdf, digit=2)
##       a
## 1 1.000
## 2 2.345

print.data.frame (newdf, NOTANARGUMENT = 1)
##       a
## 1 1.000
## 2 2.345
log (newdf)                        # this is valid, but...
##           a
## 1 0.0000000
## 2 0.8522854
log (newdf, NOTANARGUMENT = 1)           # ...this is not.
## Error in log(newdf, NOTANARGUMENT = 1) : 
##   unused argument (NOTANARGUMENT = 1)

myplot <- function (x, y, ...) {
# Do stuff here
    plot (x, y, ...) # Call plot()
}

myplot <- function (x, y, ...) {
##     mylist <- list (...) # grab extra arguments
##     plot (x, y, ...) # Call plot()
##     if (any (names (mylist) == "xlab"))
##         cat ("xlab was supplied as ", mylist$xlab, "\n")
##   }
myplot (1:5, 1:5, xlab = "Plot of x vs y")
## xlab was supplied as  Plot of x vs y 

myplot <- function (x, y, ...) {
    mylist <- list (...) # grab extra arguments
    if (any (names (mylist) == "xlab"))
        mylist$xlab <- casefold (mylist$xlab, upper = TRUE)
    mylist$x <- x; mylist$y <- y
    do.call (plot, mylist)
}

new <- function (a = 5) {
  a <- a + 1
##     cat ("a is now", a, "\n")
##     return (a)
##   }
a <- 11
new (a)
## a is now 12 
## [1] 12
a
## [1] 11 

function () 
{
}

Error in .External2(C_edit, name, file, title, editor) : 
  unexpected symbol occurred on line 3
 use a command like
 x <- edit()
 to recover

## if (i > 100)
  x <- x + 200
## else
##     x <- x - 200

## if (i > 100) {
  x <- x + 200
## } else {
##     x <- x - 200
## }

cat ("A: Start setup, i is", i, " dim (X):", dim (X), "\n")
cat ("B: Top of loop, xcount is", xcount, "\n")
cat ("C: End loop, result[1:3] is", result[1:3], "\n")

a <- function (arg1) {
    if (missing (arg1)) stop ("Missing argument in a!")
    return (arg1^2)
}

Compute input + a (offset)
b <- function (input = 9, offset) {
##     a.result <- a (offset)
  return (input + a.result) 
##   }
b ()
## Error in a(offset) : Missing argument in a!

traceback ()
## 3: stop("Missing argument in a!") at #2
## 2: a(offset) at #3
## 1: b()

b <- function (input = 9, offset) {
##     a.check <- try (a.result <- a (offset))
##     if (class (a.check)[1] == "try-error") {
##         warning ("Call to a() failed; setting a.result = 3")
##         a.result <- 3
##     }
  return (input + a.result)
## }
b ()
## Error in a(offset) : Missing argument!
## [1] 12
## Warning message:
## In b() : Call to a() failed; setting a.result to 3

dumb <- function (n = 100) {
##     for (i in 1:n) {}
##   }
system.time (dumb (6e8))
##    user  system elapsed 
##   33.48    0.23   33.71 

dc <- cmpfun (dumb)
system.time (dc (6e8))
##    user  system elapsed 
##    7.33    0.00    7.34 

detectCores () # after library (parallel)
## [1] 32
clust <- makeCluster (24)
clusterExport (clust, c("dumb", "dc"))
system.time (
##         parSapply (clust, 1:24, function (i) dumb (6e8/24)))
##    user  system elapsed 
##    0.00    0.00    2.29 
system.time (
##         parSapply (clust, 1:24, function (i) dc (6e8/24)))
##    user  system elapsed 
##    0.00    0.00    0.67 



## Chapter 6 
## =====================
ID,LastName,Address,City,State
001,O'Higgins,48 Grant Rd.,Des Moines,IA
011,Macina,401 1st Ave., Apt 13G,New York,NY
242,Roeder,71 Quebec Ave.,E. Thetford,VT
146,Stephens,1234 Smythe St., #5,Detroit,MI
241,Ishikawa,986 OceanView Dr.,Pacific Grove,CA

read.table ("addresses.csv", header = TRUE, sep = ",",
##     quote = "", comment.char = "", stringsAsFactors = FALSE)
## Error in scan(file = file, what = what, sep = sep, ...
##   line 1 did not have 6 elements

read.table ("addresses.csv", header = FALSE, sep = ",",
##     quote = "", comment.char = "", stringsAsFactors = FALSE,
##     nrows = 1)
##   V1       V2      V3   V4    V5
## 1 ID LastName Address City State

count.fields ("addresses.csv", sep = ",", quote = "",
##                 comment.char = "")
## [1] 5 5 6 5 6 5

 read.table ("addresses.csv", header = FALSE, sep = ",",
##     quote = "", comment.char = "", stringsAsFactors = FALSE,
##     nrows = 1, skip = 2)
##   V1     V2           V3       V4       V5 V6
## 1 11 Macina 401 1st Ave.  Apt 13G New York NY

(add <- read.table ("addresses.csv", header = TRUE,
##                      sep = ",", quote = "", comment = "",
##                      stringsAsFactors = FALSE, fill = TRUE))
##       
##            ID          LastName       Address     City State
## 001 O'Higgins      48 Grant Rd.    Des Moines       IA      
## 011    Macina      401 1st Ave.       Apt 13G New York    NY
## 242    Roeder    71 Quebec Ave.   E. Thetford       VT      
## 146  Stephens   1234 Smythe St.            #5  Detroit    MI
## 241  Ishikawa 986 OceanView Dr. Pacific Grove       CA  

fixers <- add$State != ""
add[fixers, 2] <- paste (add[fixers,2], add[fixers,3])
add[fixers, 3:4] <- add[fixers, 4:5]
add
##            ID              LastName       Address City State
## 001 O'Higgins          48 Grant Rd.    Des Moines   IA      
## 011    Macina 401 1st Ave.  Apt 13G      New York   NY    NY
## 242    Roeder        71 Quebec Ave.   E. Thetford   VT      
## 146  Stephens   1234 Smythe St.  #5       Detroit   MI    MI
## 241  Ishikawa     986 OceanView Dr. Pacific Grove   CA      

## # Save column names, then remove last column
mycolnames <- colnames (add)
add$State <- NULL
## # Insert the ID column
add <- data.frame (ID = rownames (add), add)
colnames (add) <- mycolnames     # now assign column names
rownames (add) <- NULL           # replace old row names
rm (fixers, mycolnames)          # clean up!

(addscan <- scan ("addresses.csv", what = "", sep = "\n",
##                     quote = "", comment.char = ""))
## Read 6 items
## [1] "ID,LastName,Address,City,State"                 
## [2] "001,O'Higgins,48 Grant Rd.,Des Moines,IA"       
## [3] "011,Macina,401 1st Ave., Apt 13G,New York,NY"   
## [4] "242,Roeder,71 Quebec Ave.,E. Thetford,VT"       
## [5] "146,Stephens,1234 Smythe St., #5,Detroit,MI"    
## [6] "241,Ishikawa,986 OceanView Dr.,Pacific Grove,CA"

commas <- gregexpr (",", addscan)     # locate all commas
length.5 <- lengths(commas) == 5      # identify long rows
comma.be.gone <- sapply (commas[length.5],
##                            function (x) x[3])

substring (addscan[length.5], comma.be.gone,
##              comma.be.gone) <- ";"
addscan
## [1] "ID,LastName,Address,City,State"                 
## [2] "001,O'Higgins,48 Grant Rd.,Des Moines,IA"       
## [3] "011,Macina,401 1st Ave.; Apt 13G,New York,NY"   
## [4] "242,Roeder,71 Quebec Ave.,E. Thetford,VT"       
## [5] "146,Stephens,1234 Smythe St.; #5,Detroit,MI"    
## [6] "241,Ishikawa,986 OceanView Dr.,Pacific Grove,CA"

read.table (text = addscan, header = TRUE, sep = ",",
##          quote = "", comment = "", stringsAsFactors = FALSE)
##    ID  LastName               Address          City State
## 1   1 O'Higgins          48 Grant Rd.    Des Moines    IA
## 2  11    Macina 401 1st Ave.; Apt 13G      New York    NY
## 3 242    Roeder        71 Quebec Ave.   E. Thetford    VT
## 4 146  Stephens   1234 Smythe St.; #5       Detroit    MI
## 5 241  Ishikawa     986 OceanView Dr. Pacific Grove    CA

readLines ("addresses.csv", n = 1)
## [1] "ID,LastName,Address,City,State"
readLines ("addresses.csv", n = 1)
## [1] "ID,LastName,Address,City,State"

con <- file ("addresses.csv", open = "r")
readLines (con, n = 2)
## [1] "ID,LastName,Address,City,State"          
## [2] "001,O'Higgins,48 Grant Rd.,Des Moines,IA"
readLines (con, n = 2)
## [1] "011,Macina,401 1st Ave., Apt 13G,New York,NY"
## [2] "242,Roeder,71 Quebec Ave.,E. Thetford,VT"    
close (con)

thg <- c("001Jenkins   MI\n", "002O'FlahertyIA\n",
##            "003Lee       HI\n")

(second.bytes <- charToRaw (thg[2]))
##  [1] 30 30 32 4f 27 46 6c 61 68 65 72 74 79 49 41 0a
second.bytes[5] <- as.raw (0x00)
second.bytes
##  [1] 30 30 32 4f 00 46 6c 61 68 65 72 74 79 49 41 0a
##  > rawToChar (second.bytes)
## Error in rawToChar(second.bytes) : 
##   embedded nul in string: '002O\0FlahertyIA\n'

con <- file ("nully.txt", "wb")
writeBin (charToRaw (thg[1]), con)
writeBin (second.bytes, con)
writeBin (charToRaw (thg[3]), con)
close (con)

read.fwf ("nully.txt", c(3, 10, 2))
##   V1         V2   V3
## 1  1 Jenkins      MI
## 2  2          O <NA>
## 3  3 Lee          HI
## Warning message:
## In readLines(file, n = thisblock) :
##   line 2 appears to contain an embedded nul

scan ("nully.txt", what="", sep="\n", skipNul = TRUE)
## Read 3 items
## [1] "001Jenkins   MI"
## [2] "002OFlahertyIA" 
## [3] "003Lee       HI"

con <- file ("nully.txt", "rb")
lns <- readBin (con, what="raw", n = 48)
lns[lns == as.raw (0x00)] <- as.raw (0x20)
rawToChar (lns)
## [1] "001Jenkins   MI\n002O FlahertyIA\n003Lee       HI\n"
(lns <- strsplit (rawToChar (lns), "\n")[[1]])
## [1] "001Jenkins   MI"
## [2] "002O FlahertyIA"
## [3] "003Lee       HI"

start <- c(1, 4, 14)
end <- c(3, 13, 15)
sapply (1:3, 
##           function (i) substring (lns, start[i], end[i]))
##      [,1]  [,2]         [,3]
## [1,] "001" "Jenkins   " "MI"
## [2,] "002" "O Flaherty" "IA"
## [3,] "003" "Lee       " "HI"

function (xml.in, xml.out, chunk = 10000) 
{
 # Open input file as read only, binary
fi <- file (xml.in,  open = "rb")
 # Open output file for write only, text
fo <- file (xml.out, open = "wt")
on.exit (close (fi))
on.exit (close (fo), add = TRUE)

while (1) {                             # loop until "break"
# Read text. If none is returned, the file is empty.
    txt.raw <- readBin (fi, "raw", n = chunk) # the maximum
    if (length (txt.raw) == 0) break
# Replace those are 0x00 or >= 0x80 with 0x20 (space)
    txt.raw[txt.raw == as.raw (0x00) |
            txt.raw >= as.raw (0x80)]  <- as.raw (0x20)
    txt <- rawToChar (txt.raw)

# Replace </ROW> with </ROW>\n wherever the former appears
    txt <- gsub ("</ROW>", "</ROW>\n", txt)
# Write output. If txt is short, input is exhausted; quit.
    writeChar (txt, fo, eos=NULL) 
    if (nchar (txt.raw) < chunk) break
} # end "while" 
}

han <- odbcConnect (dsn = "source", uid = "us", pwd = "abc")
sqlTables (han) # list all table names

acc <- sqlQuery (han, "SELECT * FROM accounts")

recent <- sqlQuery (han, "SELECT accno, accyear, accamt
                    FROM accounts WHERE accyear >= 2016",
                    stringsAsFactors = FALSE)

matchers <- sqlQuery (han, "SELECT * FROM accounts, payment 
    WHERE accounts.accno = payment.acct")

matchers <- sqlQuery (han, "SELECT * FROM accounts
        LEFT JOIN payment ON accounts.accno = payment.acct")

fi <- unz ("2016.Jan/Alameda.zip", "Alameda.csv", "r")
out <- read.delim (fi)

zips <- list.files (pattern = "\\.zip$",
                    recursive = TRUE, full.names = FALSE)
csvs <- sub ("\\.zip$", "\\.csv", zips)

fullzips <- list.files (pattern = "\\.zip$",
                        recursive = TRUE, full.names = TRUE)
year <- substring (fullzips, 3, 6)
mon <- substring (fullzips, 8, 10)

result <- NULL # empty object
for (i in 1:length (zips)) {
    fi <- unz (fullzips[i], csvs[i], "r")
    out <- data.frame (Year = year[i], Month = month[i], 
                  read.delim (fi, stringsAsFactors = FALSE))
    result <- rbind (result, out)
}

<html>
<table><tr><th>Name</th><th>Amount</th></tr>
<tr><td>Dylan</td><td>116.34</td></tr>
<tr><td>Garcia</td><td>953.21</td></tr>
</table></html>

<?xml version="1.0" encoding="UTF-8"?>
<Fields>
<Client><Name>Dylan</Name><Amt>116.34</Amt></Client>
<Client><Name>Garcia</Name><Amt>953.21</Amt></Client>
</Fields>

xx <- xmlTreeParse (file = "example1.xml")
xmlValue(xx$doc$children[["Fields"]][[1]][["Amt"]])
## [1] "116.34"

yy <- xmlParse (file = "example1.xml")
xpathSApply (yy, "//Amt")
## [[1]]
## <Amt>116.34</Amt> 
## [[2]]
## <Amt>953.21</Amt> 

sapply (xpathSApply (yy, "//Amt"), xmlValue)
## [1] "116.34" "953.21"

grou.tree <- htmlTreeParse (groucho,  useInternal = TRUE)
unlist (xpathSApply (grou.tree, "//p",  xmlValue))
##  [1] "Julius Henry Marx (October 2, 1890 - August 19, ...
##  [2] "He made 13 feature films with his siblings the ... 
##  [3] "His distinctive appearance, carried over from ...
##   : : : 

zz
## [1] "{\"Name\":\"Dylan\",\"Amt\":\"116.34\"}"
## [2] "{\"Name\":\"Garcia\",\"Amt\":\"953.21\"}"

sapply (zz, fromJSON, USE.NAMES = FALSE)
##      [,1]     [,2]    
## Name "Dylan"  "Garcia"
## Amt  "116.34" "953.21"

url <-  paste0 ("https://api.census.gov/data/timeseries/",
##                  "intltrade/exports/enduse")
## # For GET(), enclose API arguments via "query" as a list
cens <- GET (url, query = list (
##               get = "E_ENDUSE,E_ENDUSE_LDESC,ALL_VAL_YR",
##               YEAR = "2016", MONTH = "04"))

do.call (rbind, content (cens))[1:4,]
##      [,1]       [,2]                                 
## [1,] "E_ENDUSE" "E_ENDUSE_LDESC"                     
## [2,] ""         "TOTAL EXPORTS FOR ALL END-USE CODES"
## [3,] "0"        "FOODS, FEEDS, AND BEVERAGES"        
## [4,] "00000"    "WHEAT"                              
##      [,3]           [,4]   [,5]   
## [1,] "ALL_VAL_YR"   "YEAR" "MONTH"
## [2,] "465400958493" "2016" "04"   
## [3,] "38996430386"  "2016" "04"   
## [4,] "1606226019"   "2016" "04"   



## Chapter 7 
## =====================
# Values at right show expected output from each command
length (unique (c (ncol (NYC), ncol (ATL), ncol (PHX)))  # 1
all (sort (names (NYC)) == all (sort (names (ATL)))   # TRUE
all (sort (names (NYC)) == all (sort (names (PHX)))   # TRUE

all.equal (sapply (NYC, class),
           sapply (ATL, class)[names (NYC)]) # TRUE
all.equal (sapply (NYC, class),
           sapply (PHX, class)[names (NYC)]) # TRUE

cats <- names (NYC)[sapply (NYC, class) == "character" || 
                    sapply (NYC, class) == "factor"]
levs.nyc <- lapply (NYC[,cats],
            function (x) unique (sort (as.character (x))))
levs.atl <- lapply (ATL[,cats],
            function (x) unique (sort (as.character (x))))
levs.phx <- lapply (PHX[,cats],
            function (x) unique (sort (as.character (x))))
all.equal (levs.nyc, levs.atl) &&
           all.equal (levs.nyc, levs.phx) # TRUE

NYC$Source <- "NYC"
ATL$Source <- "ATL"
PHX$Source <- "PHX"
big <- rbind (NYC, ATL, PHX, stringsAsFactors = FALSE)

survey
##   ID       Date Response
## 1 AA 2012-09-26        3
## 2 AA 2014-01-16        4
## 3 CC 2013-03-13        3
## 4 CC 2014-04-30        5
## 5 CC 2015-03-31        4
## 6 DD 2013-06-03        2
## 7 EE 2013-12-02        4

(rle.out <- rle (survey$ID))
## Run Length Encoding
##   lengths: int [1:4] 2 3 1 1
##   values : chr [1:4] "AA" "CC" "DD" "EE"

diff1 <- function (i) {
##       recs <- survey[start[i]:end[i],]
##       if (any (diff (recs$Response) == 1)) TRUE else FALSE
## }
sapply (1:length (start), diff1)
## [1]  TRUE FALSE FALSE FALSE

deploy
##   ID      Start        End
## 1 AA 2014-05-05 2014-11-08
## 2 BB 2012-10-15 2013-07-19
## 3 CC 2013-08-16 2014-04-03
## 4 CC 2015-11-01 2015-05-17
## 5 EE 2013-02-20 2013-05-18

deploy.unique.ID <- unique (deploy$ID)
datemat <- matrix ("", nrow = length (deploy.unique.ID),
##                 ncol = max (rle.out$lengths))

surv.short <- survey[is.element (survey$ID, deploy$ID),]
rle.out <- rle (surv.short$ID)

surv.lens <- sapply (rle.out$length, function (i) 1:i)
(col.surveys <- unlist (surv.lens))
## [1] 1 2 1 2 3 1

(row.surveys <- match (surv.short$ID, deploy.unique.ID))
## [1] 1 1 3 3 3 4
(mat.subset <- cbind (row.surveys, col.surveys))
##      row.surveys col.surveys
## [1,]           1           1
## [2,]           1           2
## [3,]           3           1
## [4,]           3           2
## [5,]           3           3
## [6,]           4           1

datemat[mat.subset] <- as.character (surv.short$Date)
date.df <- data.frame (ID = deploy.unique.ID, datemat,
##         stringsAsFactors = FALSE)
(dd <- merge (deploy, date.df, by = "ID"))
##   ID      Start        End         X1         X2         X3
## 1 AA 2014-05-05 2014-11-08 2012-09-26 2014-01-16           
## 2 BB 2012-10-15 2013-07-19                                 
## 3 CC 2013-08-16 2014-04-03 2013-03-13 2014-04-30 2015-03-31
## 4 CC 2015-11-01 2015-05-17 2013-03-13 2014-04-30 2015-03-31
## 5 EE 2013-02-20 2013-05-18 2013-12-02                      

bracket <- function (i) {
##     dat <- dd[i,]                        # extract ith row
##     dts <- dat[,4:6]                     # grab dates and...
##     dts <- dts[dts != ""]                # omit empties
##     left <- max (-Inf, dts[dts < as.character (dat$Start)])
##     right <- min (Inf, dts[dts > as.character (dat$End)])
##     c(left, right)
## }
(brack <- sapply (1:nrow (dd), bracket))
##      [,1]         [,2]   [,3]         [,4]              [,5]
## [1,] "2014-01-16" "-Inf" "2013-03-13" "2015-03-31"    "-Inf"
## [2,] "Inf"        "Inf"  "2014-04-30" "Inf"     "2013-12-02"

dd <- data.frame (ID = dd$ID, t(brack),
##                     stringsAsFactors = TRUE)
left.key <- paste0 (dd$ID, ".", dd$X1)
right.key <- paste0 (dd$ID, ".", dd$X2)
## # Add key, then use match 
survey$key <- paste0 (survey$ID, ".", survey$Date)
dd$ResponseLeft <-
##           survey$Response[match (left.key, survey$key)]
dd$ResponseRight <-
##           survey$Response[match (right.key, survey$key)]
dd
##   ID         X1         X2 ResponseLeft ResponseRight
## 1 AA 2014-01-16        Inf            4            NA
## 2 BB       -Inf        Inf           NA            NA
## 3 CC 2013-03-13 2014-04-30            3             5
## 4 CC 2015-03-31        Inf            4            NA
## 5 EE       -Inf 2013-12-02           NA             4

table (nchar (indat$State))
   2    4 
9203   84 
table (indat$State[nchar (indat$State) == 4])
CITY 
  84 

table (indat$City[nchar (indat$State) == 4])
NEW YORK 
      84 

bb1 <- read.csv ("BedBath1.csv", stringsAsFactors = FALSE)
bb1[1:4,]
##                               SerText   Bed  Bath SqFt State
## Prop # P477005 and land             3     3  1580   PA      
## H644009 as identifier               3 2 1/2  1490   CT      
## House Num H260008                   2     1   910   CT      
## Property A834009       house and land     2 1 1/2  980    CT

bb1 <- scan ("BedBath1.csv", sep = "\n", what = "")
## Read 77 items
bb1[1:5]
## [1] "SerText,Bed,Bath,SqFt,State"                    
## [2] "Prop # P477005 and land,3,3,1580,PA"            
## [3] "H644009 as identifier,3,2 1/2,1490,CT"          
## [4] "House Num H260008,2,1,910,CT"                   
## [5] "Property A834009, house and land,2,1 1/2,980,CT"

table (count.fields ("BedBath1.csv", sep = ",",
##                        comment.char = ""))
##  5  6 
## 66 11 
bb1[6 == count.fields ("BedBath1.csv", sep = ",",
##                          comment.char = "")]
##  [1] "Property A834009, house and land,2,1 1/2,980,CT" 
##  [2] "Property P589004, house and land,3,3,1560,NY"    
##  [3] "Property P450001, house and land,3,2,1400,PA"    
##      : : :
##  [8] "Property A303001, house and land,3,2,c. 1460,PA" 
##      : : :

comm <- (6 == count.fields ("BedBath1.csv", sep = ",", 
##         comment.char = ""))
bb1[comm] <- sub (",", "", bb1[comm])
bb1 <- read.csv (text = bb1, stringsAsFactors = FALSE)
bb1[1:4,]
##                           SerText Bed  Bath SqFt State
## 1         Prop # P477005 and land   3     3 1580    PA
## 2           H644009 as identifier   3 2 1/2 1490    CT
## 3               House Num H260008   2     1  910    CT
## 4 Property A834009 house and land   2 1 1/2  980    CT

sapply (bb1, class)
##     SerText         Bed        Bath        SqFt       State 
## "character"   "integer" "character" "character" "character"

(bb1$ID <- regmatches (bb1$SerText,
##               regexpr ("[AHP][[:digit:]]{6}", bb1$SerText)))
##  [1] "P477005" "H644009" "H260008" "A834009"  ...
table (is.na (bb1$ID))
## FALSE 
##    76 
table (nchar (bb1$ID))
##  7 
## 76 

bath <- as.numeric (sub (" 1/2", ".5", bb1$Bath))
table (bath, bb1$Bath, useNA = "ifany")
## bath   1 1 1/2  2 2 1/2  3
##   1    5     0  0     0  0
##   1.5  0    18  0     0  0
##   2    0     0 18     0  0
##   2.5  0     0  0    20  0
##   3    0     0  0     0 15

bb1$Bath <- bath

bb1[is.na (as.numeric (bb1$SqFt)),"SqFt"]
##  [1] "~ 1510"       "c. 970"       "~ 1460"      
##  [4] "c. 1470"      "c. 920"       "approx. 1510"
##  [7] "~ 1580"       "c. 1460"      "~ 1600"      
## [10] "~ 1560"       "approx. 1440" "~ 1460"      
## [13] "approx. 1450"
## Warning message:
## In `[.data.frame`(bb1, is.na(as.numeric(bb1$SqFt)), "SqFt"):
##   NAs introduced by coercion

sqft <- regmatches (bb1$SqFt,
##                       regexpr ("([[:digit:]]+)", bb1$SqFt))
sqft[is.na (as.numeric (bb1$SqFt))][c(1, 2, 6)]
## [1] "1510" "970"  "1510" # warning message suppressed

bb1$SqFt <- as.numeric (sqft)
bb1[1:3,]
##                   SerText Bed Bath SqFt State      ID
## 1 Prop # P477005 and land   3  3.0 1580    PA P477005
## 2   H644009 as identifier   3  2.5 1490    CT H644009
## 3       House Num H260008   2  1.0  910    CT H260008

sapply (bb1, class)
##     SerText         Bed        Bath        SqFt       State 
## "character"   "integer"   "numeric"   "numeric" "character" 
##          ID 
## "character" 
table (duplicated (bb1))    # duplicated rows?
## FALSE 
##    76 
table (duplicated (bb1$ID)) # duplicated IDs?
## FALSE  TRUE 
##    75     1 

bb1$ID[duplicated (bb1$ID)]
## [1] "P888009"
bb1[bb1$ID == "P888009",]
##                  SerText Bed Bath SqFt State      ID
## 23   Property ID P888009   2  1.5  920    PA P888009
## 49 P888009 as identifier   2  1.5  920    PA P888009

bb1 <- bb1[-23,]           # using row number from above
bb1[bb1$ID == "P888009",]  # double-check!
##                  SerText Bed Bath SqFt State      ID
## 49 P888009 as identifier   2  1.5  920    PA P888009
bb1$SerText <- NULL        # delete columns
dim (bb1)
## [1] 75  5
table (bb1$State, useNA = "ifany")
## CT NY PA 
## 28 17 30 

bb1 <- bb1[-(which (bb1$ID == "P888009")[2]),]

bb2 <- read.csv ("BedBath2.csv", stringsAsFactors = FALSE)
bb2[1:3,]
## [1] "P957001\t3\t2\tNew York\t1440"   
## [2] "H429005\t2\t1.5\tNew Jersey\t950"
## [3] "P226003\t2\t1.5\tNew York\t930"  

bb2 <- read.csv ("BedBath2.csv", sep = "\t",
##                    stringsAsFactors = FALSE)
bb2[1:3,]
##    PropId Bed Bath      State Size
## 1 P957001   3  2.0   New York 1440
## 2 H429005   2  1.5 New Jersey  950
## 3 P226003   2  1.5   New York  930
dim (bb2)
## [1] 40  5

sapply (bb2, class)
##      PropId         Bed        Bath       State        Size 
## "character"   "integer"   "numeric" "character"   "integer" 

table (duplicated (bb2))
## FALSE 
##    40 
table (duplicated (bb2$PropId))
## FALSE 
##    40 
length (intersect (bb1$ID, bb2$PropId))
## [1] 0

table (bb2$State, useNA = "ifany")
## Connecticut  New Jersey    New York 
##          10          15          15 

state.xref <- data.frame (Name = state.name,
##                  Abbr = state.abb, stringsAsFactors = FALSE)
state.xref[1:3,] # check
##      Name Abb
## 1 Alabama  AL
## 2  Alaska  AK
## 3 Arizona  AZ

state.2 <- state.xref$Abbr[match (bb2$State,
##                                     state.xref$Name)]
table (state.2, bb2$State, useNA = "ifany")  
## state.2 Connecticut New Jersey New York
##      CT          10          0        0
##      NJ           0         15        0
##      NY           0          0       15

bb2$State <- state.2

merge (bb2, state.xref, by.x = "State", by.y = "Name",
##          all.x=TRUE)

names (bb2)[names (bb2) == "PropId"] <- "ID"
names (bb2)[names (bb2) == "Size"] <- "SqFt"
bedbath <- rbind (bb1, bb2, stringsAsFactors = FALSE)

sapply (bedbath, function (x) sum (is.na (x)))
##   Bed  Bath  SqFt State    ID 
##     0     0     0     0     0 
sapply (bedbath, function (x) length (unique (x)))
##   Bed  Bath  SqFt State    ID 
##     3     5    35     4   115 
with (bedbath, table (Bed, Bath), useNA = "ifany")
##    Bath
## Bed  1 1.5  2 2.5  3
##   2  7  25  0   0  0
##   3  0   0 31  21 23
##   4  0   0  0   8  0
summary (bedbath$SqFt)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##     860     985    1450    1334    1495    1690 

kwh <- read.csv ("EnergyUsage.csv",
##                     stringsAsFactors = FALSE)
kwh[1:3,]
##     Serial X2016.Q1  X2016.Q2  X2016.Q3 X2016.Q4
## 1 A594-005 2271.074  2245.196   2767.31  3713.24
## 2 P957-001 3565.268  3255.392  2880.485 3446.105
## 3 H625-003  2919.32 2334.8498 2821.3652     #N/A
##    X2017.Q1  X2017.Q2
## 1 3647.2811 3499.3139
## 2   3440.72   3485.93
## 3      #N/A      #N/A
sapply (kwh, class)
##      Serial    X2016.Q1    X2016.Q2    X2016.Q3 
## "character" "character" "character" "character" 
##    X2016.Q4    X2017.Q1    X2017.Q2 
## "character" "character" "character" 

kwh <- read.csv ("EnergyUsage.csv", na.strings = "#N/A", 
##         stringsAsFactors = FALSE)
kwh[1:3,]
##     Serial X2016.Q1 X2016.Q2 X2016.Q3 X2016.Q4
## 1 A594-005 2271.074 2245.196 2767.310 3713.240
## 2 P957-001 3565.268 3255.392 2880.485 3446.105
## 3 H625-003 2919.320 2334.850 2821.365       NA
##   X2017.Q1 X2017.Q2
## 1 3647.281 3499.314
## 2 3440.720 3485.930
## 3       NA       NA

sapply (kwh, class)
##      Serial    X2016.Q1    X2016.Q2    X2016.Q3 
## "character"   "numeric"   "numeric"   "numeric" 
##    X2016.Q4    X2017.Q1    X2017.Q2 
##   "numeric"   "numeric"   "numeric" 

kwh$Serial <- sub ("-", "", kwh$Serial)
kwh$Serial[1:4]                                # check
## [1] "A594005" "P957001" "H625003" "P462004"

table (duplicated (kwh))               # duplicate rows?
## FALSE 
##   116 
table (duplicated (kwh$Serial))        # duplicate keys?
## FALSE  TRUE 
##   115     1 
sapply (kwh,
##        function (x) length (unique (x))) # duplicate values?
## Serial X2016.Q1 X2016.Q2 X2016.Q3 X2016.Q4 X2017.Q1 X2017.Q2
##    115      112      108      104      103       94       95

kwh$Serial[duplicated (kwh$Serial)]
## [1] "P888009"
kwh[kwh$Serial == "P888009",]
##     Serial X2016.Q1 X2016.Q2 X2016.Q3 X2016.Q4
## 16 P888009       NA       NA 2797.175 3700.685
## 88 P888009 2244.566 2526.494 2797.175 3628.685
##    X2017.Q1 X2017.Q2
## 16       NA 3608.844
## 88 4310.686 3608.844

kwh <- kwh[-(which (kwh$Serial == "P888009")[1],]

table (table (kwh$X2017.Q2))
##  1  6 
## 93  1 

which (6 == table (kwh$X2017.Q2))
## 4847.51 
##      50
kwh[!is.na (kwh$X2017.Q2) & kwh$X2017.Q2 == 4847.51,]
##      Serial X2016.Q1 X2016.Q2 X2016.Q3 X2016.Q4
## 31  P308007 4059.905 3875.015  3034.91  3990.26
## 44  H958007 3771.095 5358.575  3034.91  3990.26
## 48  H419006 5360.750 1078.055       NA       NA
## 60  H619001 3570.185 2400.890  3034.91  3990.26
## 112 A542003 2126.240 2951.270  3034.91  3990.26
## 116 A436004 1181.540 2951.270  3034.91  3990.26
##     X2017.Q1 X2017.Q2
## 31    4512.2  4847.51
## 44    4512.2  4847.51
## 48    4512.2  4847.51
## 60    4512.2  4847.51
## 112   4512.2  4847.51
## 116   4512.2  4847.51

table (is.element (bedbath$ID, kwh$Serial))
## TRUE 
##  115 
table (is.element (kwh$Serial, bedbath$ID))
## TRUE 
##  115 

properties <- merge (kwh, bedbath, by.x = "Serial",
##                        by.y = "ID")
properties[1:4,] # Check
##    Serial X2016.Q1 X2016.Q2 X2016.Q3 X2016.Q4 X2017.Q1
## 1 A195008 4226.522 3961.223 4117.505 4683.680       NA
## 2 A255003 3558.008 3512.932 3645.375 4182.305 5108.536
## 3 A294008 3897.872 3352.718 2073.440 3013.130 3644.720
## 4 A301008 3327.296 3365.249 2997.545 5168.420 4151.660
##   X2017.Q2 Bed Bath SqFt State
## 1 7022.795   2  1.0  950    NY
## 2 5695.186   3  2.5 1460    CT
## 3 3590.420   3  2.5 1510    NY
## 4 3080.435   3  2.0 1430    NJ

Xcols <- grep ("X", names (properties), value = TRUE)
sapply (properties[,Xcols], function (x) sum (is.na (x)))
## X2016.Q1 X2016.Q2 X2016.Q3 X2016.Q4 X2017.Q1 X2017.Q2 
##        4        6        5        7       15       16 
sapply (properties[,Xcols], range, na.rm = T)
##      X2016.Q1 X2016.Q2  X2016.Q3 X2016.Q4 X2017.Q1 X2017.Q2
## [1,]  976.010   881.09  680.1299  680.690 1138.697 2123.470
## [2,] 5847.704 10267.73 5448.1001 8484.425 9307.250 8421.106 

tapply (properties$X2016.Q1, properties$State, mean,
##           na.rm = TRUE)
##       CT       NJ       NY       PA 
## 3123.335 3321.658 3416.334 3237.445 
sapply (properties[,Xcols], function (qtr) {
##       tapply (qtr, properties$State, mean, na.rm=TRUE)})
##    X2016.Q1 X2016.Q2 X2016.Q3 X2016.Q4 X2017.Q1 X2017.Q2
## CT 3123.335 2776.943 2871.059 4005.165 4461.140 4918.352
## NJ 3321.658 2953.894 2892.502 3922.922 4445.038 4556.398
## NY 3416.334 3120.687 3056.265 4043.530 4602.037 5085.058
## PA 3237.445 3092.234 3239.677 3996.064 4669.660 4829.615

stack.output <- stack (properties, Xcols)
stack.output
##       values      ind
## 1   4226.522 X2016.Q1
## 2   3558.008 X2016.Q1
## 3   3897.872 X2016.Q1
##  :   :   :
## 115 3825.980 X2016.Q1
## 116 3961.223 X2016.Q2
##  :   :   :

usages <- data.frame (
##          properties[rep (1:nrow(properties), 6),c(1, 8:11)],
##          stack.output)
usages[1:3,] # check
##    Serial Bed Bath SqFt State   values      ind
## 1 A195008   2  1.0  950    NY 4226.522 X2016.Q1
## 2 A255003   3  2.5 1460    CT 3558.008 X2016.Q1
## 3 A294008   3  2.5 1510    NY 3897.872 X2016.Q1        


## Chapter 9 
## =====================

big$AvgScore <- apply (big[,c("RAY", "JNG", "KSC", "NE")],
##                          1, mean, na.rm = T)
gb <- is.element (big$Good, c("Good", "Bad")) &
##        !is.na (big$AvgScore)

qq <- quantile (big$AvgScore, seq (0, 1, len=6),
##                   na.rm = TRUE)
(tbl <- table (big$Good[gb], cut (big$AvgScore[gb], qq,
##                  include.lowest = TRUE), useNA = "ifany"))
##        [420,598] (598,649] (649,696] (696,748] (748,879]
##   Bad        641       620       514       449       384
##   Good       607       721       811       926      1067
round (100 * prop.table (tbl, 2), 1)   
##        [420,598] (598,649] (649,696] (696,748] (748,879]
##   Bad       51.4      46.2      38.8      32.7      26.5
##   Good      48.6      53.8      61.2      67.3      73.5



