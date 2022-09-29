/-
CS2120 Fall 2022 Sullivan. Quiz #1. Edit your answers into
this file using VSCode. Save the file to your *local* hard 
drive (File > Save As > local > ...). Submit it to the Quiz1
assignment on Collab.
-/

/-
#1: For each of the following questions give a yes/no answer 
and then a very brief explanation why that answer is correct.
To explain why your answer is correct, name the specific rule
of inference that tells you it's correct, or explain that 
there is no such valid inference rule.
-/

/-
#1A

If a ball, b, is round *and* b is also red, is b red?

A: yes/no: yes

B: Why? because "b == red", so be is red.


#1B

If flowers make you happy and chocolates make you happy,
and I give you flowers *or* I give you chocolates, will
you be happy?

A: yes/no: yes

B: Why? because "chocolates make me happy" == true.


#1C: If giraffes are just zebras in disguise, then the 
moon is made of green cheese?

A. yes/: no

B. Why? because giraffes are just zebras in disguise != the moon is made of green cheese.


#1D. If x = y implies that 0 = 1, then is it true that
x ≠ y?

A. yes/no: yes

B. Why? because x = y impies 0=1, so x == 0 && y == 1, then x != y



#1E. If every zebra has stripes and Zoe is a Zebra then
Zoe has stripes.

A. yes/no: no

B. Why? because zebra has stripes and Zoe, but they are not Zoe; Zebra contains zoe, but zebra != zoe.


#1F. If Z could be *any* Zebra and Z has stripes, then 
*every* Zebra has stripes.

A. Yes/no: no

B: Why? because Z is zebra and Z has stripes doesn't mean all zebra has stripes.


#1G. If whenever the wind blows, the leaves move, and 
the leaves are moving, then the wind is blowing.

A. yes/no: No

B. Why? because we cannot impliy the condition through results, only implying from condition (wind blows) to results (leaves move).


#1H: If Gina is nice *or* Gina is tall, and Gina is nice,
then Gina is not tall. (The "or" here is understood to be
the or of predicate logic.)

A. yes/no: yes

B. Why? because Gina is tall is in an "or" statement, which means there is possibility that Gina is not tall.
-/



/- 
#2

Consider the following formula/proposition in propositional
logic: X ∨ ¬Y.

#2A: Is is satisfiable? If so, give a model (a binding of 
the variables to values that makes the expressions true).
Yes, it is satisfiable when X = true and Y = true.

#2B: Is it valid? Explain your answer. 


-/


/-
#3: 

Express the following propositions in predicate logic, by
filling in the blank after the #check command.

If P and Q are arbitrary (any) propositions, then if (P is 
true if and only if Q is true) then if P is true then Q is 
true.
-/

#check _yes. Because P is true only if Q is true, then if P is true then Q is true.



/-
#4 Translate the following expressions into English.
The #check commands are just Lean commands and can
be ignored here. 
-/


-- A
#check ∀ (n m : ℕ), n < m → m - n > 0

/-
Answer:if n and m are true only if they are nature numbers, then if n is larger then m implies that m minues n is larger than 0.
-/

-- B

#check ∃ (n : ℕ), ∀ (m : nat), m >= n

/-
Answer: if n is true for any natural number and m is true only if it is nat, then m is larger than or equals to n.
-/


-- C

variables (isEven: ℕ → Prop) (isOdd: ℕ → Prop)
#check ∀ (n : ℕ), isEven n ∨ isOdd n

/-
Answer: given if and only if n is natural number, then n is ture, then impies the expression (even natural number n or odd natural number n).
-/


-- D

#check ∀ (P : Prop), P ∨ ¬P

/-
Answer: P is true if and only if P is prop, then impies whether P or not P.
-/


-- E

#check ∀ (P : Prop), ¬(P ∧ ¬P)

/-
Answer: P is true if and only if P is prop, then impies the expression of "Not" expression of "P or Not P".
-/


/-
#5 Extra Credit

Next we define contagion as a proof of a slightly long
proposition. Everything before the comma introduces new
terms, which are then used after the comma to state the
main content of the proposition. 

Using the names we've given to the variables to infer
real-world meanings, state what the logic means in plain
natural English. Please don't just give a verbatim reading
of the formal logic. 
-/

variable contagion : 
  ∀ (Animal : Type) 
  (hasVirus : Animal → Prop) 
  (a1 a2 : Animal) 
  (hasVirus : Animal → Prop)
  (closeContact : Animal → Animal → Prop), 
  hasVirus a1 → closeContact a1 a2 → hasVirus a2
  Both a1 and a2 are random type of animals, there once a virus that make both two animal get it if one of them already has it and they contact each
  other very closely. One day, a1 is informed to get the virus and from the recording we know that a1 and a2 often contact very closely even during the
  time a1 has the virus, then we know that a2 also gets the virus.


