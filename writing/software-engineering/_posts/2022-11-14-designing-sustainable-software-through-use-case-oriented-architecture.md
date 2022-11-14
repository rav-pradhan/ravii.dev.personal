---
title: "Designing Sustainable Software Through Use-Case Oriented Architecture"
layout: post
description: "Software design is straightforward. Sustainable software design is not. A few thoughts on how we can make things easier for ourselves by focusing - as we always should - on the users of our products."
---

Consider this: the company you work for has recently acquired funding to build a new product, and you have been selected as the lead engineer for the team that will eventually develop it. A greenfield project! The holy grail of new jobs. The tech stack, platform infrastructure, and the overall software design is there to be shaped by your overarching vision. You're eager to empower your team mates to bring this new product to fruition.

The work starts off well. Your team is slicing up the tasks into manageable chunks, collaborating closely with product and delivery managers, as well as stakeholders whenever it's pertinent. You're working in two-week sprints, with showcases to the wider organisation at regular cadences. The problem space and the challenges you're tackling are compelling, and the 'velocity' through which your team is delivering value is catching the attention of the senior management team. Impressed by your work, these senior decision makers ask for more - the "stretch goals" that will help the product really hit the ground running. Your team feel good. Morale is high. You oblige to accommodate these additional features as much as possible.

Six months later, and things are a little different. While the MVP was released to some fanfare, there was a lack of ongoing sales that suggested the original product roadmap was off-kilter with what the users were looking for. Due to not meeting forecasted sales targets, senior decision makers changed the requirements off the back of more customer engagement and user research. The proposed changes required quite substantial modifications to the original vision - and these had to be reflected in the codebase.

The work begins anew: software is 'soft', after all, and should be malleable enough without cause for concern. But where there was vim and vigour six months ago, now there is the grinding reality that you and your team have found themselves back into the humdrum world that they had escaped: the dreaded brownfield.
 
If you're a developer, lead or otherwise, then chances are you've been in this situation before. If you've had a few of these bad experiences, you probably feel it's almost inevitable.

_Sustainable_ software engineering is hard; anyone who tells you otherwise is lying.

But it's not impossible, and there are a few things we need to be more cogniscent of in order to make things easier for ourselves. 

## Starting with the User Need

We build systems for users, namely people, machines, or both. We want to ensure our systems perform reliable, repeatable actions that reflect a **user need**.

As software delivery teams, we are often able to express user needs in the form of an acceptance statement. We engage with the organisation and any user research that has been conducted, to formulate cards on a sprint board that cover a user need. A common refrain you may hear is the "Given, When, Then" format that echoes, in the most simplest terms, a process a user engages with via the system in development. Yet what's often in these cards seldom translate to the code itself in a distinct, easily-comprehended way.

Part of that, I argue, is down to the approaches to software design that we employ when developing such systems.

## Domain-Driven Design and User Needs

In 2003, Eric Evans released a book called [Domain-Driven Design](https://www.amazon.co.uk/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215). 

## Use-Case Oriented Architecture

Hexagonal architecture is an architectural pattern that promotes clean boundaries between your **core business logic** and any external dependencies, such as third-party APIs, databases, or presentation mechanisms like a web UI or Slack bot.

These clean boundaries are achieved through liberal use of the **dependency inversion pattern**. This principle, perhaps most commonly attributed to Robert C. Martin in *Agile Software Development: Principles, Patterns, and Practices* states that:

1.  High-level modules should not import anything from low-level modules. Both should depend on abstractions (e.g., interfaces).
2.  Abstractions should not depend on details. Details (concrete implementations) should depend on abstractions.

Applying this principle to the overarching idea of developing systems around user needs - or user journeys - leads us to an interesting place in terms of our software design.

Where, for instance, the popular **M**odel **V**iew **C**ontroller (MVP) pattern gets us thinking about software constructs in terms of their responsibility within the flow of data from client to server, hexagonal architecture makes us think about the *behaviours* that need to occur within the system to achieve a desired user need.
