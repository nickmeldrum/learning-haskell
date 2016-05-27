# Learning Haskell Scratch repo

(learning from the book ["Learn You a Haskell for Great Good!"](http://learnyouahaskell.com/))

## Installing

 * Just get [Haskell Platform](https://www.haskell.org/platform/)

## Running

 * `ghc Main.js` to compile a Main app
 * `ghci` run in interactive mode

### Interactive mode commands

 * `:quit` leave interactive mode
 * `:l myfuncs` load funcs in a `myfuncs.hs` file so you can run them
 * `:r` reloads the current script loaded with `:l`
 * `:set prompt "ghci>"` sets prompt

## Language syntax cheat-sheet

### Real basics

 * `True` `False` boolean values
 * `&& || not` boolean operators
 * `(-3)` wrap negative numbers in a parens
 * `(1 + 1) * 50 / 10` arithmetic operators
 * `==` `\=` equals, not equals operators 
 * `let x = 5` variable declaration with inferred type

### Calling functions

 * parantheses do NOT denote function application (arg list) instead they are purely for precedence, so `bar (bar 3)` is executing bar 3 then passing that into bar, not passing bar and 3 into bar
 * define a function by `name arglist = function body`
 * `*`, `+` are *infix* functions (function name sandwiched between arguments) - instead of the more usual *prefix* functions
 * ``4 `min` 5`` can call function with 2 params as an infix function by surrounding it with backticks

### Some functions

 * `succ` - returns a defined successor for an argument that has one
 * `min` and `max` take 2 things that can be put in order and return the lesser or greater one
 * `div` does integral division between 2 numbers

### Branches and loops

 * `if condition then x else y`

### Some rules

 * in Haskell every expression and function must return something (hence if must have else)
 * funcs can't begin with capital letters

### Some conventions

 * use `'` at end of func name to denote a strict version of a func or a slightly modified version of a func or variable
 * funcs without params are called "definitions" or "a name"

### Lists

 * lists are homogenous
 * `let a = [1,2]`
 * strings are justs lists of chars
 * concat lists with the ++ operator (infix function)
 * using `++` to put something at end of list is slow - walks the entire left side of operator
 * using `:` (the cons operator) to put something at the beginning requires no walking
 * `[1,2,3] !! 1` returns `2` (get at index operator)
 * lists within lists must all be the same type
 * can compare lists using `< <= > >=` if stuff inside can be compared - (if items at same index are equal, move on to comparing next item until an unequal item is found)
 * can define lists with ranges for sequences e.g. `[1..20]`
 * ranges accept a step e.g. `[2,4..20]`
 * to reverse a range do `[20,19..1]`
 * you can do infinite lists `[1..]`

 * `head x` returns head of list (1st element)
 * `tail x` returns list with head chopped off
 * `last x` returns last item in list
 * `init x` returns list with last chopped off
 * `length x` returns length of list
 * `null x` returns true for empty lists
 * `reverse x`
 * `take n x` takes first n items from list and returns list of them
 * `drop n x` takes first n items from list and returns rest of list
 * `maximum x` returns biggest item
 * `minimum x` returns smallest item
 * `sum x` returns sum of items
 * `product x` returns product of items
 * `elem y x` returns True if y is in list x usually done infix: ``y `elem` x``
 * `cycle x` takes a list and cycles it into an infinite list
 * `repeat x` takes an element and repeats it into an infinite list
 * `replicate y x` creates a list with y number of elements x
 
 ### List comprehensions

 like set comprehensions in maths:
 `[x*2 | x <- [1..10]]` this will take the list 1 to 10 and apply x * 2 to each element
 can add a predicate as well:
 `[x*2 | x <- [1..10], x*2 >= 12]` this will only output the items from 12 onwards
can have multiple comma separated predicates (all must be satisfied) 
can also have multiple lists to draw from (`x <- [], y <- []`) - will output the product of all drawn lists based on the output func

