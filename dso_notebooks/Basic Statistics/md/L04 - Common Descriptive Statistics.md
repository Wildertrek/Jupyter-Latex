```c-lms
activity-name: Common Descriptive Statistics
topic: Overview
video-id: Common Descriptive Statistics
video-url-mp4: https://player.vimeo.com/external/231927377.hd.mp4?s=3b3fd01a84ad49ec0b7ef3b9316e5e7e68be51e1&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/231927377.hd.mp4?s=3b3fd01a84ad49ec0b7ef3b9316e5e7e68be51e1&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/231927377.hd.mp4?s=3b3fd01a84ad49ec0b7ef3b9316e5e7e68be51e1&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/231927377.sd.mp4?s=64c59387fb981e9788eeb2ef0865ed20984c00f1&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/231927377.sd.mp4?s=64c59387fb981e9788eeb2ef0865ed20984c00f1&profile_id=164
```

# Overview

This lesson is an introduction to descriptive statistics that are used frequently. 

Descriptive statistics are derived from the opportunity to sample a population over and over again.

When this lesson is completed successfully, you will be able to calculate descriptive statistics.

A quiz will assess concept mastery at the end of this lesson.

```c-lms
topic: Population Parameters and Sample Statistics
video-id: Parameters and Statistics
video-url-mp4: https://player.vimeo.com/external/315975449.hd.mp4?s=ee3ef647a2d032180d4817974cc65465655cb2af&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/315975449.hd.mp4?s=ee3ef647a2d032180d4817974cc65465655cb2af&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/315975449.hd.mp4?s=ee3ef647a2d032180d4817974cc65465655cb2af&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/315975449.sd.mp4?s=ff44b9238229ee16516ed99f451f76994826bde3&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/315975449.sd.mp4?s=ff44b9238229ee16516ed99f451f76994826bde3&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L04-pg3tutorial.zip)**.

# Population Parameters and Sample Statistics

Did you notice the alliteration there? When you are describing a sample, you use the term sample statistics. When you are describing a population, use the term population parameters.  However, the ways to describe a population or a sample are usually the same - for instance, the mean.  You calculate the mean the same, whether it is a population parameter or a sample statistic.  Just the name changes.

Statistics is the branch of mathematics that uses samples to estimate population parameters.  

One of the secrets of data that usually doesn't get talked about is this: It is pretty much impossible to know the true value of population parameters. Does that sound reasonable? If you think about it, how could you possibly know the true mean weight of all 15-year-olds? First of all, the value is constantly changing. People lose and gain weight every day, and people turn from 14 to 15 and from 15 to 16 every moment of every day. Even if you could freeze everyone's age and body weight for a certain amount of time to take all the measurements, it would take too much time. Nobody would want to do it. You can learn a lot about a population by looking at a small, manageable subset of the population.

---

## Descriptive Statistics vs. Inferential Statistics

* **Descriptive Statistics** are used when you just want to describe your data.  

* **Inferential Statistics** are used when you are trying to make conclusions (i.e. inferences) about your data.

---

## Descriptive Statistics

In the upcoming pages, you will learn about some basic descriptive statistics, including:

* Measures of Central Tendency
    * Mean
    * Median
    * Mode

* Measures of Distribution
    * Range
    * Variance
    * Standard Deviation
    * Inter-Quartile Range

* Measures of Frequency
    * Count
    * Percents
    * Proportions

---

## Workshop on Spreadsheet Software

The remainder of this lesson assumes a basic knowledge of either MS Excel or Google Sheets.  If you've never used a spreadsheet program before or would like a refresher, you can check out the video below, which covers: 

* How to open Excel and/or Google Sheets
* Scrolling through data
* Columns versus rows
* Typing in and completing formulas
* Highlighting data
* Creating equations
* How to download Google Sheets files
* How to save Excel files 

**[Basic Excel and Google Sheets Workshop](https://vimeo.com/353693628)**

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Descriptive Statistics Quiz 
```

```c-lms
topic: Measures of Central Tendency
video-id: Measures of Central Tendency
video-url-mp4: https://player.vimeo.com/external/315975353.hd.mp4?s=c5c22df8010d8e9436350a4f91c2adfd675cf856&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/315975353.hd.mp4?s=c5c22df8010d8e9436350a4f91c2adfd675cf856&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/315975353.hd.mp4?s=c5c22df8010d8e9436350a4f91c2adfd675cf856&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/315975353.sd.mp4?s=3d6d4d4352e109d00a10f4dd5cae5ffb801c1070&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/315975353.sd.mp4?s=3d6d4d4352e109d00a10f4dd5cae5ffb801c1070&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L04-pg4tutorial.zip)**.

# Measures of Central Tendency

Measures of Central Tendency are meant to help you determine where the majority of your data points lie.  They show the estimated middle of your data.  There are three measures of central tendency: Mean, Median, and Mode.  However, most statistics will be focused on testing the mean.  The median and mode are unsung heroes.

---

## Mean

Mean is also referred to as the average. To calculate the mean of a sample, add up all the values and divide the total by the size of the sample.  For example, to calculate the mean for a list of these numbers:

```text
5
7
9
4
3
```

First, add them all together:

```text
5 + 7 + 9 + 4 +3 = 28
```

Then divide the sum by the number of numbers: 

```text
28 / 5 = 5.6
```

This yields a mean of **5.6**.  

You will notice that doing this manually is relatively easy when you have a small number of numbers, but if you had a long list, this would get tedious quickly.  Luckily, there are many programs that quickly and easily calculate the mean for you if you just provide it with the data.

Try an example with **[this dataset](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/Ages.zip)**.  In MS Excel, you can use the ```=average()``` formula to get the mean of the data just by highlighting it.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>Don't have MS Excel? Check out  <a href='https://www.libreoffice.org/target="_blank'>Libre Office</a>, which is free but nearly identical to MS Excel and will serve you better than other options like Google Sheets. </p>
    </div>
</div>

---

## Calculating Means for Different Variable Types

The method of calculating the mean for continuous quantitative variables is discussed above. Other types of variables will be discussed below.

---

### Categorical Variables

The mean for a categorical variable doesn't exist. If your categorical variable is "preferred type of music" and your only choices are Country, Jazz, Classic Rock, and Hip-Hop, how would you express the average of that? You might determine which musical style is the most popular among the group of people you surveyed, but that isn't the same as the average.

Even if your categorical variable looks like a number, and you can calculate the average value, that doesn't mean you should; it probably won't make any sense.

---

### Discrete Quantitative Variables

To calculate the mean for a discrete quantitative variable, you need to take into account the probability that each response will occur. In the case of a six-sided die, you assume that each side will occur with a probability of 1/6. The general approach to calculating the mean is to take each possible response, and multiply it by the probability that response will occur, and then add them all up.

For a single die, you have the following table:

![A chart with headings roll, probability, and roll times probability. Row one, one, one sixth, one sixth. Row two, two, one sixth, two sixths. Row three, three, one sixth, three sixths. Row four, four, one sixth, four sixths. Row five, five, one sixth, five sixths. Row six, six, one sixth, six sixths. Total, twenty one sixths equals three point five.](Media/L03-02.png)

As you can see, the total of each possible outcome multiplied by the probability of the outcome is 21/6, which equals 3.5. It is interesting to note that the "average" roll for a six-sided die is actually not a possible outcome at all. This is very common with means for discrete random variables.

The example above is theoretical because the mean is based on theoretical probabilities. Suppose you calculated the mean again, but this time you will use real data instead of a theoretical probability for each roll.

If you rolled a single die 6,000 times, it is reasonable to expect that each number will appear about 1,000 times, but also extremely unlikely that each number will appear exactly 1,000 times. Look at some simulated data:

![A chart with headings roll, occurrences, probability, rolls times probability. Row one, one, one thousand sixteen, zero point one six nine three, zero point one six nine three. Row two, two, one thousand twelve, zero point one six eight seven, zero point three three seven three. Row three, three, nine hundred fifty eight, zero point one five nine seven, zero point four seven nine zero. Row four, four, nine hundred ninety nine, zero point one six six five, zero point six six six zero. Row five, five, one thousand two, zero point one six seven zero, zero point eight three five zero. Row six, one thousand thirteen, zero point one six eight eight, one point zero one three zero. Total, three point four nine nine seven.](Media/L03-03.png)

The probability column in this table is calculated by taking the number of occurrences of each roll, and dividing it by the total rolls, or 6,000. As you can see, the experimental mean is very close to the theoretical mean: 3.5 vs. 3.4997, which gives you confidence that the theoretical mean is correctly calculated.

---

## Median

The median indicates the exact middle value. To calculate the median, you sort all of the values from smallest to largest and then choose the middle value. If there are an even number of values, pick the two in the middle, calculate the "middle" of those two by doing a quick mean of those two values, and that will be your median.

Time to take a few numbers to practice with:

```text
5
7
9
4
3
```

If you were doing this by hand, the first thing you would need to do is sort them all from smallest to largest:

```text
3
4
5
7
9
```

Then, you'll want to find the middle.  Count the number of numbers you have, divide by two, and then count the whole number down.

```text
5 / 2 = 2.5
```

So count two down:

```text
3
4
```

And the next number is your median! Which is`5`!

You can easily do this in MS Excel by using the function `=median()`.  

<div class="panel panel-warning">
    <div class="panel-heading">
        <h3 class="panel-title">Try It!</h3>
    </div>
    <div class="panel-body">
        <p>Try it with the Ages dataset you downloaded above.</p>
    </div>
</div>

---

## Mode

The mode is the most frequently observed value in your sample. The mode is supposed to indicate relative popularity of a particular value, but it is easily manipulated and doesn't have much analytical value.

If you have this set of numbers:

```text
7
7
10
3
5
```

The mode would be 7, because it occurs twice and all the other numbers only occur once.

The MS Excel function for finding the mode is `=mode()`.  Feel free to try it with your ages dataset as well.  

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Mean Quiz
```

```c-lms
topic: Measures of Central Tendency Activity
```

```c-lms
start-activity: Measures of Central Tendency Activity
```

```c-lms
topic: Measures of Central Tendency Activity Solution
```

# Measures of Central Tendency Activity Solution

Here are the answers: 

* Mean: 69.2

* Median: 70

* Mode: 65

The way this was done in MS Excel can be found **[here](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/Heights_Answer.zip).**

```c-lms
topic: Measures of Distribution
video-id: Measures of Distribution
video-url-mp4: https://player.vimeo.com/external/315975378.hd.mp4?s=25f8e118c28c175a3044e0eab8b467c5af460a8a&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/315975378.hd.mp4?s=25f8e118c28c175a3044e0eab8b467c5af460a8a&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/315975378.hd.mp4?s=25f8e118c28c175a3044e0eab8b467c5af460a8a&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/315975378.sd.mp4?s=4fa7ab169c04a4d89ad1055566a6b263f10b37ab&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/315975378.sd.mp4?s=4fa7ab169c04a4d89ad1055566a6b263f10b37ab&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L04-pg7tutorial.zip)**.

# Measures of Distribution

## Minimum

Often referred to as the `min`, it is simply the smallest value in the sample.

In the data below, the minimum is 3.

```text
3
4
5
7
9
```

In MS Excel, you can find the minimum value by simply using the formula `=min()`.

---

## Maximum

Often referred to as the `max`, it is simply the largest value in the sample.

In the data shown above, the maximum is 9.

In MS Excel, you can find the maximum value by using the formula `=max()`.

---

## Range

If you take the maximum and subtract the minimum, you will have the range.

Given this data:

```text
3
4
5
7
9
```

The range is:

```text
9 - 3 = 6
```

You use range a lot in your every day life. For instance, how long is your commute? Are you thinking something like "it is 25 to 40 minutes, depending on traffic"? You have just identified the min and max for your commute, so your range is 15 minutes (max - min).

A range is expressed as a single value, max - min. Even though you might say your commute "ranges" from 25 to 40 minutes, proper use of the statistical term "range" is that your range is 15 minutes.

You can do this in MS Excel by first calculating the min, then calculating the max, and finally subtracting min from max.  

---

## Quartiles

"Quart" means *four*, and thus *quartiles* are when you break your data into four equal parts.  To get quartiles in MS Excel, you will use the formula =quartiles() and then after highlighting your data, you will also need to provide the number for the quartile you want.  If you use a 1, the first quartile will be provided. A 2 will provide the second quartile, and a 3 will provide the third quartile.  

It may help to visualize quartiles - the way this is typically done is with a box plot (also known as a box-and-whiskers plot).  In the graph below, the first line on the left, labeled as "lower whisker" marks the boundary of the first quartile, from the left side of the box to the middle line is the second quartile, from the middle line to the right side of the box is the third quartile, and the right side of the box to the rightmost line, labeled "upper whisker" is the fourth quartile.

![A box and whisker plot showing the outliers, lower whisker, lower quartile, median, upper quartile, and upper whisker. The scale runs from negative fifteen to five, in increments of five. Below the scale, text reads, Fun fact, the breakdown into quartiles is a little arbitrary. People have been known to break their data into quintiles open parentheses five groups close parentheses and even percentiles open parentheses one hundred groups close parentheses.](Media/DescriptiveStats3.png)

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Fun Fact!</h3>
    </div>
    <div class="panel-body">
        <p>The breakdown into quartiles is a little arbitrary.  People have been known to break their data into quintiles (five groups) and even percentiles (100 groups. </p>
    </div>
</div>

---

## Inter-Quartile Range

Inter-quartile range is almost always abbreviated as `IQR`. It is very similar to the range, but instead of max - min, it is 3rd quartile - 1st quartile. Referring back to the graph above, this would be just the area inside the box.  IQR is a useful sample statistic because it tends to ignore the effect of outliers (very large or very small data that don't mesh well with the rest) in your sample.

The range, as calculated above, emphasizes the outliers, because it takes the extreme maximum value and subtracts the extreme minimum value. If there are huge outliers, they have heavy influence and cause the range to be somewhat misleading as to the spread of the sample.

The IQR only looks at the "middle half" of the sample. If you order your sample from smallest to largest, the smallest quarter of values are below the 1st quartile, and the largest quarter of values are above the 3rd quartile.

Therefore, half the values in your sample don't influence the IQR, and they are the most extreme half of the values on both the low side and the high side.

As with the normal range, MS Excel won't do all the work for you, so you'll have to subtract the first quartile from the third in Excel once you've gotten them via formula.

---

## Percentiles

A percentile is a way of expressing where a value fits within a large sample. Have you ever heard someone say that their baby is in the 25th percentile for weight? Have you ever taken a standardized test, and they tell you that your score is 840 (which is meaningless), and your percentile is 82nd? What does 82nd percentile even mean?

It means that of all the people that have taken the standardized test, your score is better than about 82% of the people that took it, and about 18% of those who took it scored better than you. To calculate a percentile, order the sample values from smallest to largest.

Then, if you want the 82nd percentile (for instance), find the point at which 82% of your sample values are as small or smaller, and 18% are as large or larger. Percentiles work best if your sample size is larger than 100.

Some specialized percentiles have unique names. You have already learned about one: Median.  Median is the same thing as the 50th percentile.

---

## Standard Deviation

Standard deviation may be abbreviated as `stdev`, `SD`, or even just `s`. Standard deviation is a powerful statistic, but it is not very intuitive. In layman's terms, standard deviation measures the spread of values in a sample.  The bigger the standard deviation is, the more spread out the values in the sample are. Here is the equation for standard deviation, where you are finding the difference between a value (*x*) and the mean (*<span>x&#773;</span>*) , squaring it, and then summing it (the funny capital E shape means to sum).  Then you'll divide by the total sample size (*n*) minus 1, and take the square root of the whole kit and kaboodle!

![The equation to find the standard deviation.](Media/L04-01.png)

The good news is that you don't need to understand the equation, just familiarize yourself with the concept. Rest assured that practically every spreadsheet or programming language can calculate the standard deviation. In fact, try calculating the standard deviation with your Ages dataset right now! Use `=stdev.s()`.

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>The standard deviation will <b>NEVER</b> be negative. If you have calculated a standard deviation and it is negative, you made a mistake somewhere.</p>
    </div>
</div>

---

## Variance

Sometimes you will see this abbreviated as `var`. This statistic, just like the standard deviation, is powerful but not intuitive. The best way to think of variance is similar to how you think about standard deviation: the bigger the variance, the more spread out the sample data are.

To calculate the variance by hand, you take the standard deviation, and square it.

![The equation to find the variance of a sample](Media/DescriptiveStats4.png)

You'll notice that this formula is incredibly similar to the last, but it's missing a square root because the variance is the square of the standard deviation.  You'll also notice that variance has been denoted as `S squared` - again, the square of the standard deviation!

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>The word "variance" has a specific statistical meaning. "Variation" or "variance" are words often used just to indicate change, but this doesn't work for statistics! </p>
    </div>
</div>

<div class="panel panel-warning">
    <div class="panel-heading">
        <h3 class="panel-title">Try It!</h3>
    </div>
    <div class="panel-body">
        <p>To calculate variance in MS Excel, use the formula <code>=var.s()</code>. Go ahead and try it with the Ages dataset!</p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Measures of Distribution Quiz
```

```c-lms
topic: Measures of Distribution Activity
```

```c-lms
start-activity: Measures of Distribution Activity
```

```c-lms
topic: Measures of Distribution Activity Solution
```

# Measures of Distribution Activity Solution

Here are the answers: 

* Minimum: 60

* Maximum: 78

* Range: 18

* First Quartile: 65

* Third Quartile: 74

* Inter-Quartile Range: 9

* Standard Deviation: 5.25

* Variance: 27.61

The way this was done in MS Excel can be found **[here](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/Heights_Answer2.zip)**.

```c-lms
topic: Confidence Intervals
video-id: Confidence Intervals
video-url-mp4: https://player.vimeo.com/external/315975318.hd.mp4?s=a05ac0794560c4a97f8aaf357d9c36871b2fa89a&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/315975318.hd.mp4?s=a05ac0794560c4a97f8aaf357d9c36871b2fa89a&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/315975318.hd.mp4?s=a05ac0794560c4a97f8aaf357d9c36871b2fa89a&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/315975318.sd.mp4?s=78b4dfba20c20ab1ade0e209522e0ca316033288&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/315975318.sd.mp4?s=78b4dfba20c20ab1ade0e209522e0ca316033288&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L04-pg10tutorial.zip)**.

# Margin of Error and Confidence Intervals

Have you ever paid attention to political polling data? Usually, somewhere in the polling results, there will be something that says "+/- 3.2 percentage points". The "plus or minus" part is called the *margin of error*. Stated another way, the margin of error is the amount that your estimate can be wrong by. The +/- part of the margin of error is integral - because you can estimate too high or too low.  When you add the margin of error to the mean, the result is the *upper confidence limit.* When you subtract the margin of error from the mean, the result is the *lower confidence limit.* All together, the spread from the lower confidence limit to the upper confidence limit is called the *confidence interval.* 

![On the left, a vertical line represents the lower confidence limit. On the right, a vertical line represents the upper confidence limit. Equidistant between them is a vertical line that represents the mean. Between the lower confident limit and the mean is the lower margin of error. Between the mean and the upper confidence limit is the upper margin of error. The lower and upper margin of error together is the confidence interval.](Media/CI.png)

When you sample, you'll draw conclusions about the population by looking at a very small subset of the population. There is a risk doing this, because you are probably not representing the population exactly perfectly. The sample will have some error associated with it.

For this reason, when you use sample statistics to form judgments about population parameters, you typically report both the estimate of the parameter (for instance the mean) and a confidence interval around that estimate. The *confidence interval* tells you that the true mean falls somewhere within the range you have provided. 

---

## An Example 

For example, if you collect data from a sample of ceramic flooring tiles, you might report that the width is 11.96 inches, plus or minus 0.22 inches. The 0.22 inches is the margin of error.  If you take the mean, 11.96, and add and subtract 0.22 from it, you are left with 11.74 inches, which is your lower confidence limit: 

```text
11.96 -.22 = 11.74 = lower limit of the confidence interval
```

And 12.18 inches, which is your upper confidence limit: 

```text
11.96 + .22 = 12.18 = upper limit of the confidence interval
```

Altogether, you could say that the confidence interval is `11.74 - 12.18`. 

Having a confidence interval implies that you estimate the population parameter is 11.96 inches, but you are confident that the interval from 11.74 inches to 12.18 inches contains the true mean width of all tiles manufactured.

---

## Calculating Margin of Error

Up above, you were already provided a margin of error.  But, you can calculate it, given information about your sample: 

* *x*-bar = 24.1
* *s* = 0.96
* *n* = 42

There is a *critical value*, or CV, that helps you determine the margin of error. In this case, the CV is 2.58. The critical value is determine by how confident you want to be.  If you want to be 99% confident in your estimate, then your CV will always be 2.58.

Here is the formula for margin of error: 

![The equation to find the margin of error](Media/L08-03.png)

For your example, you can plug in the above numbers, and the margin of error is:

![Margin of error equals two point zero two times zero point nine six divided by square root of forty two equals zero point two nine nine](Media/L08-04.png)

Once you have the margin of error calculated, the confidence interval is easily constructed. To find the confidence interval, simply take the mean minus (`-`) the margin of error for the lower bound of the confidence interval, and the mean plus (`+`) the margin of error for the upper bound of the confidence interval.

In this case, the estimate (*x*-bar) is 24.1, and the margin of error is 0.3, which means that the confidence interval is 23.8 to 24.4.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Check out this Margin of Error and Confidence Interval Calculator!</h3>
    </div>
    <div class="panel-body">
        <p>There is <a href="https://www.woz-students.com/margin-of-error"> a website here </a> that will calculate margin of error and confidence interval for you! </p>
    </div>
</div>


---

## What Does the Confidence Interval Mean? 

The confidence interval is a declaration of how good your estimate is. Going back to the example of toddler weights, your summary would be something like "The estimated mean weight is 24.1 lbs, and the 95% confidence interval (this is often abbreviated as `CI`) is 23.8 to 24.4 lbs".

In general terms, the confidence interval really means that:

> There is a 95% chance the confidence interval includes the true mean.

You can choose to have confidence intervals at different levels.  The most common are 90%, 95%, and 99%.  The higher the percentage, the wider the confidence interval and the more certain you are about where the true mean falls. 

![A vertical line showing the mean of three different confidence levels, ninety percent, ninety five percent, and ninety nine percent.](Media/CIranges.png)

You can see that there is a lot more places the true mean could be in a 90% CI as opposed to a 99% CI.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>You may want to watch this <a href="https://vimeo.com/458358286"> recorded live workshop </a> that goes over the content on this page about confidence intervals. </p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Confidence Interval Quiz
```

```c-lms
topic: Measures of Frequency
video-id: Measures of Frequency
video-url-mp4: https://player.vimeo.com/external/315975438.hd.mp4?s=32b2e5c15952ea5e91986d425bfd5e43e7ca1adb&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/315975438.hd.mp4?s=32b2e5c15952ea5e91986d425bfd5e43e7ca1adb&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/315975438.hd.mp4?s=32b2e5c15952ea5e91986d425bfd5e43e7ca1adb&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/315975438.sd.mp4?s=b8f0ee087825238fd3d36526374f3dc3cef72289&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/315975438.sd.mp4?s=b8f0ee087825238fd3d36526374f3dc3cef72289&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L04-pg11tutorial.zip)**.

# Measures of Frequency

## Counts and Percentages

When a sample is collected, the size of the sample is expressed at the count. The sample count is part of many statistics, so in spite of its simplicity, it is important! 

Count is only a sample statistic, not a population parameter.

---

### An Election Example

Suppose it is an election year, and a polling firm is trying to get a feel for the electorate's preferences. They devise a survey asking which candidate you prefer in an election: Democrat, Republican, Independent, Other, or Don't Know/Undecided.

![A hand placing a ballot into a box at a polling place on election day.](Media/L03-12.png)

They survey a total of 570 people and want to report their findings. Clearly, the thing that is being measured is a preference, and it is a categorical variable.

This **IS NOT** how they will report their results:

> The first person you asked wanted the Republican, the second wanted the Democrat, the third wanted the Democrat, etc.

Instead, results will typically reported like this:

> Polling suggests that the Democrat is favored by 38.8%, the Republican by 27.5%, the Independent by 11.7%, somebody else by 2.3%, and 19.7% are undecided.

Better yet, the results will be tabulated:

![Democrat, thirty eight point eight percent. Republican, twenty seven point five percent. Independent, eleven point seven percent. Other, two point three percent. Undecided, nineteen point seven percent.](Media/L03-01.png)

This is typically called getting frequency counts, and as you've seen above, frequencies (how often something happened) often gets converted to percentages.

To report on categorical variables, you will either:

* Count up the number of "successes," such as hits, wins, completions, Democrats, or whatever you deem a "success" to be, and report that number.

* Count up the number of "successes" and divide it by the number of "opportunities" to report a success percentage.

---

### A Sports Example

Consider a quarterback. Each time he throws the ball, it is a completion, or it is not. Completion (Y/N) is a categorical variable where the possible values are "yes" or "no" as answers to the question of whether the pass resulted in a completion.

Post-game analysis never reports a quarterback's completion sequence was "yes, yes, no, yes, yes, yes, no, no..." Instead, they simply say the quarterback was 26 for 38, or report a completion percentage such as 68.4%.

---

## Proportion

Proportion is a very common statistic used to summarize categorical data. The calculation is done by taking the number of successes and dividing it by the number of possibilities. This is similar to probability, but proportion is calculated after the sample is collected, whereas a probability is usually theoretical, based on past experience or knowledge.

For example, if you are rolling a die, there is a 1/6 probability (0.167) that any one roll will result in a 3. On the other hand, if you roll a die 600 times, and there are 94 times that a 3 is rolled, then the proportion of 3 is 94/600, or 0.157.

It is common to report a baseball player's batting average, expressed as a proportion, rather than identify the sequence of base hits versus outs.

---

## Summary

Often it is difficult, if not impossible, to measure an entire population, so sampling is imperative.  There are many different ways to sample, and each has its merits for particular situations.  Unfortunately, the least rigorous method, convenience sampling, is the most often used method.

Once a sample has been collected, it can be used to describe or infer qualities about the population. Qualities are known as statistics in a sample, and parameters in a population.  A wide variety of sample statistics can be used to describe data, including measures of central tendency, measures of distribution, and measures of frequency. You were able to calculate most of these measures both by hand and using MS Excel formulas.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>Want a little extra information on using spreadsheets to calculate measures of central tendency and distribution? Then please watch <a href="https://vimeo.com/402778034"> this recorded live workshop! </a></p>
    </div>
</div>


---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Reporting on Variables Quiz
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
        <td style="font-weight: bold;" nowrap>Statistic</td>
        <td>Information about a sample.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Parameter</td>
        <td>Information about a statistic.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Mean</td>
      <td>The sum of all numbers divided by the number of numbers.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Median</td>
      <td>The exact middle of the dataset.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Mode</td>
      <td>The number that most frequently occurs.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Range</td>
      <td>The distance between the highest and the lowest number in a dataset.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Quartiles</td>
      <td>When the data is broken up into four equal parts (quarters).</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Inter-Quartile Range</td>
      <td>The distance between the third and first quartile.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Percentile</td>
      <td>When the data is broken up into 100 equal parts.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Standard Deviation</td>
      <td>A measure of the spread of values in a dataset.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Variance</td>
      <td>The square of standard deviation.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Confidence Interval</td>
      <td>An estimate of the amount of error around the mean.</td>
    </tr>
      <tr>
      <td style="font-weight: bold;" nowrap>Critical Value (CV)</td>
      <td>Something used to calculate the margin of error.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Count</td>
      <td>How often something occurs in the data.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Proportion</td>
      <td>How often something occurs in the data in relation to the whole dataset.</td>
    </tr>
</table>

---

## Key MS Excel Formulas

* `=average()` Calculates mean
* `=median()` Calculates the median
* `=mode()` Calculates the mode
* `=min()` Calculates the smallest value
* `=max()` Calculates the largest value
* `=stdev.s()` Calculates the standard deviation
* `=var.s()` Calculates the variance
* `=quartile()` Calculates the values for quartiles

```c-lms
topic: Lesson 4 Practice Hands On
```

```c-lms
start-activity: Lesson 4 Final Project
```

```c-lms
topic: Lesson 4 Practice Hands On Solution
```

# Lesson 4 Practice Hands On Solutions

---

## Part I

**Mean:** 218.3
**Median:** 218.5
**1st Quartile:** 207.25
**3rd Quartile:** 228.5
**Interquartile Range:** 21.3

---

## Part II

**Standard Deviation:** 19.6
**Variance:** 385.3
**Min:** 654
**Max:** 721
**Range:** 67

```c-lms
topic: Common Descriptive Statistics - Skills Assessment
```

```c-lms
start-activity: Lesson 4 Exam
```
