Recursion
  * Why do we care?
    * useful for working with recursive data structures (trees, like the DOM in html, linked lists, graphs)
    * useful for exploring all options when there are a LOT of options (e.g. generating all permutations of a string, finding a path through a maze)
    * useful for interviews
      * good tool for problem solving/algorithmic thinking
  * What is recursion?
    * simple idea: functions that call themselves (or two or more functions that call each other back and forth)
    * useful way to think of recursive problems:
      * what's the smaller equivalent problem?
          * if you had a magical oracle that could give you a solution to that
            smaller problem, how would you use the solution to get to a solution
            for the problem at hand?
      * what's the smallest problem of this type? (base case)
        * what's the solution in that case?
  * tail recursion
    * This typically means that the recursive function just calls itself once, at the end
    * sample problem: reverse a string
    * draw stack frame diagrams
  * branching recursion
    * multiple potential recursive calls each time through
    * sample problem: towers of hanoi
    * more stack frames
    * discuss efficiency
  * practice problems
    * permutations of characters
    * merge sort
    * in order, post order, pre order traversal of trees


