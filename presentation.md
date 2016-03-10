class: center, middle, inverse

# Mutation Testing in Ruby

## Darin Haener

---

class: center, middle, inverse

# What is mutation testing?

Mutation testing is a different style of testing in which the test runner
"mutates" your code, and expects your current tests to fail. If a mutation
is made, and a test passes, it is considered to be a failed test case.

---

class: center, middle, inverse

# How does it work?

Mutation testing works by parsing out your code base into an Abstract Syntax
Tree, replacing nodes, and running your tests for each "mutation". Currently
it only works with rspec. Which, really, is fine. :)

---

class: center, middle, inverse

# The Mutant Gem

The Mutant gem works with rspec to allow you to run mutation testing on your
code. Disclaimer: it is VERY slow, so it should probably not be part of your
main development cycle, but more of a suite that you run before issuing a
pull request and sending it to CI.

---

class: center, middle, inverse

# Code Samples

I'm going to just go ahead and run through some code samples for the rest of the
presentation so that we can see how this all works.

---

