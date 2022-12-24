---
title: "Improving collaborative coding in remote work"
layout: post
description: "Sharing a few things I've found that makes collaborative coding more effective and engaging when working remotely."
---

The COVID pandemic has shifted the way many of us work. Any argument that people would be sitting at home and neglecting work has been thoroughly debunked[^1].

But for all of the benefits borne from widespread remote working[^2], there has been one hurdle we've experienced in software engineering and design: **sustained synchronous coding is a drain**.

For instance, something like pair or mob programming (or pithily: collaborative coding) have suffered because there's an inherent friction to communicating through the internet than in-person. It's ultimately why we're much quicker to ask for help via an email or instant message when working remotely than we are to organise a call[^3].

Video calling services like Microsoft Teams and Google Meet are great for meetings and conveying information at a high level, but consider the following points for collaborative coding:

- you would be sharing your IDE or text editor on the screen
- you would be using a number of keyboard shortcuts that aren't visible to others on the call to navigate through a codebase at speed
- you may have screen-sharing latency issues or lowered bandwidth that causes the screen-share to look pixellated and unclear

When you consider these, it's understandable why remote collaborative coding can become tiring, lead to disengagement and even contribute to burnout.

In my team, we code collaboratively the majority of the time. Soon into remote pairing and mobbing sessions, we realised that what worked in the office didn't necessarily translate into a remote context. Those aforementioned points of friction, while individually small, compounded to create what we knew would be an unsustainable workflow in the long-run.

We've learned a lot since these initial experiences, so here are a few things we've picked up that might help if you already do &mdash; or have been thinking about doing &mdash; remote collaborative coding in your teams.

## "Code together" tools go a long way to help

One of the ways to reduce friction is to use collaborative coding software. Thankfully, there are a number of tools out there that let us invite others to work directly within the codebase on the driver's machine. The two most common I've come across are [Visual Studio Code's Live Share](https://code.visualstudio.com/learn/collaboration/live-share) and [JetBrain IDE's Code With Me](https://www.jetbrains.com/code-with-me/).

They are broadly the same in end-user experience: people have access to the codebase in their own text editor, they can "follow" other people on the code share, and even use terminals or debugging tools. What's more, there's little to no latency in writing code or running tests; when you &mdash; or a colleague &mdash; makes a change, everyone sees it instantly.

We found using these tools made a real difference. Where once we were restricted to watching the driver type away on low resolution screen-share, we now had the freedom to explore and interact with the codebase at our own pace and with our own tooling.

It helped us be more productive and aided the ongoing conversations around our design. But more importantly, it allowed us to _feel_ more fulfilled with our work. When you're working together for long periods of time, how we feel in the minutiae of our collaboration is key to making it sustainable in the long-term.

## Remember time management and breaks

One study that explored newly remote workers during the COVID pandemic found that remote working removed many opportunities to take active breaks, positing that there were physical, environmental, and psychological barriers that prevented workers from stepping away from their desks more frequently[^4].

This study's conclusions chimed with our initial experiences of remote working in the team. Despite all of us having used the [pomodoro technique](https://en.wikipedia.org/wiki/Pomodoro_Technique) during in-person collaboration, we found that it was all too easy to ignore the timer going off when working remotely.

Collaborative coding can be intense, particularly when remote working tools add friction to the workflow; our lack of time management lead us to tread the path towards burnout and disengagement.

For us, becoming more cogniscent to taking breaks in a remote setting meant adhering steadfastly to our pomodoro timer. We found using a shared timer service, such as what [Cuckoo](https://cuckoo.team/) provide, useful to ensure we were **all** aware of when the timer went off. And when that bell chimed, regardless of where we were in our work, we would take a break and step away from the desk.

It made a huge difference.

## Short, regular retrospectives are key to adapt

All of us who work in sprints know how important the retrospective can be at the end of each cycle. It's our opportunity to constructively reflect on the period and discuss what worked well and what didn't pan out as expected. The reason we have one, two, or three week sprints followed by a retrospective is to build tight feedback loops into our work; these are key to developing high-performing, feedback-driven teams.

However, it's important to remember that retrospectives come in different forms and apply to many contexts.

One of the first times I paired remotely was with a colleague who had not done any pair programming before. With that in mind, we agreed to start with short pomodoro sessions &mdash; 25 minutes followed by a 5 minute break &mdash; in tandem with bidaily retrospectives: one before lunch and one at the end of the day.

The reasoning behind it was simple: we hadn't paired with each other before and we ultimately didn't know how best to synchronise our workflow to make each other feel comfortable.

The retrospectives themselves were fairly informal &mdash; a short, honest discussion on what worked and what didn't in the previous few hours of pairing.

There were always things cropping up in our retros that made us adjust: the length of the pomodoro session, how frequently we switched driver, how we communicated as a pair, the way we set up our debugging tools to work nicely with Visual Studio Code's Live Share.

These may seem like small things, but when you're pairing remotely, it's these incremental changes that compound to reduce a lot of the friction. They proved crucial in helping us understand each other better and improve our teamwork.

Without regular retrospectives, we likely would've carried on with little reflection, and that'll have lead to a pairing experience neither of us would've been happy with.

## Incremental change takes time; but its effects can be profound

Fundamentally, reducing friction in the developer experience is key to making remote collaborative coding sustainable for experienced practitioners and newcomers alike.

What's more, the changes that have positively impacted my experience the most were measured, incremental, and crucially, _small_. You don't need to overhaul everything you may have been doing in-person to make remote pairing or mobbing work for you.

Fast feedback is core for charting a path towards a better experience, and while the impact of such changes may feel minimal individually, it's the compound effect that will make a profound, positive difference for you and your team in the long-term.

[^1]: ["Remote work can boost productivity and curb burnout" - London School of Economics](https://blogs.lse.ac.uk/businessreview/2021/09/29/remote-work-can-boost-productivity-and-curb-burnout/)
[^2]: [Survey reveals the mental and physical health impacts of home working during Covid-19](https://www.rsph.org.uk/about-us/news/survey-reveals-the-mental-and-physical-health-impacts-of-home-working-during-covid-19.html)
[^3]: "Our results also indicate that the shift to firm-wide remote work caused synchronous communication to decrease and asynchronous communication to increase. Not only were the communication media that workers used less synchronous, but they were also less ‘rich’ (for example, email and IM). These changes in communication media may have made it more difficult for workers to convey and process complex information" - [The effects of remote work on collaboration among information workers](https://www.nature.com/articles/s41562-021-01196-4)
[^4]: [The end of the active work break? Remote work, sedentariness and the role of technology in creating active break-taking norms](https://www.sjjg.uk/papers/break-taking-chiwork22/)