---
title: On the fundamental value of code katas
tags: ['practice']
theme: "writing"
summary: "We all understand the value of code katas in sharpening specific technical skills. However, well-reasoned
katas allow us to go beyond this and learn things far more fundamental to being an engineer."
---

A kata is designed to embed understanding of a pattern. They are inherent to a number of martial arts, where katas are
used to inform techniques that learners must practice in order to develop their skills and advance their proficiency.
You can get an idea, then, of why the underpinning idea of katas as a learning mechanism translates fairly nicely into
other disciplines and vocations; of course, this extends to software development.

A well-reasoned code kata allows a developer to find multiple avenues to the solution, but they are fundamentally
isolated problems and usually small in scope. They are also exercises that tend not to emulate the messiness and
unpredictability that often accompanies working in real-code situations.

While this is a common criticism levelled towards code katas, this is a deliberate design choice that ultimately serves
to benefit the developer's learning.

Katas often allow developers to focus on sharpening technical skills, such as their understanding of data structures or
implementing algorithms. A developer is able to concentrate on improving their skills through just these singular
instances without the noise of external dependencies and contentions.

But perhaps most importantly, these learning experiences are underpinned by a core tenet. A well-formed kata should
build confidence in developers to confront problems and work through them with the tools they have at their disposal.

Let's take a look at some of the ways katas encourage this.

## Katas make you think about the journey, not just the solution

A code kata should have multiple steps to completion, and consequently for a number of design decisions to be viable.
This means that an effective kata ought to focus the developer's mind on the journey rather than the solution.

A good example of this would be the [bowling game kata](https://codingdojo.org/kata/Bowling/). The aim of the kata is to
implement the scoring system for a single line of ten-pin bowling. It is tight in scope, but flexible enough to allow
for a number of different avenues to a solution. The scoring system also has some key points of distinction that are
dependent on what a player rolls. For instance, the calculation of bonus points depends on whether the player has rolled
a strike or a spare. Meanwhile, the final frame can include up to three rolls instead of two, if the player knocks all
ten pins down. These can trip up a developer as they work through the problem, so it is important that they take time to
consider what an optimal solution to these algorithmic curveballs are.

In much the same way that katas in martial arts encourage us to understand why each movement in its choreography has
inherent value in the overall pattern, code katas inspire a developer to focus on the incremental steps of the journey,
rather than the solution as an end in and of itself. This also means code katas have an air of repeatability; a
developer coming back to a kata after a few months may find new paths to a solution that are perhaps more readable or
performant. So long as a developer can discover avenues for improvement when returning to a kata, then there will always
be value to gain.

## Katas encourage a test-first approach

A test-first mindset in software development is valuable. Considering how you will test use cases gets you thinking more
deeply about edge case scenarios, the testability of your code, and fundamentally the overall design of the program.

The tight focus and scope of a kata means they are an effective way of developing this test-first mindset - and more
specifically, practising test-driven development (TDD). This is an approach to software development where the test case
is written first and deliberately checked to fail before writing the simplest code to get it to pass. Once the test is
passing, the implementation code can then be refactored - if applicable. This process is then repeated for the next step
in the journey to reaching the solution. The consequence of well-orchestrated TDD means that programs are incrementally
developed. The code is always backed by tests that cover edge case scenarios in tandem with the happy path. This means
refactoring can always be done in confidence.

A great example of an exercise that focuses the developer's mind on a test-first approach is
the [Gilded Rose kata](https://github.com/emilybache/GildedRose-Refactoring-Kata). Here, the developer is provided with
what is essentially a 'legacy' codebase. The code is messy and lacks meaningful tests. With the Gilded Rose exercise,
developers are nudged to think about writing tests first to cover the current code. This is to encourage them to really
understand what the code is doing and what the use cases are, whilst also building a foundation for the new features to
be implemented without fear of breaking existing functionality. As the codebase is full of nested `if` statements
and `for` loops, writing these tests first means the developer can confidently refactor and improve the code.
Afterwards, employing a TDD approach to solving the kata will ensure that this confidence remains in place as new code
is added.

The tight scope of katas like the Gilded Rose means that the developer is only focused on the current code and
implementation. It's a contrivance that we highlighted as a perceived negative of katas earlier, but the mindset and
skills that are built in these isolated scenarios can be valuable to a developer when contending with such exercises in
real-code scenarios.

## An effective way to learn a new language

A Hello World example may be a good place to start when picking up a new language, but oftentimes you are likely looking
for something more substantial. A small project may help, no doubt, but if you have a selection of katas that you feel
comfortable with, then you can supplement your learning by working through those again. As you are already familiar with
pathways to a solution, these katas allow you to instead focus on language-specific aspects such as syntax, the standard
library feature set, its main selling points, and testing setup.

Through this, you may find you consolidate your grasp of how a given language works. A tried and trusted solution to a
kata attempted in JavaScript is not necessarily what you ought to use when trying it in Go. There is value in gathering
various perspectives, and katas attempted in different languages can help facilitate that. Understanding how a
language's specific features can help inform the solution you get to makes for a valuable learning experience that can
fundamentally influence how you approach problems in the future.

When well-formed, katas go beyond simply sharpening useful technical skills. They help us build a mindset that focuses
on the incremental steps needed to solve something, rather than just the solution itself. Katas allow us to better
understand our individual approaches to problem solving in programming as much as they allow us to think about
language-specific features. They also provide us with the space to think maturely about test-first behaviour, so that
the code we write is more easily testable and resilient. Of course this isn't to say katas are the only means of
improving as a developer, but their focus on the overarching ideas of problem solving and reasoning with code mean they
are an effective practical exercise to make the most of.

A good repository of katas can be found on [Codewars](https://www.codewars.com/). The exercises here are provided by the
community, and are stratified based on a challenge rating derived from the kyū-levels found in martial arts. If you are
new to katas, I'd encourage you to check these out and - hopefully - you can find them a useful way to learn and improve
your skills as a developer.