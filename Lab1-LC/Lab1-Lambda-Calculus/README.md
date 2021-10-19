# README

## Introduction

Our aim is to learn how to extend and modify a small programming language. We start with the pure and untyped lambda calculus, available in the folder [LambdaNat0](https://github.com/alexhkurz/programming-languages-2020/tree/master/Lab1-Lambda-Calculus/LambdaNat0). 

Recall that the [syntax](https://hackmd.io/@alexhkurz/S1D0yP8Bw) of the lambda calculus has only variables, abstraction (function definition) and function application. We formalise the syntax in [this context-free grammar](https://github.com/alexhkurz/programming-languages-2020/blob/master/Lab1-Lambda-Calculus/LambdaNat0/grammar/LambdaNat0.cf). To execute lambda-calculus programs, we need to know the  [operational semantics](https://hackmd.io/@alexhkurz/H1e4Nv8Bv) consisting of only one computation rule known as capture avoiding substitution or beta-reduction. We will formalise this operational semantics by writing an interpreter for the lambda caclulus in Haskell.

The untyped lambda calculus is a very small programming language an we want to extend this very basic language with new features. There are two main steps: Add the new feature to the parser and then to the interpreter. This is described in the section "The Work Cycle".

## Preliminary preparations

Requirements: git, Haskell, bnfc

How to get started: Download this directory and `cd` into it in a terminal. 
    
## How to Generate a Parser

- To **view the grammar** of the pure lambda calculus go to the folder `grammar` and  open `LambdaNat0.cf`. 

- To **create a parser** run

        bnfc -m --haskell LambdaNat0.cf
        make

<!--
If you cannot download or build [bnfc as described here](https://github.com/alexhkurz/programming-languages-2020/blob/master/BNFC-installation.md), you should still be able to run `make` as I uploaded to the folder `grammar` all files produced by `bnfc` (you may have to delete the executable `TestLambdaNat` in order to force make to do something).
-->

- To **parse a program** run, for example,

        echo "\x.x y z" | ./TestLambdaNat
    
*Exercise:* Write your own lamda calculus programs and parse them.
    
## How to Build an Interpreter

- To **view the interpreter** find the folder `src` and open `interpreter.hs`.
    
- To **compile the interpreter** run (in the folder `Lab1-Lambda-Calculus/LambdaNat0`)

        cp grammar/*.hs src 
        stack build

    The first command copies bnfc-generated files such as the definition of the algebraic data type for abstract syntax. The second command builds the interpreter itself.

<!--
If stack build fails:

- In case you get something that looks like 

      AesonException "Error in $.packages.cassava.constraints.flags['bytestring--lt-0_10_4']: Invalid flag name: \"bytestring--lt-0_10_4\""

  run `stack upgrade`, which should tell you sth like

      WARNING: Installation path /home/USERNAME/.local/bin not found on the PATH environment variable
      New stack executable available at /home/USERNAME/.local/bin/stack

   run `which stack` telling you where the current version of `stack` is. For example,
   
       which stack
       /usr/bin/stack
   
   Copy the new version to the old version:

       cp /home/USERNAME/.local/bin /usr/bin/stack
       
- On some installations where `stack build` fails, `cabal build` works. 
-->

## How to Test the Interpreter

- To **write a program** open a text editor and save the file in the folder `test` as, say, `myprogram.lc`. Or use one of the programs already available in the folder `test`.

- To **execute a program**  in the lambda calculus run

        stack exec LambdaNat-exe test/myprogram.lc

<!--
If you used `cabal build`, then `cabal exec` instead of `stack exec` should work. If it doesn't, search for the executable `LambdaNat-exe` and execute it by giving its full path, which should be `dist/build/LambdaNat-exe/LambdaNat-exe` ... if you encounter this problem under Windows try

    dist\build\LambdaNat-exe\LambdaNat-exe  test\myprogram.lc
    
If the executable was not created in the first place, come and see me in my office hours.
-->

**Homework:** Write your own lamda calculus programs and execute them. (Recall the lecture on Church numerals.)

For the assignment, instead of encoding numbers, conditionals, and recursion in the pure lambda calculus, we will go into a different direction. We will add features to the basic language until we have a language that looks very much like a simple functional programming language. 

## The Work Cycle: Build a New Language

The Work Cycle is used to add features to, say, `LambdaNat0`. **I highlighted in bold** the two steps that require actual work, the others steps are just for organisation and bookkeeping. 

Here we assume that we have `LambdaNatOLD` and want to build a new language called `LambdaNatNEW`. (First time you come here "OLD" is "0" and "NEW" is "1". "OLD" and "NEW" are place-holders for version numbers.)

1) Copy the directory `LambdaNatOLD` and all its content to a new folder called `LambdaNatNEW`.

2) Go to `LambdaNatNEW/grammar` and rename the grammar `LambdaNatOLD.cf` to `LambdaNatNEW.cf`. 

   - (You have to be careful if you want to choose a more descriptive name. The reason is that the names of bnfc-generated files need to be known to `stack` when you build the interpreter. You could use `LambdaNat.NewFeature.cf`.)

   - (This step is only needed if you want to make your own grammar. In the exercises for this lab, the new grammars are already given.)

3) **Change the grammar `LambdaNatNEW.cf` and add new features to the syntax of your programming language.**

4) To build the parser:

    a) Run `bnfc -m -haskell LambdaNatNEW.cf`.
    
    b) Run `make`. 

5) Write programs and parse them in the new language. 
   If not all tests run according to what you expect go back to 3).

6) Now we need to copy the old interpreter and the new grammar into the folder of the new interpreter. `cd` into `LambdaNatNEW`.
  a) Copy the Haskell-files produced by bnfc to the `src` folder that will contain the new interpreter. (For example, run `cp grammar/*.hs src` and do a `mkdir src` before if necessary.)
  b) Copy the old interpreter  in `../LambdaNatOLD/src/Interpreter.hs` to `src/Interpreter.hs`. 

7) Study how the interpreter `Interpreter.hs` uses the constructors of `AbsLambdaNat.hs` in order to evaluate the abstract syntax trees. **Modify the interpreter so that it can evaluate the newly added syntax of your programming language**, as defined in the new grammar (and, therefore, the new `AbsLambdaNat.hs`). This step (together with steps 8 and 9) may require the largest amount of work.

8) Run `stack build`. Debug the interpreter if it does not compile. 

9) Write a test program and save it in test/test.lc. Go to the parent directory `LambdaNat0` with `cd ..` and run the test program via 
`stack exec LambdaNat-exe test/test.lc`
If not all tests run according to what you expect go back to 6).

10) Let me know about your new programming language. 

