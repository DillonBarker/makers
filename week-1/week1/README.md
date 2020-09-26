<h1 align="center">Week 1</h1>


## Goals
- Test-drive a simple program using objects and methods
- Pair using the driver-navigator style
- Follow an effective debugging process
- Describe some basic OO principles like encapsulation, SRP

## Personal Goals
1. Describe OO principle encapsulation (and its link to cohesion), do some
coding examples on it.
2. TDD practice, by using different types of testing.
3. Learn about SRP (30 minutes of reading) followed by coding example of how its
 used.
4. Understand the basics of what is BDD and compare it to TDD.

<h1 align="center">1 - OO Encapsulation</h1>

#### Notes
- Encapsulation is bundling of data with the methods that work on that same data.
Often seen when hiding values or objects inside classes, preventing access across different classes.
- Cohesion is the degree of how well elements inside module belong together, high cohesion is desired.

#### What I did to achieve this goal
- Wikipedia research on encapsulation, cohesion
- Diagram segregating some methods into classes (encapsulation)

<p align="center">
  <img src ="/images/week1/encapsulation.png">
</p>

- [Here](https://github.com/DillonBarker/week1/blob/master/secret_diary/lib/secret_diary_refactored.rb) I used encapsulation to separate methods into two classes.
- [Here](https://github.com/DillonBarker/week1/tree/master/calculator) I separated a no class calculator and gave it specific classes and updated its tests accordingly.
- [Here](https://github.com/DillonBarker/airport_challenge) I completed the weekend challenge according to the specification given by user stories.


<h1 align="center">2 - Test Driven development</h1>

#### Notes
- Useful blog post found [here](https://blog.makersacademy.com/an-introduction-to-tdd-in-ruby-72f0a8536509)
- Red -> Green -> Refactor. This is the core principle of TDD.


#### What I did to achieve this goal
- Paired programming exercise found [here](https://github.com/DillonBarker/Boris-Bikes-2)
- TDD exercise, creating and using RSpec tests to help drive development [here](https://github.com/DillonBarker/week1/blob/master/secret_diary)
- Intro to TDD workshop, this involved getting a chunk of code. Whereby we had to write the tests based on the code. Through the use of TDD, testing as we went along using the irb etc.

<h1 align="center">3 - OO SRP</h1>

#### Notes
- SRP is the S in SOLID
- SRP stands for Single Responsibility Principle - this basically means that within a problem where you have two different parts. Say printing and making the report to print. These are different, one is called cosmetic and the other is called substantive. Therefore, two classes should be made so that each class only has one responsibility (one for Printing, one for Compiling the report).

#### What I did to achieve this goal
- [Here](https://github.com/DillonBarker/week1/blob/master/secret_diary/lib/secret_diary_refactored.rb) is an example of where I separated classes to follow SRP. The lock class only has the responsibility to open and close this lock. Then the diary class only adds and gets entries to the diary.
- I did some reading online into the relationship between this SRP principle and classes/methods.[Here](https://en.wikipedia.org/wiki/Single-responsibility_principle)
