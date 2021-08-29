```c-lms
activity-name: Probability
topic: Overview
video-id: Single Event Probability and Boolean Logic
video-url-mp4: https://player.vimeo.com/external/231927241.hd.mp4?s=072a7cd5190e937aa20d419f01f10015e31cbb8d&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/231927241.hd.mp4?s=072a7cd5190e937aa20d419f01f10015e31cbb8d&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/231927241.hd.mp4?s=072a7cd5190e937aa20d419f01f10015e31cbb8d&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/231927241.sd.mp4?s=d6850f6bcb8041cac38eb420c5a7171fc494f32e&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/231927241.sd.mp4?s=d6850f6bcb8041cac38eb420c5a7171fc494f32e&profile_id=164
```

# Overview


**“Probability”** is not a word most people use every day. However, the concept of probability is on your mind regularly, even daily for most of us.

Have you ever gotten into rush hour traffic, and thought to yourself, *“What are the chances that I get home within 30 minutes?”* Have you ever checked the weather to see what the likelihood that your hike planned for the weekend gets rained out?

These are both examples of probability. In layman’s terms, probability is a numerical indication of *“chance”* or *“likelihood”* that something will or will not occur.  But when someone says there *"…is no chance he is going to make that light,”* there isn’t a lot of math behind the statement – it is just a guess.

Mathematically, the probability of something happening is determined by taking the number of different ways a *“successful”* outcome can happen, and dividing that by the total number of different ways something can happen - counting both successes and failures together. It is often easiest to illustrate this with examples of things that are familiar to most people.

---

## Objectives

By the end of the lesson, you will understand the following:

* **Single event probability**
* **Basic rules of probability**
* **Calculation of combinations and permutations**
* **Multiple event probability**
* **Probability of mutually exclusive and non-mutually exclusive events**
* **Probability with and without replacement**

The practice exam at the end of this course will help you assess your newfound probability skills.  

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>If it's been a while since you've done arithmetic, or if math is your white whale, it is recommended that you <a href="https://vimeo.com/352833910"><b> view this </b></a> workshop on Basic Math Skills first before diving into the remainder of this lesson.</p>
    </div>
</div>

```c-lms
topic: Single Event Probability
video-id: What is Probability? 
video-url-mp4: https://player.vimeo.com/external/314838248.hd.mp4?s=1df277b24e9094cb9f93720c228467cf21da496d&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314838248.hd.mp4?s=1df277b24e9094cb9f93720c228467cf21da496d&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314838248.hd.mp4?s=1df277b24e9094cb9f93720c228467cf21da496d&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314838248.sd.mp4?s=e76e4c19e9d8449d2e3e1595949b665e8664e9de&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314838248.sd.mp4?s=e76e4c19e9d8449d2e3e1595949b665e8664e9de&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg2tutorial.zip)**.

# Single Event Probability

Single event probability is finding the likelihood of a success when you are only considering one factor.  Probability is just the number of successes over the total number of all probabilities, as shown below:

![P equals successes divided by total outcomes.](Media/probability7.png)

For example, if you flip a coin, and you define “success” as tossing a “heads,” then the probability of tossing a “heads” is equal to the number of ways you can toss “heads” (only one way) and dividing it by the number of total outcomes. Since the only possible outcomes are “heads” or “tails,” there are two possible outcomes.

![P open parentheses heads close parentheses equals outcomes that are quote heads end quote divided by all possible outscomes equals one divided by two.](Media/L01-01.png)

The way to read the above equation is as follows: The probability of “*heads*” is equal to the outcomes that are “*heads*” divided by the total outcomes, which is equal to ½.

---

## Additional Examples

### Dice

Suppose you have a six-sided standard die.  

![A cube shaped die with the side showing three dots facing upward. The side showing five dots and the saide showing one dot are visible.](Media/L01-22.png)

The probability of rolling a 4 on a single roll is 1/6, because the "*successful*" outcome (rolling a 4) can only happen one way, and the total number of different outcomes, whether it is a success or a failure, is six. Therefore, successes divided by possible outcomes is 1/6.

![P open parentheses rolling a four close parentheses equals outcomes that are a four divided by all possible outcomes equals one divided by six.](Media/probability1.png)

---

### Cards

Now consider a standard deck of cards. If you draw a single card, what is the probability of drawing a Jack?

![A deck of playing cards face up and fanned out so that the number, color, and suit of each card is visible.](Media/L01-23.png)

Well, the number of possible successes is 4, because there are 4 Jacks in the deck. The total number of possible outcomes is 52, because there are 52 cards in the deck.

![P open parentheses Jack close parentheses equals four divided by fifty two equals one divided by thirteen.](Media/L01-13.png)

What about the probability of drawing a Spade? There are 13 spades in a deck, which becomes the top of your fraction, or the numerator.  Since there are 52 cards in the deck, that becomes your total number of possible outcomes and you place it on the bottom of the fraction (the denominator).

![P open parentheses Spades close parentheses equals thirteen divided by fifty two equals one divided by four.](Media/L01-14.png)

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>You will notice that in the last two examples above, you have found the initial probability, and then include a second equals sign with another probability after it.  This is called reducing a fraction! You will divide the top and bottom by the same number until you can't divide equally anymore to reduce a fraction.  Reducing fractions can often simplify your message - no one cares about 13/52, but they might take notice if you mention "one-quarter!" </p>
    </div>
</div>

A lot of probability makes its way into gambling. Rest assured that the "*house*" thoroughly understands the principles of basic and advanced probability. For all games of chance, the probability that the house will win is greater than the probability that you will win. For games where you are pitted against other gamblers, such as poker and (to a lesser extent) blackjack, your skill level with probability is a great predictor for your potential winnings.

---

## Ways to Express Probability

Probabilities are often expressed as fractions, percentages, or decimals.

If your probability is a fraction, the **numerator** (*the top number*) **must** be smaller than the **denominator** (*the bottom number*).  If you go back to the example of drawing four Jacks from a standard deck of cards, you'll remember that you had 4/52.  However, this fraction can be reduced - meaning that it is not in its simplest form.  Put another way, you could still divide this further. Four goes into 52 thirteen times, so you can change this fraction to be 1/13 instead.  

If your probability is a percentage, it must be between 0% and 100%. To convert a number to a percentage, simply multiply it by 100 and add the percentage (%) sign. To convert from a percentage to a number, divide the percentage by 100. This doesn't require a calculator; just move the decimal point two places to the left.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Single Event Probability Quiz
```

```c-lms
topic: Probability Rules 1 & 2
video-id: First and Second Rule of Probability 
video-url-mp4: https://player.vimeo.com/external/314838220.hd.mp4?s=ec36d33cf03a77f713258531c7a644b03df5ca0c&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314838220.hd.mp4?s=ec36d33cf03a77f713258531c7a644b03df5ca0c&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314838220.hd.mp4?s=ec36d33cf03a77f713258531c7a644b03df5ca0c&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314838248.sd.mp4?s=e76e4c19e9d8449d2e3e1595949b665e8664e9de&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314838220.sd.mp4?s=86f36e26dd19316afdac5e1fb3d58d5ed95797dd&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg3tutorial.zip)**.

# Rules of Probability

Probability has some basic rules, which are listed here and will be expanded upon throughout the course of this lesson:

**1. All probabilities are between 0 and 1.**

**2. There are no negative probabilities.**

**3. The total of all possible outcomes is 1.**

**4. The probability of an event NOT happening is equal to 1 minus the probability of the event happening.**

---

## 1. All Probabilities are Between 0 and 1

* A probability can be 0, which means there is no chance of the event happening.

* A probability can be 1, which means the event will definitely happen.

Or it could be somewhere in between! But probability will never be greater than 1.

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>This is a good sanity check when you are solving probability problems - if the answer is not between 0 and 1, you have made a mistake somewhere. </p>
    </div>
</div>

---

## 2. There are NO Negative Probabilities

Since probability has to fall between 0 and 1, it stands to reason that there will be no negatives! Anything negative will fall below zero and thus is not allowed.  

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Probability Rules 1 & 2 Quiz
```

```c-lms
topic: Probability Rule 3
video-id: Third Rule of Probability 
video-url-mp4: https://player.vimeo.com/external/314838228.hd.mp4?s=341ce9d18ca32f5972e1703cdd730d425cae6782&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314838228.hd.mp4?s=341ce9d18ca32f5972e1703cdd730d425cae6782&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314838228.hd.mp4?s=341ce9d18ca32f5972e1703cdd730d425cae6782&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314838228.sd.mp4?s=befdb2703775d4d7a810fcc76bb462590eff28dc&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314838228.sd.mp4?s=befdb2703775d4d7a810fcc76bb462590eff28dc&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg4tutorial.zip)**.

## 3. The Total of ALL Possible Outcomes is 1

If you have a situation where you know all of the possible outcomes, then if you add up the probability for each individual outcome, the total should be 1.

For example, consider eye color. Suppose you have a classroom with 42 students, and each of them is labeled with an eye color from one of these four choices: black, brown, green, or blue.

![A human eye with an iris that is red, blue, green, and yellow.](Media/L01-24.png)

Suppose you know the following probabilities:

```text
Black eyes = 9%

Brown eyes = 22%

Green eyes = 41%
```

But you don't know what the probability of a student having blue eyes is. Since these are the only 4 choices, the probabilities must add to 1, or in this case, 100%, all you need to do to determine the probability of blue eyes is determine the percentage that will make the total 100%. Since the black, brown, and green eyes total 72%, then the blue eyes must be 28% to total 100%.

```text
100% - 72% = 28%
```

<div class="panel panel-danger">
    <div class="panel-heading">
        <h3 class="panel-title">Caution!</h3>
    </div>
    <div class="panel-body">
        <p>This eye color example is pretty straightforward, because nobody can be labeled with two different eye colors. However, there are situations where categories may overlap, and in those cases, this rule will not apply.</p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Probability Rule 3 Quiz
```

```c-lms
topic: Probability Rule 4
video-id: The Final Rule of Probability 
video-url-mp4: https://player.vimeo.com/external/314838206.hd.mp4?s=275e3eb8cf703e590e96a22fb22504b3062bb99c&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314838206.hd.mp4?s=275e3eb8cf703e590e96a22fb22504b3062bb99c&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314838206.hd.mp4?s=275e3eb8cf703e590e96a22fb22504b3062bb99c&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314838206.sd.mp4?s=0f4696e2a006a262e57b1c0ab1536197f79a34e3&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314838206.sd.mp4?s=0f4696e2a006a262e57b1c0ab1536197f79a34e3&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg5tutorial.zip)**.


# 4. The Probability of an Event Not Happening is Equal to 1 Minus the Probability of the Event Happening

This rule is going to sound obvious, but it is really powerful. The probability of an event not happening is equal to 1 - the probability of the event happening. For example, if the probability of rain tomorrow is 0.25, then the probability of no rain is 1 - 0.25 = 0.75.

The power in this rule comes from the fact that it is often much easier to calculate the opposite of the probability asked for, and then subtracting that number from 1 to get the answer you need.

**A simple example will help illustrate this rule:**

If you draw a single card from a standard deck of cards, what is the probability that the card is either a heart, club, or spade? you can look at this two ways. Since 39 cards are either hearts, clubs, or spades, then the probability of selecting one of those suits is 39/52, or 3/4.

On the other hand, the probability of selecting a heart, club, or spade is the same thing as the probability of not selecting a diamond. Since you know there are 13 diamonds in the deck, then the probability of selecting a diamond is 13/52, or 1/4.  According to rule #3, the probability of selecting a heart, club, or spade is equal to 1 - the probability of selecting a diamond, 1 - 1/4 = 3/4.

You found the correct answer both ways, so feel free to use whichever option makes the most sense to you for a particular problem!

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Probability Rule 4 Quiz
```

```c-lms
topic: Factorials
video-id: Combinations, Permutations, and Factorials 
video-url-mp4: https://player.vimeo.com/external/314837931.hd.mp4?s=75d287125e10e91d27a2c838b72489aadc5a3621&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314837931.hd.mp4?s=75d287125e10e91d27a2c838b72489aadc5a3621&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314837931.hd.mp4?s=75d287125e10e91d27a2c838b72489aadc5a3621&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314837931.sd.mp4?s=6b665a7695bf0e1e41baa503ee180f553dbef5af&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314837931.sd.mp4?s=6b665a7695bf0e1e41baa503ee180f553dbef5af&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg6tutorial.zip)**.

# Factorials

---

## Combinations

Have you ever seen a commercial for a sandwich shop, and heard the advertisement that there are "*millions*" of combinations for sandwich fixings? Do you believe it? It is not too hard to figure out the number of combinations possible, but it requires a bit more math first.

![A sandwich with deli meat, sliced tomatoes, cucumbers, and lettuce, and bread with sesame seeds.](Media/probability2.jpg)

---

## Factorials

There is a mathematical operation called the **factorial**. If you see factorial notation in a textbook, it probably will look like this: 4! No, I'm not really excited about factorials, the exclamation point is the notation here!  You'll read this as "*four factorial*". If you are writing code or using a function on a spreadsheet, it is usually written fact(4).

If you have a factorial, you will multiply the number of the factorial by all numbers smaller than it. So, if you have 4!, then it would equal 4 x 3 x 2 x 1, or 24. 

It follows then that 7! = fact(7) = 7 x 6 x 5 x 4 x 3 x 2 x 1 = 5040.

You'll note that factorials get big very quickly. 15! is greater than 1 trillion.

---

### Notes About Factorials

**A)** Factorials are not defined for negative numbers. In other words, (-5)! is not defined. That means it cannot be calculated, like dividing by zero.

**B)** Factorials are not defined for anything that is not a whole number (non-integers). So you cannot calculate 6.25!.

**C)** The factorial of zero will always equal 1, as will the factorial of 1, as shown below:  
```text
0! = 1
1! = 1
```

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>You can use the factorial calculator <a href="https://www.woz-students.com/combinations">shown here!</a></p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Factorials Quiz
```

```c-lms
topic: Calculating Combinations
video-id: Calculating Combinations 
video-url-mp4: https://player.vimeo.com/external/314837836.hd.mp4?s=6ce269172e53331c1499cfb801126e4f4817b38a&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314837836.hd.mp4?s=6ce269172e53331c1499cfb801126e4f4817b38a&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314837836.hd.mp4?s=6ce269172e53331c1499cfb801126e4f4817b38a&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314837836.sd.mp4?s=330b4171411afa8f5d95b2896872ba25919721ca&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314837836.sd.mp4?s=330b4171411afa8f5d95b2896872ba25919721ca&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg7tutorial.zip)**.

# Calculating Combinations

If you have 9 cards labeled with the letters A, B, C, D, E, F, G, H, and I, how many different ways can you select three of those cards? Well, you could begin trying to count them systematically:

* ABC
* ABD
* ABE
* ABF
* ABG
* ABH
* ABI
* ACD
* ACE
* etc.

But counting would get tedious very quickly, and it is easy to miss combinations without noticing. There is a mathematical way to find the number of combinations. The notation usually looks like one of these three options listed here:

![Statistical notation methods.](Media/L01-15.png)

Whichever one you choose, you will read this as "9 choose 3."

In general form, the notation reads *n* choose *x*.  Here's the formula:

![Uppercase C open parentheses n comma x close parentheses equals n factorial divided by x factorial open parentheses n minus x close parentheses factorial.](Media/L01-16.png)

Where the *`n`* stands for the total number of combinations, and the *`x`* stands for the number of combinations that you are selecting. **[Here is the link](https://www.woz-students.com/combinations)** to a website with the formula all set up and waiting for input.

So, for the example of "9 choose 3," here is how it would be calculated in this formula:

![Uppercase C open parentheses nine comma three close parentheses equals nine factorial divided by three factorial open parentheses nine minus three close parentheses factorial equals nine factorial divided by three factorial six factorial equals nine times eight times seven times six times five times four times three times two times one divided by open parentheses three times two times one close parentheses times open parentheses six times five times four times three times two times one close parentheses equals eight four.](Media/L01-17.png)

Before, it was noted that factorials get big very quickly, but this equation can be plugged into a calculator or spreadsheet with ease. The answer is 84. There are 84 different ways to choose 3 different cards from a pile of 9 cards.

If you stop and think about it for a minute, you will notice that "9 choose 3" and "9 choose 6" result in the same answer. This is because from a practical perspective, if you have 9 cards and you choose 3 of them, you are leaving 6 cards behind.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>This example assumes that order doesn't matter, that ABC, ACB, BAC, BCA, CAB, and CBA are the same thing because the same three cards were drawn. If order matters, then you are not looking at combinations, but instead permutations, which you'll cover on the next page.</p>
    </div>
</div>

---

### Combination Example

Suppose you flip a coin 5 times. What is the probability of flipping exactly 3 "*heads?*"

---

### Approach #1

You could list out all the possible outcomes, and then simply count up all the successful outcomes and divide that number by total possible outcomes:

```text
TTTTT, TTTTH, TTTHT, TTTHH, TTHTT, TTHTH, TTHHT, TTHHH,  
THTTT, THTTH, THTHT, THTHH, THHTT, THHTH, THHHT, THHHH,  
HTTTT, HTTTH, HTTHT, HTTHH, HTHTT, HTHTH, HTHHT, HTHHH,  
HHTTT, HHTTH, HHTHT, HHTHH, HHHTT, HHHTH, HHHHT, HHHHH
```

There are 10 outcomes with exactly 3 "heads," so the probability of tossing exactly 3 "heads" in 5 tries is 10/32, or about 0.313. The total number of outcomes is 32 - count the list above! 

This approach sounds easy at first glance, but it has some real weaknesses. It can be tedious to make sure that your list of possible outcomes is complete, and unless you are very methodical about it, mistakes are easily made. It can also be tedious to thoroughly count the number of successes. It is easy to miss one or count one extra, throwing your answer off.

Most importantly, if the possible outcomes become large (and they can get large quickly), it becomes impractical to write them all down. For example, there are 512 possible ways to flip 3 "heads" in 9 coin tosses. If you wanted to calculate the number of ways to arrange the first 8 letters of the alphabet, there are over 40,000 ways to do that.

---

### Approach #2

Often the best approach to solving a probability problem is to try and redefine the problem. So time to look at the 3 "heads" problem a different way.

Now it is a problem that can be solved mathematically. The previous lesson discussed combinations and this problem is now a question of combinations to determine the number of possible "*successes*", or getting 3 "*heads*".

For this problem, n is 5, because you are flipping a coin five times, and the x is 3, because you want three heads out of those five times. 

When you plug it into the combinations equation, you get a total of ten possible ways to get 3 heads out of 5 total coin tosses.  So the number of "successes," or the number of ways that 3 "heads" can be flipped, is 10.

![Uppercase C open parentheses five comma three close parentheses equals five factorial divided by open parentheses five minus three close parentheses factorial three factorial equals five factorial divided by two factorial three factorial equals five times four times three times two times one divided by open parentheses two times one close parentheses open parentheses three times two times one close parentheses equals one hundred twenty divided by two times six equals one hundred twenty divided by twelve equals ten.](Media/L02-04.png)

But you're not done yet! You have essentially found the numerator of your fraction, and you still need to calculate the denominator, or the number of possible outcomes. For each flip of the coin, there are two unique outcomes. For five consecutive flips of the coin, the number of possible outcomes is 2, happening 5 times, or 2 outcomes raised to the power of 5 flips of the coin, yielding 32:

```text
2 x 2 x 2 x 2 x 2 = 32
```

You'll notice that this approach yields the exact same result as above: exactly 3 "heads" in 5 flips of the coin is 10/32, or about 0.313.

It may appear that approach #1 is the preferred approach because it looks easier, and sometimes it is. But as numbers grow larger, or questions become more complex, approach #2 will become the only feasible option.  

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Combinations Quiz
```

```c-lms
topic: Permutations
video-id: Calculating Permutations 
video-url-mp4: https://player.vimeo.com/external/314837895.hd.mp4?s=d41dddcd0ed1d8c226c7d0d494e90e7c3b9e2a79&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314837895.hd.mp4?s=d41dddcd0ed1d8c226c7d0d494e90e7c3b9e2a79&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314837895.hd.mp4?s=d41dddcd0ed1d8c226c7d0d494e90e7c3b9e2a79&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314837895.sd.mp4?s=ba59620ca2d56557e13d5cf69c0d4d2d4250fe9c&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314837895.sd.mp4?s=ba59620ca2d56557e13d5cf69c0d4d2d4250fe9c&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg8tutorial.zip)**.

# Combinations vs. Permutations

When order does matter, you call this a permutation instead.

The question to answer with combination is "How many unique groups are there if order doesn't matter?"

The question to answer with permutation is "How many unique groups are there if order matters?"

Time to look at an example.

Suppose there is a committee consisting of 11 people:

* Amanda
* Boyd
* Chen
* Domingo
* Evelyn
* Farrah
* George
* Henry
* Isabel
* Jon
* Kelly

The committee decides to choose 3 people to be the committee leaders. How many different ways can 3 people be chosen from the 11?

Suppose the committee agrees to write everyone's name on a slip of paper, and then to draw them out of a bag to form the committee leaders.

If you are just looking at the leaders as a group of 3 people, and you don't care about titles or the order in which they were chosen, then this is a case where order doesn't matter, and it is a combination. To find all the ways to choose 3 people from 11, you would calculate:

![Uppercase C open parentheses eleven comma three close parentheses equals eleven factorial divided by three factorial eight factorial equals eleventh times ten times nine times eight times seven times six times five times four times three times two times one divided by open parentheses three times two times one close parentheses times open parentheses eight times seven times six times five times four times three times two times one close parentheses equals one hundred sixty five.](Media/L01-18.png)

On the other hand, if the committee decides to choose 3 leaders, and one will be president, one will be vice-president, and one will be treasurer, then you could still pick the same three people, say Evelyn, Kelly, and Chen, and there would still be several ways to assign those three people to the different positions. In this case, the order does matter, and it is a permutation.

---

## Calculating Permutations

Here is the formula for permutations. It is similar to the combinations formula, but you can distinguish it because it uses a *P* in place of a *C*.  The permutations formula also eliminates the first *x*! in the denominator.

![Uppercase P open parentheses n comma x close parentheses equals n factorial divided by open parentheses n minus x close parentheses factorial.](Media/L01-19.png)

Here is the **[link to a website](https://www.woz-students.com/combinations)** with the permutation equation.

To find all the permutations of 3 people from 11, you would calculate:

![Uppercase C open parentheses eleven comma three close parentheses equals eleven factorial divided by eight factorial equals eleven times ten times nine times eight times seven times six times five times four times three times two times one divided by eight times seven times six times five times four times three times two times one equals nine hundred ninety.](Media/L01-20.png)

It makes sense that there would be far more permutations than combinations. Did you notice that the number of permutations is 6 times the number of combinations? This is not a coincidence; once you have selected the three people that will be leaders, there are 6 different ways to arrange 3 things (people, in this case) in order.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>If you think you need a bit more help with Combinations and Permutations, check out this <a href="https://www.youtube.com/watch?v=nteRAoCGIXs&index=11&list=PLizLiuyQN-8bjQlfLK5C4IOtKhg2ga8vg"><b>video</b></a></p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Permutations Quiz
```

```c-lms
topic: Boolean Logic
video-id: Multiple Event Probability and Boolean Operators 
video-url-mp4: https://player.vimeo.com/external/314838026.hd.mp4?s=9541d556f0f75f12bd2acad0e9285763cf2b73d1&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314838026.hd.mp4?s=9541d556f0f75f12bd2acad0e9285763cf2b73d1&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314838026.hd.mp4?s=9541d556f0f75f12bd2acad0e9285763cf2b73d1&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314838026.sd.mp4?s=b502430900adbdcf5be330390cd206e3534349f6&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314838026.sd.mp4?s=b502430900adbdcf5be330390cd206e3534349f6&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg9tutorial.zip)**.

# Boolean Logic

Time to switch gears for a minute, and talk about Boolean operators. There are three Boolean operators: **And**, **Or**, and **Not**.

![Boolean operators. And, or, not.](Media/L01-26.png)

You will examine each individually.

---

## The "And" Operator

The **and** operator used in probability is a way to determine the chances of two different events both happening. For instance, if you wanted to determine the probability of owning both a puppy and a kitten, you would use an **and** statement. For your reaction to be "yes, that is true," then someone would would have both a kitten and a puppy.  Just owning a puppy or just owning a kitten is not sufficient.


![A venn diagram of two overlapping circles. The word puppy is in the left circle and the word kitten is in the right circle. The overlapping portion of the two circles is colored in. Above the diagram is the word and. Below the diagram is the phrase both terms.](Media/L01-27.png)

---

## The "Or" Operator

The **or** operator used in probability is a way to determine the chances of either event happening. If you wanted to determine the probability of someone having *either* a puppy or a kitten, you would use the **or** statement. This time, for your reaction to be "yes, that is true," then could own either a puppy, or a kitten, or both. 

![A venn diagram of two overlapping circles. The word puppy is in the left circle and the word kitten is in the right circle. The overlapping portion and the non overlapping portions of the two circles are colored in. Above the diagram is the word or. Below the diagram is the phrase either term, referring to the shaded in areas of the venn diagram.](Media/L01-28.png)

---

## The "Not" Operator

The **not** operator used in probability is a way to determine the chances of anything but a certain event happening. If you wanted to determine the probability of owning any other pet besides a kitten, you would use the **not** statement. Now, for your reaction to be "yes, that is true," a pet owner would just need to have any pet besides a kitten.  In the case of the graph below, this would be puppy - but since you have anything that is **not** a kitten, it could also include birds, snakes, or horses, for example. Any of these pets would make you think the outcome is "true," since this list does not include kittens.  

![A venn diagram of two overlapping circles. The word puppy is in the left circle and the word kitten is in the right circle. The non overlapping portion of the left circle, in which the word puppy appears, is shaded in. Above the diagram is the word not. Below the diagram is the phrase just one term, referring to the shaded in area of the venn diagram.](Media/L01-29.png)

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Boolean Operator Quiz
```

```c-lms
topic: Multiple Event Probability - And
video-id: Calculating "And" 
video-url-mp4: https://player.vimeo.com/external/314837666.hd.mp4?s=f1abed302f484b38208c77216052e851c7e69f42&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314837666.hd.mp4?s=f1abed302f484b38208c77216052e851c7e69f42&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314837666.hd.mp4?s=f1abed302f484b38208c77216052e851c7e69f42&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314837666.sd.mp4?s=3d328edc2b5a75f0462a39e0c565f68b6fed9f1c&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314837666.sd.mp4?s=3d328edc2b5a75f0462a39e0c565f68b6fed9f1c&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg10tutorial.zip)**.

# Probability of Two Events - The "And" Statement

If you wanted to calculate the probability of drawing the "Ace of Spades" out of a standard deck of cards, you could do it two ways:

![Close up of the corner of a black ace of spades playing card.](Media/Probability3.jpeg)

**1.** By noting there is only one card that is the "Ace of Spades", and there are a total of 52 cards, so the traditional approach of successes divided by opportunities would give you 1/52.

**2.** You could also say something like, "What is the probability of drawing a card, and having it be an Ace **and** a Spade?" Now this has become two events.

    These events are independent, because drawing a Spade doesn't change the probability of drawing an Ace, and drawing an Ace doesn't change the probability of drawing a Spade. The Boolean operator **and** tells you that you should multiply these two separate event probabilities together. The math is different if the events aren't independent. You will get to dependent events later.

    * There are 4 Aces, so the probability of drawing an Ace is 4/52, or 1/13 reduced.
    * There are 13 Spades, so the probability of drawing a Spade is 13/52, or 1/4 reduced.

So, the probability of drawing a card that is an Ace **and** a Spade is (1/13) x (1/4), which equals 1/52, which matches the answer you found above.

---

## Another Example 

If you flip a coin and roll a 6-sided die, what is the probability that you will get "heads" **and** a "5"?

![Top left, a nickel balanced on its edge on a surface. Bottom right, a red die with the side with five dots facing upward.](Media/probability4.png)

Here are all the possible results:

* H1
* H2
* H3
* H4
* H5
* H6
* T1
* T2
* T3
* T4
* T5
* T6

There are 12 possible outcomes, and only one of them is H5, so the probability is 1/12.

On the other hand, if you treat this as two separate events, then the probability of "heads" is 1/2, **and** the probability of a "5" is 1/6. Therefore, the probability of "heads" **and** "5" is:

```text
1/2 x 1/6 = 1/12
```

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>You can use the multiple event probability calculator <a href="https://www.woz-students.com/multiple-event">hosted on this website!</a></p>
    </div>
</div>


---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: And Quiz
```

```c-lms
topic: Multiple Event Probability - Or
video-id: Calculating "Or" 
video-url-mp4: https://player.vimeo.com/external/314837803.hd.mp4?s=cb42152e8be86e18119827d70d76875c0f7eb622&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314837803.hd.mp4?s=cb42152e8be86e18119827d70d76875c0f7eb622&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314837803.hd.mp4?s=cb42152e8be86e18119827d70d76875c0f7eb622&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314837803.sd.mp4?s=8a68cc2c2dab54fe2a78bf20e94bbb8eda7413b0&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314837803.sd.mp4?s=8a68cc2c2dab54fe2a78bf20e94bbb8eda7413b0&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg11tutorial.zip)**.

# Probability of Two Events - The "Or" Statement

Sometimes you are interested in calculating the probability of two different outcomes, where you don't care which one happens, but you do care whether or not *one* of them happens. For example, you can calculate the probability of drawing a "4" **or** a "7" from a standard deck of cards. This is done by simply adding the two different probabilities together. The probability of drawing a "4" is 4/52. The probability of drawing a "7" is 4/52. Therefore, the probability of drawing a "4" **or** a "7" is 4/52 + 4/52 = 8/52 = 2/13.

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>The adding method only works if the two events are mutually exclusive. If there is a possibility that both events could occur, then the math is a bit different and will be addressed later.</p>
    </div>
</div>

Would you look at the time! It's time for you to revisit the spinner and 10 sided die again! 

![On the left, a circle separated into four section, of which three have a size indicated, one fourth, one eighth, and one fourth. The remaining section of the circle does not have a size indicated, and an arrow crosses the circle from one of the one fourth sections into the section without a size indicated. On the right, a ten sided die.](Media/L02-01.png)

To ask "**or**" questions about this situation, you would have to ask something like - What is the probability of rolling a "9" **or** a "4"? Since each roll has a probability of 1/10, the probability of rolling a "9" **or** a "4" is:

```text
1/10 + 1/10 = 2/10 = 1/5
```

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>You can use the multiple event probability calculator hosted on  <a href="https://www.woz-students.com/multiple-event"><b>this website</b></a>!</p>
    </div>
</div>

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>Not sure how to handle a particular question? If it's <code>and</code> you'll multiply, if it's <code>or</code> you'll add! For more work with "and" and "or", check out <a href="https://www.youtube.com/watch?v=dRkUOAnN95I" target="_blank"><b>this video</b></a>!</p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Or Quiz
```

```c-lms
topic: Multiple Event Probability - Not 
video-id: Calculating "Not" 
video-url-mp4: https://player.vimeo.com/external/314837754.hd.mp4?s=7dc18f55cf7cf51bbd6b8d27a659bbd0ba9ce4d3&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314837754.hd.mp4?s=7dc18f55cf7cf51bbd6b8d27a659bbd0ba9ce4d3&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314837754.hd.mp4?s=7dc18f55cf7cf51bbd6b8d27a659bbd0ba9ce4d3&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314837754.sd.mp4?s=948764b9b0277f25f9e4f42b4138ccac8630b381&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314837754.sd.mp4?s=948764b9b0277f25f9e4f42b4138ccac8630b381&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg12tutorial.zip)**.

# Probability and the "Not" Statement

The way you calculate a "not" statement was also covered in the rules of probability:

> "The probability of an event not happening is equal to 1 - the probability of the event happening."

The notation for the **not** statement is often indicated with the `!` symbol. You may also see it as `!=`.

The equation below reads: "The probability of event A is equal to one minus the probability of not event A."

![Uppercase P open parentheses uppercase A close parentheses equals one minus uppercase P open parentheses factorial uppercase A close parentheses.](Media/L02-02.png)

Using the spinner example again, a NOT probability example would be: the probability of red = 1 - the probability of **not** red.

![On the left, a circle separated into four section, of which three have a size indicated, one fourth, one eighth, and one fourth. The remaining section of the circle does not have a size indicated, and an arrow crosses the circle from one of the one fourth sections into the section without a size indicated. On the right, a ten sided die.](Media/L02-01.png)

Since the probability of red is 1/8, and the probability of **not** red = the probability of blue **or** the probability of yellow, then the probability of **not** red is as follows: 

```text
P (NOT RED) = 3/8 + 4/8 = 7/8
```

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>Sometimes it helps to have something explained another way.  Check out <a href="https://www.youtube.com/watch?v=RHnWKNucL-U" target="_blank"><b>this video</b></a> for another example of probability and the <code>not</code> statement. </p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Not Quiz
```

```c-lms
topic: Exclusivity
video-id: Non-Mutually Exclusive Events 
video-url-mp4: https://player.vimeo.com/external/314838268.hd.mp4?s=7a60b5da7058cd0c5733db29617456eca05a0faa&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314838268.hd.mp4?s=7a60b5da7058cd0c5733db29617456eca05a0faa&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314838268.hd.mp4?s=7a60b5da7058cd0c5733db29617456eca05a0faa&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314838268.sd.mp4?s=b847e38f30fa185d2cf7a2ab616a3e3869a843b6&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314838268.sd.mp4?s=b847e38f30fa185d2cf7a2ab616a3e3869a843b6&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg13tutorial.zip)**.

# Mutually Exclusive vs. Non-Mutually Exclusive Events Probability

Oh! It's time again! Time to revisit the spinner and 10 sided die!

![On the left, a circle separated into four section, of which three have a size indicated, one fourth, one eighth, and one fourth. The remaining section of the circle does not have a size indicated, and an arrow crosses the circle from one of the one fourth sections into the section without a size indicated. On the right, a ten sided die.](Media/L02-01.png)

Are these two events (spinning the spinner and rolling the die) independent of each other? Yes. You can both spin the spinner and roll the dice. The outcome of one does not depend on the outcome of the other in any way. When you have two independent events, that is called being mutually exclusive.

Here's an example of a situation where mutual exclusivity does not exist:

Suppose you have a group of high school students, and all of them are on at least one athletic team. A keyword to tip you off here is *at least*.  A student can easily play more than one sport! You will refer to a situation where there is overlap as being non-mutually exclusive.

The sports played by the students are track-and-field, soccer, lacrosse,basketball, and baseball.

![Five women playing lacrosse.](Media/L01-25.png)

Here is the breakdown of students by sport:

```text
track-and-field = 27%

soccer = 41%

lacrosse = 31%

basketball = 21%

baseball = 35%
```

If you add up all these percentages, you get 155%, so it is obvious that the sports played are not mutually exclusive. Clearly, there are many students who are on at least two athletic teams.

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>Mutually exclusive groupings might not be obvious. It is important to think about whether exclusivity might be implied, even if it's not explicitly stated.</p>
    </div>
</div>

You can think of something that is not mutually exclusive as having overlap between categories.  

---

### Another Example

Another example of a non-mutually exclusive situation would be if you were going to calculate the probability of drawing a "3" **or** a black card from a standard deck. In this case, it is possible to draw a card that is both a "3" and black.

To calculate the probability of non-mutually exclusive events, you will find the probability of both events, and then subtract the probability that overlaps.

Using the example above, in which you wanted to draw a three or black card, you will need to first find the probability of drawing a three.  This is 4/52, because you have one 3 for each suit.  Then you will need to find the probability of drawing a black card.  This is 26/52, because there are 13 cards per suit and there are two suits that are colored black (spades and clubs).  Because you have the word **or** in the problem, you know that you should add these together.

```text
4/52 + 26/52 = 30/52
```

Remember that when you add fractions together, you just need to focus on the numerator, the top number in the fraction.  You leave that bottom number alone. It didn't do anything to you.

Moving on, if you didn't know about non-mutually exclusive events, this is probably where you'd stop - but the answer would be wrong! Because you know that there are some black threes, you need to then subtract them, because you have counted them twice above - they were counted once in the count of threes, and once in the count of black cards.  

So, there are only a couple (2) of black  threes.  That means you need to subtract them from your total:

```text
30/52 - 2/52 = 28/52
```

And 28/52 becomes your final answer in fraction form.  If you wanted, you could reduce this fraction down by dividing by 2, to give you 14/26, and then reduce again by dividing by 2 to give you 7/13.  You could also convert this to a decimal or a percentage, which would give you .54 or a 54% likelihood that you draw either a black card or a three.  When you apply good old common sense, this seems right - half the suits are black, and so you would expect the number to be over 50%.  

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Community Resource</h3>
    </div>
    <div class="panel-body">
        <p>Want another example of non-mutually exclusive probability? Take a peek at <a href="https://www.youtube.com/watch?v=UTopqvPxP-4" target="_blank"><b>this video</b></a>!</p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Exclusivity Quiz
```

```c-lms
topic: Probability with and without Replacement
video-id: Probability without Replacement 
video-url-mp4: https://player.vimeo.com/external/314838157.hd.mp4?s=1977ad502b01badfe5394b7db904b5a6b6d667ab&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314838157.hd.mp4?s=1977ad502b01badfe5394b7db904b5a6b6d667ab&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314838157.hd.mp4?s=1977ad502b01badfe5394b7db904b5a6b6d667ab&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314838157.sd.mp4?s=d728b577074e98df8ba90d2c35c23bc41b9c2987&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314838157.sd.mp4?s=d728b577074e98df8ba90d2c35c23bc41b9c2987&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg14tutorial.zip)**.

# Probability Without Replacement

Another tricky situation is probability without replacement.  Up to this point, as you have gone through examples, you have always assumed that if you were picking multiple things, they would be put back.  For example, if you are trying to pick two cards, you can either put the first card you drew back into the deck, or leave it out on the table.  If you put it back in the deck, then the probability doesn't change.  But, if you leave it out - *then guess what?* Now you are trying to pick a card from 51 cards in the deck, not 52, and your odds will change. 

Now, let's use what you just learned! It's time to try out an example of probability with and without replacement.

---

## What is the Probability of Drawing Two Aces From a Deck of Cards **With** Replacement?

![A hand turning up the corners of two playing cards, which are the red ace of diamonds and the black ace of spades.](Media/probability5.jpeg)

The probability of drawing the first ace is 4/52, because you have an ace for each suit of cards.

The probability of drawing the second ace is also 4/52, because you put the first card you drew back in the deck.

Because this is an **"and"** probability problem (ie. drawing one ace **and then** another), you just need to multiply these together. *When you multiply fractions, remember you need to multiply both the top and the bottom*. The probability of drawing two aces in a row is 16 / 2704.  You could reduce this down a little by dividing by 4 (as tere are 4 aces in a deck), to get 4/676.  You could then reduce it down even more by dividing by 4 again, so the fraction becomes 1/169.  You could also convert this to a decimal or a percentage, which would be .005 or .5%. 

---

## What is the Probability of Drawing Two Aces From a Deck of Cards *Without* Replacement? 

The probability of drawing the first ace is the same as before: 4/52.  You have 4 aces in the deck, one for each suit of cards.

But, when you don't put that first card back the probability for drawing a second ace changes.  Now, you have only 3 aces to draw in the deck, and the deck consists of only 51 cards.  This makes the probability of drawing a second ace even smaller - 3/51.

This is still an **"and"** problem, so you want to multiply the first and second fraction together:

```text
4/52 x 3/51 = 12/2652
```

You can reduce this to down by dividing by 12, so you'd get 1/221.  If it makes more sense, feel free to convert it to a decimal or a percent: .004 or .4%.  You'll notice that now your chances of drawing both aces is even smaller - you have reduced the pool to select from, so this makes sense.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Community Resource</h3>
    </div>
    <div class="panel-body">
        <p>Want another example of replacement probability? Take a peek at <a href="https://www.youtube.com/watch?v=dQ9r2S7NWLs" target="_blank"><b>this video</b></a>!</p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Without Replacement Quiz
```

```c-lms
topic: The Role of Probability in Data Science
video-id: Probability and Data Science 
video-url-mp4: https://player.vimeo.com/external/314838075.hd.mp4?s=b69ea713374c692d6a7b0fe075e5ca87ededee0f&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/314838075.hd.mp4?s=b69ea713374c692d6a7b0fe075e5ca87ededee0f&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/314838075.hd.mp4?s=b69ea713374c692d6a7b0fe075e5ca87ededee0f&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/314838075.sd.mp4?s=ce9b021d84fab90e248201d977aa883533d2c1c1&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/314838075.sd.mp4?s=ce9b021d84fab90e248201d977aa883533d2c1c1&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L02-pg15tutorial.zip)**.

# The Role of Probability in Data Science

One of the responsibilities of a Data Scientist is to perform designed experiments and hypothesis testing. In the world of designed experiments, a researcher usually comes up with a better way to do something, and what better way to prove that the new method is better than the old method than to test it out! To test these methods, the researcher will first split the subjects into two groups, next the researcher will apply the traditional method to one group of subjects, then the researchers own  method (hopefully better) will be applied to the other group of subjects, and lastly the researcher will closely review the results to see if the new method applied is more efficient than the old method.  

The researchers' hope is that the data will prove that both methods **DO NOT** produce identical results, and that the new method is actually better. The successful researcher does this by looking at probability! If there is less than a 5% chance that the results are identical, then the researcher's method is better! 

---
### *p* Value

When applied to statistical tests, you call probability the *p* value, or it is sometimes called "alpha" 

As you dig into additional statistics, you'll learn about the *p* value a whole lot more! For now, just recognize that probability is the foundation of any statistical test.

---

### The Word "Random"

As this lesson comes to a close, you'll get a glimpse of the word "*random*". That word has crept up in popularity in everyday usage as things random (or out of the ordinary) happen daily. Evidence suggests that it is used 5 to 10 times as often as it was 100 years ago, according to a Google word frequency search.

![A line graph. The x axis displays years, starting from nineteen ten and running to two thousand ten, in increments of ten years. The y axis displays percentages, starting at zero point zero zero zero zero zero percent and running to zero point zero zero four zero zero percent, in increments of zero point zero zero zero five zero. A line is shown on the graph, beginning at about zero point zero zero zero five zero percent in nineteen ten, slowly increasing until about nineteen forty five, more rapidly increasing until about nineteen seventy, staying somewhat level until about two thousand eight, and dropping quickly until two thousand ten.](Media/L01-30.png)

Did you like that random fact! 

In everyday conversation, you may hear someone make a statement like, "then they said this random thing about parakeets". In context, they usually mean the speaker seemed to change topics out of the blue but, in statistics, the word "*random*" means something else (quite the opposite actually).  A random event is an event that has the same chance of happening as all other events. A random sample is when all members of a population have the same chance of being selected. Statistics depends on randomness, often driven by a computerized selection of random numbers. The main reason for this is to remove bias from a study.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Fun Fact!</h3>
    </div>
    <div class="panel-body">
        <p>Humans are notoriously bad at coming up with random numbers "off the top of one's head", even though most think they are pretty good at it. Studies have repeatedly shown that this is the case. There is speculation that this happens because most humans are more comfortable being in the middle rather than on the extreme edges of anything, and "<i>randomly</i>" choosing numbers seems no different. </p>
    </div>
</div>

---

## Summary

Probability is the cornerstone of statistics because whenever you test hypotheses with your data, you will look for a less than 5% likelihood that results were due to chance.   In this lesson, you learned the basic rules of probability, how to calculate the probability of one or more events together using boolean operators, how to deal with special situations like non-mutually exclusive events as well as probability without replacement, and how to calculate the number of options when order doesn't matter (**combinations**) or when order does matter (**permutations**). You have gained a basic grasp on calculating probabilities! You probably never thought you would but you did and I'm proud of you!

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Want some more practice on probability?</h3>
    </div>
    <div class="panel-body">
        <p>Then check out these two sites: <a href="https://www.khanacademy.org/math/precalculus/prob-comb/basic-prob-precalc/e/probability_1"><b> Khan Academy</b></a> and <a href="https://www.testprepreview.com/modules/probabilty.htm"><b> Test Prep Review</b></a></p>
    </div>
</div>


---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Probability in Data Science Quiz
```

```c-lms
topic: Key Terms
```

# Key Terms

Below is a list and short description of the important keywords learned in this lesson. Please read through and go back and review any concepts you do not fully understand. Great Work!

<table class="table table-striped">
    <tr>
        <th>Keyword</th>
        <th>Description</th>
    </tr>
    <tr>
        <td style="font-weight: bold;" wrap>Probability</td>
        <td>The likelihood of an event happening.
    Probability is calculated by dividing the number of occurrences of an event by the number of possible occurrences of that same event.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" wrap>Factorial</td>
        <td>Expressed as <b>!</b> or (<b>fact</b>), this is equal to the factorial number times all the numbers that are less than the number in question.  <i>For example, 4! = 4x3x2x1.</i></td>
    </tr>
    <tr>
        <td style="font-weight: bold;" wrap>Combination</td>
        <td>The number of possibilities when order doesn't matter.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" wrap>Permutation</td>
        <td>The number of possibilities when order does matter.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" wrap>Boolean Operator</td>
      <td>An expression of logic, to include "<b>and</b>", "<b>or</b>", and "<b>not</b>".</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" wrap>And</td>
      <td>Possibility of multiple events happening together (<b>multiply</b>).</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" wrap>Or</td>
      <td>Possibility of one or another event happening (<b>add</b>).</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" wrap>Not</td>
      <td>Possibility of anything except a particular event happening (<b>subtract</b>).</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" wrap>Mutually Exclusive Events</td>
      <td>The probability of one event <em>does not affect</em> the other.  Events are <em>independent</em>, so boolean operators can be used as above.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" wrap>Non-Mutually Exclusive Events</td>
      <td>The probability of one event <em>does affect</em> the other.  You will need to subtract any overlap in events from the total after using the boolean operators above.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" wrap>Probability With Replacement</td>
      <td>After selecting an item, it <em>is</em> put back.  The odds are the same for selecting multiple items.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Probability Without Replacement</td>
      <td>After selecting an item, it is <em>not</em> put back, which changes the odds of drawing multiple items after the first.</td>
    </tr>
</table>

```c-lms
topic: Probability Skills Assessment
```

Next is an exam to review the recently covered material. This exam is _not_ graded. Please feel free to refer to your notes or the curriculum, since in the real world, you don't have to memorize everything - just know where to find the information! 

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>Want to review before your exam? Check out <a href="https://vimeo.com/401193638"><b> this recorded workshop</b> </a> on the different types of basic probability problems and how to think your way through some of the more difficult ones.</p>
    </div>
</div>

```c-lms
start-activity: Lesson 2 Exam
```
