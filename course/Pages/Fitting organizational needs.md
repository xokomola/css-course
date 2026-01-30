---
status: REVIEW
source: Software Maintenance.docx
source-date: 2025-12-18T00:00:00
source-loc: 7. Core Skills - Complex Software Engineering
publish: true
exclude: false
section: Software Maintenance
type: Informational
---
## Why

As a software engineer, you always need to be able to validate your decisions work. For software products, this means validating if you are writing 'the right thing' for your stakeholders.

## What

This means you should understand the needs of the organization of the stakeholder, the problems or challenges they have, what kind of processes are/should be supported by software, and how they will know if your work is an improvement.

All of this means, that **your** mental model of the stakeholder's organisation represents the actual world. This way, you understand their challenges, and can communicate with the organization on those challenges.

## How

A practical way to do this, is with **Event Storming**. Created by Alberto Brandolini, and excellently explained Paul Rayner [talk at Yow Australia](https://www.youtube.com/watch?v=nVEHGhqAvJo). A written explainer on how such a session works, can be found at [Boldare](https://www.boldare.com/blog/event-storming-guide/#table-of-contents-how-does-it-work?).

Before you apply this with an actual external stakeholder, practice with the group so the execution of an event storming process is known. You can use the 'Description Requirements Event Storming' document for this.

The results of the event storming will be used by transforming the findings into user stories (at a sprint planning for instance). [User story mapping](https://www.easyagile.com/blog/the-ultimate-guide-to-user-story-maps/) is a technique to do this. - 

## Example: Task for Event Storming


> Select and act like one of the types of users in an event organiser organisation (f.i. sales person for end users, sales person for event locations, people who organize logistics, buyers of food/drinks, sellers of food/drinks somebody who needs to show movies etc. Act as your role during the event storming.

### Introduction

Develop an online system for organizing pop up movie events. The basic concept of pop up events is that at a certain time frame at an unexpected venue an event is organized or a shop is set up.

This concept is meant to break the stereotypical old-fashioned movie theatres and provide the user with a fresh outlook on the big screen experience. Targets are independent organizations which manage events.

The current event organiser who needs a pop-up movie event is a student organization that is part of a University. They often organize different events in which the students can participate in and they already set up a few movienight events in the past. They realized it is quite hard to keep track of all the people even when they were working with a single venue location at the university campus. They have expressed interest for setting up movie nights both outside and inside the university campus, using multiple rooms at once. As such, it was clear to them that managing everything will become quite burdensome and so they are currently looking for some solutions.

### Wants

To organize movie events for students more frequently Less overhead in setting up everything Let people pick their seats Have a real-time overview of the event How many people have bought tickets How many people are currently in the room

### Has

Physical venue Projectors Seats Screens

### Scope

a unique system, consisting of three elements: One web application for the creation and administration of movie events. One user-friendly website for people that would like to visit the event, where they can check out a movie schedule and book their tickets. A mobile app which can check the validity of the QR-codes of the sold tickets at the entrance. Must be a distributed application 

### Requirements

Administrator web app: 

* Describe events 
* Location 
* Capacity of cinema (how many people it contains) 
* Design the rooms for projections (layout) 
* Add movie 
* Schedule movie 
* Shareable link 
* Visualize the room 
* Arrange seats 
* Check user tickets if the QR scanner is offline) 
* Payment will use external payment service (paypal, ideal).

User web app: 

* Movies timetable, 
- Show timeslots and room with seats 
* Book ticket (via third party app) 
* User can reserve a seat 
* User can choose a seat and book it 
* Send email to user about booking details

Mobile application for QR Code Scanning

## References 

- [Event Storming cheat sheet](https://github.com/wwerner/event-storming-cheatsheet) for setting up an event storming session
- Alberto Brandolini, the creator of Event Storming, talks [about his experiences: 100,000 Orange Stickies Later](https://www.youtube.com/watch?v=fGm62ra_mQ8)