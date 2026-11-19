## **Why**

When talking about software quality control there might be the tendency to just write some test cases on different levels of the test pyramid and run them in your automated environment. There is not a very well thought design or reasoning behind it. Why do these test exists? What should they measure? Which tools fit best? Are there other tools that can validate your criteria? 

Tests also do not ensure that your quality criteria will be met, they only measure how the system behaves. If your system can do, what it is intended to do, depends on choices you make in your system. These are choices on the architectural level.

## **What**

System Thinking can help you in evaluating which choices you have to make to ensure specific behavior or being able to meet your quality criteria. This is done on the architectural level of your system. Suppose you want to build a system that should perform well when many users come online at the same time. What does it mean? Which quality criteria can we use? Should we go for an event based or micro-service architecture? What are the trade-offs.

## **How**

When working on your quality criteria, also take into account your software architecture and evaluate the impact your choices might have. Be curious, investigate what kind of patterns are common practice and evaluate the possible effects these patterns might have on the rest of your system (hypothesis). Rapid prototype a few options, compare and make an underpinned choice. By making your quality criteria measurable and selecting the right tools, you will have the opportunity to evaluate the results of your prototypes and make choices... 

Your _customer_ probably is not thinking on these details. They want just functionality and it should always behave 'good'. It is your job as a professional engineer to understand that there is more important details below that you need to understand to make a product that satisfy your customers. This is also one of the reasons that it is not a good idea to just build the functional features requested. Practice with seeing the big picture, which quality criteria are involved, and which choices should we make to ensure these criteria can be met.