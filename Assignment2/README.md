# Assignment 2
# Group Members: Jillian Anderson and Jessie Roux
# Submission Date: 11/7/21
# Due Date : 11/7/21

# Description of Accomplished Parts: Jill and Jessie continued to utilize github. They were able to use the push and pull actions taking turns committing work. They booked multiple study rooms and Zoomed to ensure they were always working together. They were able to successfully complete all parts of the assignment as well as consider questions that arose throughout the process. They utilized lecture notes, professor office hours, SI sessions and office hours, and external research when needed.

# Difficulties: One difficulty we ran into was being reminded the importance of data types and proper pattern matching. We constantly asked ourselves "what should be returned and inputted" which helped this process. We used the errors that Haskell gave us to help correct our implementations. To be transparent, we struggled most with part 1 and 2 of the assignment. Once we reviewed abstract syntax trees and truly understood the roll they played in how we constructed our code we were able to find success. As for part 3, one thing we struggled with was ensuring we were using the correct context free grammar. Often times we were missing parentheses or having other syntax errors so referencing our grammar helped a lot.

# Testing: We created many test cases in order to confirm that our implementations were correct. We created taste cases for our Interpreter.hs file, our solutions.lc file and our solutions.hs file. We tried to create test cases that would exhaust our implementations in order to confirm that our functions would hold up under most if not all circumstances.

# Learnings: We learned so much about Haskell, Lambda Calulus, and recursion during this assignment.

# Interesting Observations:

# Connecting to Theory:

# Questions: One question we wanted to discuss was the question of why #:# does not parse but (#):# does. We spent a lot of time thinking about this question and ended up finding the answer in the grammar. For the ECons function the grammar shows that it takes in a Exp16 and an Exp15. Since # is an Exp15 it would not allow for the expression #:# because the lefthand side of the colon would need to be an Exp16 or higher. This Exp16 can either be an integer or another expression, meaning that (#):# is valid while #:# is not. Another question we considered involves the comparison between Assignment 1 and Assignment 2. In Assignment 1 we were able to use +, - and other operators for the many different functions that we wrote. However, for our implementations in Assignment 2 it was a bit more complicated then that. We had to create our own functions for add and subtract such as EPlus and EMinus. This is because for Assignment 2, we wanted to be able to add and subtract not just integers but expressions as well.