How to master the "secret handshake" of professional software engineers? By using the right memes at the right moment. But don't be fooled. Each of these memes resulted from many years of work in the trenches. Those that have become teachers can probably show you their battle scars. But to keep things light they often use these enigmatic quips of wisdom. Not as rules to be blindly followed but as guide through unknown territory.

## One does not simply ...

Things are often not as simple as they seem. Having watched a Youtube video cannot stand in for getting your hands dirty and discovering there is more to this seemingly simple task then you expected. Roll up your sleeves and DO the work, young padawan. You will come out stronger at the other end.

![[one-does-not-simply.png]]

## Build the right thing / Build the thing right

We don't want to imply a fixed order of importance. Both are important. A famous teacher and systems thinker (Russell Ackoff) once said: "it's better to build the right thing wrong then to build the wrong thing right". If you've built the right thing wrong you often get the chance to correct it.

Upshot: especially in the beginning of the project spend enough time understanding, discovering, exploring (designers say "marinating" yourself in the problem space). Knowing what the right thing is, or may be, helps enormously in focussing efforts on the right thing.

But even after the project has started, during the whole semester, you will often need to ask yourself: do we know what the right thing is, do we understand the problem or are we just building the wrong thing righter. Switching between problem space and solution space is constantly happening but knowing which space you and your team are in helps clarify the way you look at things.


%% https://medium.com/@nikhilgupta08/problem-space-vs-solution-space-f970d4ace5c %%

![[problem-space-solution-space.png]]

## Big "R" research and little "r" research

%%
https://helen.wilding.name/2024/04/19/from-small-r-research-to-big-r-research-and-back-again/
%%

During your previous semesters you have been introduced to the Dot Framework. You have been asked many times to write research reports. Knowing how to use these is an important skill. What is often not mentioned (or not enough) is the importance of small "r" research.

This could be described casually as "thinking on your feet" or with the verb "researching" and which is done by experimenting. Learning is a process of discovery. At the start of a project there are many thing that you know that you do not know. These you could write down, upfront, in a project plan. But there are also things that you do not know that you don't know (the unknown unknowns). These you cannot specify upfront. They will come up during your work.

When something surprising happens. A piece of code that doesn't work. You have to code a feature that you never implemented before and don't know how to approach. These are moments for starting a shorter or longer experimental cycle. These force you to think about what is going on? How can I find out what's going on? Did this fix it? How do I know I fixed it?

Recognize these small-"r" research opportunities and use them well. Not because you need to add them to your (big-"R") research report but because you are curious, you want to know how it works and, afterwards, because you are proud of yourself for having figured your way out of this and have learned something new. These moments are the true accelerator of your learning. Not the expected problems you see in the first few weeks (the known unknowns).

## YAGNI: You Ain't Gonna Need It

There is an understandable temptation, especially when you encounter a great new tool, library or framework, to see use cases for it everywhere. Great! You are being enthousiastic. But there is a cost to all this shiny greatness.

There is convincing research that shows that in many software systems more than half (some even say between 64 - 80%) of the features are rarely or never used. Wouldn't it be great to spend more time on the features that really matter? Learn to think twice before pulling this great new library into your project. Ask yourself: "Am I suffering from YAGNI?".

Avoiding the implementation of these unused features you save yourself time, you reduce complexity, bugs and maintenance.

As teachers we like this one because it fosters a critical stance, critical thinking, towards shiny new objects. Not to suffocate your initial enthousiam but to save you from [architectural astronautics](https://www.joelonsoftware.com/2001/04/21/dont-let-architecture-astronauts-scare-you) as Joel Spolksy writes.

## First make the change easy, then make the easy change

Kent Beck is the creator of a software engineering method called [[SE - Software Engineering Methods#XP|Extreme Programming]] (invented before [[SE - Software Engineering Methods#Scrum|Scrum]] took over). In a blog post he offered this small software engineering haiku:

> For each hard change,
> Make the change easy
> (warning, this may be hard)
> then make the easy change

The most common explanation is that this is a plea for [preparing for code refactoring](https://martinfowler.com/articles/preparatory-refactoring-example.html). First work on cleaning up, reorganizing the code (which can be rather difficult and doesn't seem to get you closer to the goal of making the actual change) but in the end turns out to make the actual change almost trivial.

Kent thought this was such an important approach that he wrote a whole book about it: [Tidy First?](https://www.oreilly.com/library/view/tidy-first/9781098151232).

## Premature optimization is the root of all evil

This is a very common and causes a lot of time-waisting. Another way of saying this is "First make it work, then make it better or faster". It also causes unnecessary complexity. Trying to be too clever and making your code harder to read, debug and maintain.

Keeping things simple (just like making the change easy - as described above) is not easy. One solution is not to obsess too much about optimizations at first. Then when you have proof that the code is being slow, difficult to read, debug or maintain, only then, put effort into optimizing something.

## What? So what? Now what?

There are many ways of reflecting on your work. Individually, as a group - through the sprint retrospective. Using a 4, 5 or 6 step process such as STAR, STARR or STARRT. These are helpful and use them if you know them or are used to them. At a minimum you should ask yourself the following three questions:

- **What?** - What is the situation? What are the objective facts?
- **So what?** - What does it mean for us? How do we make sense of it? Sometimes you need to ask it multiple times to get to the real causes of an issue.
- **Now what** - If we know what it means how can we put it into practice, improve it? What are the next small steps we can take?

Most of the methods of reflection boil down to these three questions. When something surprising happens, stop and ask yourself these questions. At some point this will become a habit which can guide you through difficult terrain, through complex problems.

## Make work visible

Communication within your team is a key success factor. Your team members are not mind-readers. To work on a project together requires you to make your work visible. 

The [[SE - Software Engineering Methods#Agile|Agile]] approach is based on a pull-based work method and on self-organization.
For this tools such as planning-boards, issue management systems, version control systems, tests, etc. are super useful and platforms like GitHub, GitLab or CodeBerg contain most of what you need to do this succesfully.

An added advantage is that this will automatically leave behind the artefacts or professional products that you can incorporate into your portfolio.

Finally, this also helps your future self or others that will work with your software in the future.
