---
title: "On Imperative and Declarative Web Design"
layout: post
description: "An appraisal on two broad approaches to authoring CSS and web design."
---

Over the last few months, the gods that be &mdash; the Twitter algorithm &mdash; thought all I wanted to see were tweets about CSS and design advice.

More often than not, I'd be peppered with tweets with HTML snippets that looked a little like this:

```html
<div class="sm:mt-1 mt-3 pt-5 pb-5 br-8 bg-dark-grey overflow-hidden box-shadow-md">
	<div class="pt-3 pb-3">
		<div class="font-bold font-size-xl font-purple mb-2">This is a card</div>
		<p class="font-grey">Here's some funky card text</p>
	</div>
</div>
```

It reminded me a lot of my experiences back in early 2017 with the likes of [Bootstrap](https://getbootstrap.com/docs/3.4/css/) and [Bulma](https://bulma.io/), but with the utility classes cranked up to eleven.

Turns out this utility-first approach to web design is pretty popular! And with developers and designers alike.

This initially surprised me. After all, CSS is a declarative language; yet exercising explicit control over how a browser styles things, in an imperative fashion, was a far more compelling approach for people.

Inspired by [Sakichi Toyoda](https://en.wikipedia.org/wiki/Five_whys), I had to ask: why?

## Understanding the Growth of Utility-first CSS

While you don't need to use them, frameworks provide a lot of benefits for working with a utility-first CSS approach. The most popular I see based on a somewhat crude metric &mdash; GitHub stars &mdash; are [Tailwind](https://tailwindcss.com/) and [Tachyons](https://tachyons.io/). The benefit of these frameworks is that they help reduce the overhead of managing CSS abstractions to the point where you seldom need to write your own CSS.

Colour, spacing and typography properties, `grid` or `flex` values and attributes, responsive utilities: these are all provided to you in pregenerated, single-responsibility CSS classes that you can compose together to build the styles your HTML elements need. Using this approach, you rarely need to write new CSS in order to get your UIs styled as per designer mockups.

Fundamentally, what utility-first CSS gives you is an **imperative design** approach to web design. You command the browser to apply styles via the classes you've set within the individual HTML elements. The browser then executes every styling application based on your command set.

### The "Why" of Imperative Design

There are a few key reasons why I think imperative design is consistently adopted by many teams.

#### It's output-focused

You don't need to write any CSS.

This is huge for teams who build web apps but have little interest in learning the intricacies of CSS specificity, cascade and functions, nor maintaining reams of CSS code. Utility-first frameworks generate all the classes you need from a manifest, and they're immediately available to use.

As a result, you're quick to start and quick to get UI designed because you don't have to expend bandwidth thinking about CSS beyond understanding what properties you need.

#### Your HTML depends upon CSS

Instead of the traditional model of CSS depending upon the content and structure of your HTML[^1], it's the HTML instead that depends upon content-agnostic CSS. There are different trade-offs with this approach, which we'll come onto later, but this simpler mental model can be appealing.

#### Explicitness is accessible

Utility-first frameworks provide constraints by virtue of having a specific list of class names for any one thing, be it colour palette, spacing, and on. The designers in your organisation can use their design tool of choice, specify what the pixel values need to be, and then set the [design tokens](https://www.uxpin.com/studio/blog/what-are-design-tokens/) up accordingly for the developers to implement into the code.

This explicitness in what classes are available means anyone &mdash; a junior designer or engineer through to a non-technical stakeholder who can at least read HTML &mdash; could look at an HTML document, the classes applied to each element, and comprehend what the UI looks like.

#### There's less fear in making changes

 With utility-first approaches, you don't need to worry about global CSS conflicts as styles are applied on a per-element basis, and [specificity](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity) is the same across the board. You know exactly what will be affected when you remove a utility class from an element; the surface area for unexpected disruption is minimal.

#### Imperative design tools lead to imperative design approaches

A traditional web design approach within a company may involve an interaction designer creating "mobile", "tablet", and "desktop" view mockups in their graphic design software of choice. These are then handed over to the developers to code up with fixed values for each mockup: font size, spacing, canvas dimensions, and more.

If the design process starts with hardcoded mockups, it stands to reason then that an imperative approach would work best to accommodate designers and developers. Conway's Law in action[^2].

If, however, there is fluidity and less prescriptiveness in a team's approach to web design, then I think there's a more pertinent approach to take. One that takes advantage of all that modern CSS has to offer.

## The Alternative: Declarative Design and Systems CSS

At its core, declarative design is a systems approach to web design that works *with* CSS &mdash; its algorithmic capabilities and the cascade &mdash; rather than in spite of it.

There are a number of advocates for this approach, notably Jen Simmons and her notion of ["Intrinsic Layouts"](https://aneventapart.com/news/post/designing-intrinsic-layouts-aea-video); Andy Bell and Heydon Pickering, whose [Every Layout](https://every-layout.dev/) resource in particular highlights many of the ways in which algorithmic CSS features can automate layout composition; and [Utopia](https://utopia.fyi/), a fluid space and typography generator created by James Gilyead and Trys Mudford.

Where imperative design values precision and control over our styling, declarative design looks to *codify* the boundaries and tolerances of our design system into our style sheets.

Let's consider a couple of examples to demonstrate what a modern, declarative design approach would entail.

### Example 1: Typography

An imperative approach to typography may define fixed font sizes that are then set based on fixed viewport widths. These are then applied on a per-element basis.

On the other hand, a declarative approach accounts for design fluidity and externalities that cannot be controlled for, such as the user resizing their browser window to a size that sits between breakpoints. Instead of setting specific values, we define boundaries and an algorithm for the browser to make a decision. We *guide* the browser, rather than command it.

Subsequently, a declarative approach could look like this:

```scss
h1 {
	--heading-xl-min: 2rem;
	--heading-xl-max: 5rem;
	--heading-xl-fluid-width: 5vw;

	font-size: clamp(
			var(--heading-xl-min),
			calc(1rem + var(--heading-xl-fluid-width)),
			var(--heading-xl-max)
		);
}
```

Let's break this down:

1. The `clamp()` function accepts three parameters: a minimum value, an optimal value, and a maximum value.
2. We set the minimum value to the custom property, `--heading-xl-min`. *Our font size will never be smaller than this value.*
3. We set a maximum value to the custom property, `--heading-xl-max`. *Our font size will never be greater than this value.*
3. Our optimal value is where we ask the browser to calculate a font size that's *proportionate* to the user's viewport width. To achieve this, we use CSS' `calc()` function to calculate a font size that is the equivalent of `1rem` *plus* `5vw` &mdash; or 5% of the viewport's width[^3].
{: .stack }

By taking a declarative approach, we have automated the font size for our heading proportionate to the user's viewport width. Assuming that we had multiple headings whose min and max values followed a [fluid type scale](https://utopia.fyi/blog/designing-with-fluid-type-scales/), this approach would ensure that the font size relationship between different headings remained proportionate, whilst intrinsically resizing.

### Example 2: Consistent Margins Between Elements

Let's now consider a simple user registration form that asks for a inputs from the user.

We want to apply consistent vertical margin between the form elements.

With an imperative design approach, you would likely have an array of utility classes that applies a `margin-top` value for you. You then need to add it to every element:

```html
<form action="/" method="post">
	<div class="sm:u-mt u-mt"><!-- Form element markup --></div>
	<div class="sm:u-mt u-mt"><!-- Form element markup --></div>
	<div class="sm:u-mt u-mt"><!-- Form element markup --></div>
	<button class="sm:u-mt u-mt"><!-- Submit --></button>
</form>
```

Conceptually, this feels a touch odd. Margins provide us with whitespace that, in turn, visually defines the relationship between adjacent elements. Applying a margin to individual elements decouples sibling elements as they end up "possessing" their own whitespace. The relationship between elements is disrupted if any one of them don't have the correct margin class applied.

A declarative approach to this problem would involve leveraging the wonders of CSS specificity to set margin values at the context-level, which in this case is the form element.

In *Every Layout*, the technique to automate margin application to child elements is called a [Stack](https://every-layout.dev/layouts/stack/):

```scss
.stack {
	display: flex;
	flex-direction: column;
	justify-content: flex-start;

	> * {
		margin-block: 0;
	}

	> * + * {
		margin-block-start: 1.5rem;
	}
}
```

Let's break down what the stack does:

1. We apply a Flexbox context to the stack to consistently align the child elements into a column.
2. `> *` selects all child elements and removes any margin currently applied[^4].
3. `> * + *` tells the browser to apply the `margin-block-start` to the child elements that are **themselves adjacent** to an element within the stack context.
{: .stack }

As a result of implementing a single stack class, our HTML is simplified, and we are again deferring to the browser to apply our ruleset:

```html
<form action="/" method="post" class="stack">
	<div><!-- Form element markup --></div>
	<div><!-- Form element markup --></div>
	<div><!-- Form element markup --></div>
	<button><!-- Submit Form --></button>
</form>
```

This would remain a terse solution regardless of how many form field elements we had because we *instruct* the browser on what to do rather than explicitly control each element individually.

Given how significant whitespace is for communicating design intent, you can see why the stack implementation would be useful in a number of ways. You could extend the stack by introducing modifier classes, such as `stack--large` that implements a larger `margin-block-start` value; you can also more compose complex web layouts by nesting stack contexts together.

There are many layout possibilities that a straightforward, small CSS class like the humble "stack" can provide. It is in this flexibility that a declarative design approach shines.

## The "Why" of Declarative Design

In [*Thinking in Systems: A Primer*](https://en.wikipedia.org/wiki/Thinking_In_Systems:_A_Primer), Donella Meadows pithily talks about system resilience as:

> “...a measure of a system’s ability to survive and persist within a variable environment.”

Designing for the web means designing for an inherently "variable environment". Given this, should we not assert "design fluidity" as a fitness function[^5] of our design systems? A user could be viewing your website on a 4" smartphone, a 32" ultra-wide monitor; even on a 42mm-wide smart-watch, for all we know.

And while imperative design approaches can be made *resilient enough* through liberal use of media queries to capture broad use cases, it requires of a lot more work and micro-management of individual HTML elements to accomplish. Declarative design, on the other hand, works in partnership with modern CSS to achieve design fluidity from the get-go.

## Mindset Dictates Approach

Of course, it's never as simple as saying that one methodology is correct and the other is wrong.

At the end of the day, what approach works best *for you and your team* will depend on your mindset and your philosophy towards web design.

A declarative approach makes more sense *to me*, but it is predicated on a design mindset centred around fluidity: our user interfaces will never be fixed outputs; consequently, the optimal way to design for the web is to embrace this and write CSS as if it were a system with tolerances and boundaries, accommodating myriad possibilities and externalities.

Contrastingly, if you take the view that web design must have optimal outputs for common viewports, and you're consequently focused on explicitness in design and markup, then an imperative approach will likely be more satisfying and rewarding for you. You will feel faster developing in this style, and you can focus on other aspects of your system as a result of abstracting away the CSS overhead to a utility-first framework.


[^1]: The traditional model treats HTML as a dependency of your CSS. The CSS is coupled to specific content on your website. For instance, you may have a site header element that uses the class, `header__nav`, or a more domain-specific type of navigation, such as `survey-builder__nav`. These names relate to specific components and act as a hook for the CSS to inject styles. However, CSS needs to know about these names in the first place, otherwise the styles will not be applied.
[^2]: [Conway's Law](https://en.wikipedia.org/wiki/Conway%27s_law), as defined by Melvin Conway: "Any organisation that designs a system (defined broadly) will produce a design whose structure is a copy of the organisation's communication structure".
[^3]: If the user's viewport was `1200px` wide, and for argument's sake `1rem` was `18px`, the optimal value calculation would be `18px + 60px`, which would mean the `h1` size is `78px`. This would be  `12px` smaller than the maximum value (`5rem`) we've set.
[^4]: `margin-block` is a shorthand that corresponds to either `margin-top` and `margin-bottom`, or `margin-right` and `margin-left`, depending on `text-orientation` and `writing-mode` values. Read more on [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-block)
[^5]: I use "fitness functions" here as defined by [Thoughtworks](https://www.thoughtworks.com/en-gb/radar/techniques/architectural-fitness-function). Fundamentally, fitness functions seek to evaluate "how close a given design solution is to achieving the set aims" &mdash; with "design fluidity" as a fitness function, you would continuously evaluate a design system's individual components and patterns to ensure they scale fluidly and gracefully across viewport sizes.