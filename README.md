# CIS194: Spring 2022

A slightly modified version of UPenn's CIS 194 course, with tests!

## Schedule

Week | Lecture                                                | Assignment Due          |
---- |--------------------------------------------------------|-------------------------|
1    | [Introduction to Haskell][1]                           | [cc numbers][21]        |
2    | [Algebraic Data Types][2]                              | [log parsing][22]       |
3    | [Recursion patterns, polymorphism, and the Prelude][3] | [code golf][23]         |
4    | [Parametric Polymorphism][4]                           | [BST, recursion][24]    |
5    | [More polymorphism and type classes][5]                | [calculator][25]        |
6    | [Lazy evaluation][6]                                   | [streams][26]           |
7    | [Monoids][7]                                           | [monoids][27]           |
8    | [Functors][8] [Applicative functors (part 1)][9]       | [parsers, part one][28] |
9    | [Applicative functors (part 2)][10]                    | [parsers, part two][29] |
10   | [Property-based Testing w/QuickCheck][11]              | [testing][30]           |
11   | [Monads][12]                                           | [risk][31]              |
12   | [IO Monad][13]                                         | [IO][32]                |

## Getting Started

### Initialize Stack

We use Stack to build our project. After cloning the repository, run `stack build` from its root.

### Running the Tests

Assignments are tested with Hspec and QuickCheck. Run the full test suite upon cloning the project using the 
`stack test` command. Before running the tests, this command will install all test dependencies. Then, you'll be able to
run a single test:

```
15:10 $ stack build && stack test --test-arguments '--match=Homework.Week01'
```

## Contributors

This test suite and lesson plan has been built out over the years with help from (but not limited to): [acruikshank](http://github.com/acruikshank), [aztecrex](http://github.com/aztecrex),
[clkunzang](http://github.com/clkunzang), [coopernurse](http://github.com/coopernurse),
[finalfantasia](http://github.com/finalfantasia), [jxv](http://github.com/jxv),
[laser](http://github.com/laser), [lexi-lambda](http://github.com/lexi-lambda),
[markw](http://github.com/markw), [michaelavila](http://github.com/michaelavila), and
[will-wow](http://github.com/will-wow).

[1]: pdfs/lectures/Week01L-intro.pdf
[2]: pdfs/lectures/Week02L-ADTs.pdf
[3]: pdfs/lectures/Week03L-recursion-and-polymorphism.pdf
[4]: pdfs/lectures/Week04L-parametric-polymorphism.pdf
[5]: pdfs/lectures/Week05L-type-classes.pdf
[6]: pdfs/lectures/Week06L-laziness.pdf
[7]: pdfs/lectures/Week07L-monoids.pdf
[8]: pdfs/lectures/Week08aL-functors.pdf
[9]: pdfs/lectures/Week08bL-applicative.pdf
[10]: pdfs/lectures/Week09L-applicative-cont.pdf
[11]: pdfs/lectures/Week10L-quickcheck.pdf
[12]: pdfs/lectures/Week11L-monads.pdf
[13]: pdfs/lectures/Week12L-IO.pdf

[21]: pdfs/assignments/Week01A-intro.pdf
[22]: pdfs/assignments/Week02A-ADTs.pdf
[23]: pdfs/assignments/Week03A-recursion-and-polymorphism.pdf
[24]: pdfs/assignments/Week04A-parametric-polymorphism.pdf
[25]: pdfs/assignments/Week05A-type-classes.pdf
[26]: pdfs/assignments/Week06A-laziness.pdf
[27]: pdfs/assignments/Week07A-monoids.pdf
[28]: pdfs/assignments/Week08A-applicative.pdf
[29]: pdfs/assignments/Week09A-applicative-cont.pdf
[30]: pdfs/assignments/Week10A-quickcheck.pdf
[31]: pdfs/assignments/Week11A-monads.pdf
[32]: pdfs/assignments/Week12A-IO.pdf