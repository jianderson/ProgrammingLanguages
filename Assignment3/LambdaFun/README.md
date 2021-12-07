**Assignment 3**

**Group Members: Jillian Anderson and Jessie Roux**

**Submission Date: 12/07/21**

**Due Date: 12/08/21**

**Description of Accomplished Parts:**
Jillian and Jessie worked on this whole assignment together. They worked simultaneously on the assignment outside of class in study rooms. They continued to use git hub and the push and pulling tools to stay on the same page. They referenced their class notes, lecture recordings and problem solved together on paper. 

**Difficulties:**
One difficulty that Jessie and Jillian ran into was ensuring to have correct syntax. They were able to solve these issues through the errors provided which helped lead to the correct solutions. They also referenced the grammar for help, and the given newCList function. Another difficulty that Jessie and Jillian ran into was ensure that the pointers were pointing to the correct addresses depending on the given functions. Hand drawing out the lists, and also experimenting on lamMem helped a lot with this process. 

**Testing:**
As for testing Jessie and Jillian tested each individual function through the console and then used the provided test cases to ensure the round-robin ran correctly. Once we saw all of the functions passed successfully we understood the round-robin was successful. Additionally, before we started the assignment we test with a lot of smaller examples in LamMem to get better understandings of the programming language and memory process. This also helped familiarize us with the syntax. 

**Learnings:**
This assignment has been a good refresher for how memory is stored on the stack and the heap. It was really cool and helpful to visually see the environment through the :env command. In data structures we were introduced to the stack and the heap and linked lists, but it was difficult to visualize how memory is allocated. As for part 1 for this assignment, it was a good way to learn the syntax of lambdafun as translated solutions.lc from assignment 2 which was written in lambdanat to this new programming language. 

**Interesting Observations:**
One major interesting observation we came across in this assignment was how in our get and next functions, we could use a or a' due to the fact that we use a case of {}, so if we use a in the {} then it is a local variable differing from the a that points to the list. 

Another interesting observation to think about is inserting a node at the front of a circular linked list. This assignment asked us to create an insert function that takes in a list and an element, then inserts that element after the current element of the list. Therefore, if we want to insert an element at the front of the list we would have to take a different approach. Our initial thought to create this insertFront function would be to iterate through the list, until you reach the last node which will point to the first node. We will know it is the last node because the pointer address will be equal to the address of list a. From there, we can then insert using the same technique as before now having changed the current element to the last node of the list. 
