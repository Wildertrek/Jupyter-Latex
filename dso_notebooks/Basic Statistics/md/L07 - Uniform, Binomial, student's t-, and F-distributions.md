```c-lms
activity-name: Uniform, Binomial, Student's T, and F-Distributions
topic: Overview
video-id: Uniform, Binomial, Student's t-, and F-distribution
video-url-mp4: https://player.vimeo.com/external/231927495.hd.mp4?s=0cc273fd4c054575064f0c4ee0a92c1e0311029f&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/231927495.hd.mp4?s=0cc273fd4c054575064f0c4ee0a92c1e0311029f&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/231927495.hd.mp4?s=0cc273fd4c054575064f0c4ee0a92c1e0311029f&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/231927495.sd.mp4?s=b9e916867b0b0390c2f8f5843500122f0a1b293c&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/231927495.sd.mp4?s=b9e916867b0b0390c2f8f5843500122f0a1b293c&profile_id=164
```

# Overview

Now that you have covered the basics of a normal distribution, it is time to expand your library of common distributions. This lesson will focus on 4 more distributions (Uniform, Binomial, student's *t*, and *F*).

You will look at the parameters of each distribution and the practical applications of each, as well as lay the foundation for upcoming analyses. In the case of the *t* distribution, you will actually learn three analyses, called *t* tests as well.  

---

## Objectives

By the end of the lesson, you will:  

* Understand the properties of the uniform and binomial distributions
* Compute a single sample, dependent, and independent *t* test in MS Excel
* Understand the importance of effect size
* Learn about the *F*-distribution and the role it plays in ANOVAs

By the end of this lesson, you will be able to put the knowledge of *t*-tests to good use in your hands on, where you will analyze data in MS Excel.  You will analyze literary, medical, and meteorology data to help professionals draw conclusions about their data.

```c-lms
topic: Uniform Distribution
video-id: The Uniform Distribution
video-url-mp4: https://player.vimeo.com/external/317286196.hd.mp4?s=2d84e14446b4fe067bdddf63a3db218e38200304&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/317286196.hd.mp4?s=2d84e14446b4fe067bdddf63a3db218e38200304&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/317286196.hd.mp4?s=2d84e14446b4fe067bdddf63a3db218e38200304&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/317286196.sd.mp4?s=3a1964645de30651f1f5e986b07d47dd9798fc5c&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/317286196.sd.mp4?s=3a1964645de30651f1f5e986b07d47dd9798fc5c&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L07-pg2tutorial.zip)**.

# Uniform Distribution

# The Uniform Distribution

A variable that is uniformly distributed can be either continuous or discrete. 

![A graph showing a uniformly distributed variable with boundaries at six and eleven. The x axis runs from zero to fourteen in increments of one. The y axis runs from zero to zero point two in increments of point zero five. The area between six and eleven on the x axis and zero and zero point two on the y axis is shaded in.](Media/L06-01.png)

In this case you have a uniformly distributed variable with boundaries at 6 and 11. For this variable, any number between and including 6 and 11 is possible. It could be 8.2, or it could be 9.7522583. Every number within the boundaries has the same probability of occurring, which is why it is called "uniform." Any number outside of the boundaries is not possible, or it has 0 probability.

On the other hand, a discrete uniform random variable might look like this:

![A graph showing a discrete uniform random variable. The x axis is labeled x axis, number of possible outcomes. The y axis is not labeled. There are eleven equal and shaded vertical bars on the graph.](Media/L06-02.png)

Even though the bars are not labeled in this graph, suppose they are labeled 8 through 18. Since the variable is discrete, the value 9.3 will never happen, so the probability of that outcome is 0. Each number from 8 to 18 is possible and equally as likely as any other.

Each number 8 to 18 has a probability of about 0.091 of occurring. However, numbers less than 8 or greater than 18 are not possible, so their probability is 0.

A common example of a discrete uniform variable is the rolling of a single 6-sided die. Each number 1 through 6 has an equal probability of occurring (1/6 or 0.167), and it is impossible to roll a 0 or a 7 or greater with a single die.

A spinner with equal sized pie shape pieces is another example of a discrete uniform variable.

Even though it is much easier to find examples of discrete uniform variables than to find examples of continuous uniform variables, for the rest of this section you will focus on the properties of the continuous uniform random variable.

They are pretty uncommon in nature, but many software tools can generate a continuous uniform random variable. Here is a distribution of 10,000 random numbers generated by MS Excel, and then made into a histogram:

![A histogram showing a distribution of ten thousand random numbers bounded by two and four and generated by Microsoft excel](Media/L06-03.png)

These numbers were generated using 2 and 4 as the boundaries. The data are bucketed into buckets that are 0.1 units wide, and it gives the impression of being discrete, but you can imagine if the "curve" was smoothed a bit, and infinitely many random numbers were created, it would look a lot like the continuous distribution shown above.

---

## Population Parameters of the Uniformly Distributed Continuous Variable

Let's take a look at some of the population parameters of a uniformly distributed continuous random variable:

* **Mean:** The mean is simply the midpoint between the min and the max of a uniform distribution. Or, if you prefer, the mean of a uniform distribution is the same as the mean of the min value and the max value. In the distribution shown above, the mean is 3.

* **Median:** Because of symmetry, the median is also the midpoint of the min and the max. It is the same as the mean.

* **Standard Deviation:** The standard deviation is approximately 30% of the range. Since the range shown above is 2 (remember that range = max - min, so in this case the range is 4-2), the standard deviation is 0.578.

* **Min:** The min helps define the distribution. In the distribution shown above, the min is 2.

* **Max:** The max helps define the distribution. In the distribution shown above, the max is 4.

* **Range:** The range is max-min. In the distribution shown above, the range is 2.

The parameters that define the uniform distribution are the min and the max. There is nothing more you need to know in order to completely define the uniform distribution.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Uniform Distribution Quiz
```

```c-lms
topic: Binomial and Multinomial Distributions
video-id: The Binomial and Multinomial Distributions
video-url-mp4: https://player.vimeo.com/external/317286167.hd.mp4?s=de8d85d4c807184c7efbef9bcedbc9fc90451a25&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/317286167.hd.mp4?s=de8d85d4c807184c7efbef9bcedbc9fc90451a25&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/317286167.hd.mp4?s=de8d85d4c807184c7efbef9bcedbc9fc90451a25&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/317286167.sd.mp4?s=3e52a83938850ff21a4789e0a3808d83a766dcf9&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/317286167.sd.mp4?s=3e52a83938850ff21a4789e0a3808d83a766dcf9&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L07-pg3tutorial.zip)**.

# The Binomial Distribution

The binomial distribution is commonly used. Anytime you have a scenario where there are multiple trials, and each individual trial has a constant probability of success, the scenario is modeled with a binomial distribution.

This is a scenario for a categorical response variable, because each individual trial ends either in "success" or "failure." Bi means _two_, and there are only two options.  

---

### Examples of a Typical Binomial Distribution

* **Flipping a coin:** If flipping "heads" is defined as "success," then every flip of the coin is a binomial trial, and the "success" probability is 0.5.

* **Taking allergy medication:** If getting relief from your symptoms is a "success," then every time medication is taken becomes a binomial trial, and the "success" probability may be something like 0.8.

* **Running a red light:** If avoiding a citation is defined as "success," then every time you run a red light is a binomial trial, and the probability of success may be something like 0.95.

---

### The Binomial Distribution in Sports

* **Taking a shot on the basketball court:** If making the shot is defined as "success," then every time you shoot is a binomial trial, and the probability of success may be something like 0.4.

* **The quarterback throws a pass:** If a completion is defined as "success," then every time a quarterback attempts a pass is a binomial trial, and the probability of success may be something like 0.6.

---

### Recoding Multiple Outcomes to be Binomial

Even if there are more than two possible outcomes, you can easily define a single outcome as "success," and any other outcome as "failure:"

* **Rolling a 6-sided die:** If rolling a 5 is "success," then each roll is a binomial trial with a probability of success equal to 0.167.

* **Election polling:** If a poll response of "Republican" is defined as "success," then each time someone answers the poll is a binomial trial, and the probability of success might be something like 0.41.

---

### Recoding Quantitative Data to be Categorical and Binomial

If the response is quantitative rather than categorical, you can still use a binomial distribution to model the process:

* **Looking up the salary of a state employee:** If "success" is defined as a salary greater than $45K per year, then each time a salary is observed is a binomial trial. The probability of success might be something like 0.55.

---

# The Multinomial Distribution

The multinomial distribution is another distribution based on categorical outcomes. It is similar to the binomial distribution, but instead allows for more than two outcomes, not just "success" and "failures" like the binomial distribution.

```c-lms
start-activity: Binomial Distribution Quiz
```

```c-lms
topic: Single Sample t-Test
video-id: Single Sample t-Tests
video-url-mp4: https://player.vimeo.com/external/317286098.hd.mp4?s=a3efd6785f9da937052145570e1276bba3facadd&profile_id=175
video-url-mp4-1080:https://player.vimeo.com/external/317286098.hd.mp4?s=a3efd6785f9da937052145570e1276bba3facadd&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/317286098.hd.mp4?s=a3efd6785f9da937052145570e1276bba3facadd&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/317286098.sd.mp4?s=d1675b710d554162f1daf77142032598dc910e8e&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/317286098.sd.mp4?s=d1675b710d554162f1daf77142032598dc910e8e&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L07-pg4tutorial.zip)**.

# The Student's *t*-Distribution

In the early 1900s, a man named William Gosset worked at the Guinness brewery in Dublin. He was exploring how to make determinations about populations with sample sizes that could be quite small.

For instance, one of the things he was looking into was chemical properties in barley when the sample size was as small as 3. Even though he didn't invent the method, he published his findings in *Biometrika*. He used the pseudonym "student."  This is why his work has gone under the name "Student's *t*."

The *t*-distribution has many nice properties. One of them is that it is a good way to determine probabilities for normally distributed populations where the population standard deviation (sigma) is unknown.

In order to determine probabilities, one more parameter needs to be explained. There is this thing called *degrees of freedom* for the *t*-distribution. Degrees of freedom will always be associated with the sample size. For the *t*-distribution, if the sample size is *n*, then the degrees of freedom is (*n*-1).

An interesting thing about the Student's *t*-distribution is that it has a slightly different shape depending on the degrees of freedom. Below is the *t*-distribution for 3 degrees of freedom:

![A students t distribution with three degrees of freedom](Media/L06-09.png)

Now for 15 degrees of freedom:

![A students t distribution with fifteen degrees of freedom](Media/L06-10.png)

And lastly, for 30 degrees of freedom:

![A students t distribution with thirty degrees of freedom](Media/L06-11.png)

You will note that the *t*-distribution is very similar to the normal distribution. In fact, if you look closely, the normal distribution is overlaid on each of the above graphs of the *t*-distribution, in a light grey color.

As the degrees of freedom increases, the *t*-distribution looks more and more like the normal distribution, to the point that at 30 or more degrees of freedom, the *t*-distribution and the normal distribution are indistinguishable.

The *t*-distribution is useful for determining probabilities when sigma is unknown. Take a look at how the probabilities are calculated.

If you have a situation where you think the population mean is mu, and you take a sample of size *n* from that population, you can then calculate what is often called the *t-score*. Here is the formula:

![The equation for calculating the t score. T equals x bar minus mu divided by sample standard deviation divided by square root of n](Media/L06-13.png)

There are 4 variables in this equation. There is `mu`, which is the population mean. 

There is *`n`*, which is the size of the sample used. There is *`s`*, which is the sample standard deviation, which can easily be calculated by any number of spreadsheet or programming applications. Then there is *<code><span>x&#773;</span></code>*, pronounced *x*-bar, and it represents the sample mean.

This equation looks similar to the *z*-score equation used in the previous lesson, and it is. In general, the main difference is that the *z*-score is used when sigma is known, and the *t*-score is used when sigma is not known.

```c-lms
topic: Calculating the Single Sample t
```

# Calculating a Single Sample *t* Test

Time to do an example: Suppose you have a population of some manufactured product, say a widget. The plant manager wants you to test the widget for warping, and wants to know at what temperature warping begins. She says it needs to be able to run in a hot environment, say 280 degrees, so she wants to assume that warping doesn't begin until 305 degrees in order for there to be some buffer.

You have the necessary equipment, and you begin to test the widgets. She says you can only use 7 widgets for testing, because they will have to be scrapped and cannot be sold.

You select the 7 widgets, and test them. The data you collect for beginning of warpage is as follows:

```text
302.7
295.8
306.3
289.7
301.9
297.0
299.7
```

You plug these values into a spreadsheet, and then use the spreadsheet to calculate the mean and the standard deviation, as follows:

![A spreadsheet showing the temperatures at which seven widgets warp from heat. One column lists just the temperatures in Fahrenheit. Three hundred two point seven, two hundred ninety five point eight, three hundred six point three, two hundred eighty nine point seven, three hundred one point nine, two hundred ninety seven point zero, two hundred ninety nine point seven. In another column, x bar, two hundred ninety nine point zero one four three, and s, five point four two five three eight one.](Media/L06-14.png)

You now have all you need, and you can just plug these values into the equation for *t*:

![T equals two hundred ninety nine point zero one minus three hundred five divided by five point four two five four divided by square root of seven equals negative two point nine two](Media/L06-15.png)

Now that *t* has been calculated, you need to determine the probability associated with that *t*. To do this, you will use another applet similar to the *z*-score applet, but **[this one is for *t*](https://byuimath.com/apps/normprobwitht.html)**.

Now you'll plug the numbers in; but first, make sure that only the left tail is highlighted in green. Then, at the bottom left, enter -2.92. Last, go to the top where it asks for degrees of freedom.

Since your sample size is 7, then you have 6 degrees of freedom (7-1 = 6).  Plug a 6 into that spot. Your applet should look like this:

![A students t distribution with six degrees of freedom and an area of zero point zero one three three. On the left side of the distribution, t equals negative two point nine two zero. On the right side of the distribution, t equals two point nine two zero.](Media/L06-16.png)

The probability associated with these values is 0.0133. But what does that mean? If you assume the population of widgets has a "warpage" point of 305 degrees, then the probability that you would get a *t* = -2.92 or lower (that is why you highlighted the left tail) is 0.0133. In other words, it is not very likely. It is more likely that your assumption that the average warpage begins at 305 degrees is wrong.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Tired of calculating single sample t-test by hand?</h3>
    </div>
    <div class="panel-body">
        <p>Check out <a href="https://www.socscistatistics.com/tests/tsinglesample/default2.aspx">this online calculator,</a> which will allow you to enter in your data, the population mean, the level of significance, and whether the hypothesis is one or two-tailed and you'll get back the t-value!</p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: t-Test Quiz
```

```c-lms
topic: Paired Data
video-id: Paired Data
video-url-mp4: https://player.vimeo.com/external/317286087.hd.mp4?s=9b45e02cd9088da21003d686044bbda85b587900&profile_id=175
video-url-mp4-1080:https://player.vimeo.com/external/317286087.hd.mp4?s=9b45e02cd9088da21003d686044bbda85b587900&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/317286087.hd.mp4?s=9b45e02cd9088da21003d686044bbda85b587900&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/317286087.sd.mp4?s=2a8d089d3e6c1a3103b265f213e048ea4fe694f1&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/317286087.sd.mp4?s=2a8d089d3e6c1a3103b265f213e048ea4fe694f1&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L07-pg5tutorial.zip)**.

# Paired Data

## Paired vs. Independent

Data is paired, or dependent, when they are linked together in some way.  For instance, if you have the same person's data at different time points, they are linked together by the person. If, for each experimental unit in the first sample, there is a corresponding experimental unit of the second sample, then the samples are probably paired. Here are some examples of paired data:

* Pre- and post- scores are taken before and after a new training program. The pre- and post- scores for an individual are paired.

* Blood pressure is measured before and after treatment for several patients. The before and after measurements for each patient are paired.

* Several adults are given two different exams covering the same material. The test proctor is trying to determine if the tests are essentially the same level of difficulty. The two test scores for each individual are paired.

* Two different brands of bicycle tires are being compared to see if one of them wears better than the other. Several bikes are equipped with one tire from each brand, and they are given to subjects to ride for 3 months, and then the amount of wear is measured for each tire. Each individual bike will produce two measurements, one for each tire. These two measurements for each bike will be paired.

Data is independent if they do not relate to each other.  For instance, if you are testing two different weight loss programs, but the programs are composed of completely different people.

So, why do you care if the samples are paired? When comparing two samples, you are trying to see if the amount of variation sample to sample is big enough to call them "different." If there is a pairing that can be identified, the 'pair-to-pair' variation can be removed from the analysis. Anytime you can eliminate one or more sources of variation, your analysis becomes more powerful and more accurate.

---

## Pre- and Post-Test Designs

Pre-tests and post-tests are often used in education.  Teachers want to know how much a student has learned in their class, so they will get an idea of baseline knowledge with a pre-test, and see if the scores improve after the class on a post-test. How much knowledge the student gained in the course can be found by subtracting the initial, or pre-test score, from the final, or post-test score.

This is called a paired design, or dependent samples. It allows you to only have one group of people, rather than multiple, with a pair (or more) of samples drawn from the same person.  In the above example, the two samples drawn are the pre-test and the post-test.  If a student participates in the pre-test, they are automatically selected to participate in the post-test as well because keeping data paired is paramount. 

Looking at the overall change in scores is really the important thing with paired data. The pre-test knowledge does not matter as much as how much the scores improve over time.  You can conduct a hypothesis test to determine whether the mean of the difference between the pre- and post-test scores differ from each other. 

You will first explore an application of pre- and post-testing in a weight loss study.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Dependent t-Test Quiz
```

```c-lms
topic: Dependent t-Test Hand Calculation
video-id: Calculating the Dependent t-Test by Hand
video-url-mp4: https://player.vimeo.com/external/317286015.hd.mp4?s=89fbaf41670af76a3a824109dacc13fa21aae30b&profile_id=175
video-url-mp4-1080:https://player.vimeo.com/external/317286015.hd.mp4?s=89fbaf41670af76a3a824109dacc13fa21aae30b&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/317286015.hd.mp4?s=89fbaf41670af76a3a824109dacc13fa21aae30b&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/317286015.sd.mp4?s=70a21083cab66120d67e9437f7d897601dfbfdf3&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/317286015.sd.mp4?s=70a21083cab66120d67e9437f7d897601dfbfdf3&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L07-pg6tutorial.zip)**.

# An Example

After the tragic terrorist attack on 9/11/2001, which involved plane hijacking, many wondered what the impact had been on the airline industry, other than very long security lines.  The **[linked data](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/pre-post-9-11.zip)** show, among a few other variables, the average number of passengers per plane and the average price of plane tickets from the fourth quarter of 2000, and from the fourth quarter of 2001.  

![A spreadsheet showing air travel data. Headings include city one, city two, city one pop, city two pop, distance, average fare in two thousand, average passengers in two thousand, average fare in two thousand one, and average passengers in two thousand one.](Media/distribution7.png)

Notice the structure of the data. In columns F and H, you have the average price of place tickets before and after 9/11.  In columns G and I, you have the average number of passengers on the plane before and after 9/11.  This means the pre-9/11 number of passengers and the post-9/11 number of passengers are paired, as are the pre-9/11 fares and the post-9/11 fares.  For each row of data, both of these numbers came from the same flight path.  When you collect two observations of the same measurement on the same thing, it is called paired data. Sometimes paired data are also called dependent samples.

Time to set up your hypothesis! 

The null hypotheses is that the true mean difference is zero (H<sub>0</sub>: <span>D&#773;</span> = 0).

The alternative hypothesis is that there is a change in the average fare price. In other words, that the true mean difference is not equal to zero (H<sub>a</sub>: <span>D&#773;</span> <span>&#8800;</span> 0).

In the hypothesis test, the variable representing the difference is <span>D&#773;</span>, pronounced "`d bar`."

---

## Assumptions of the Dependent *t*-Test

All *t* tests are fairly robust, meaning that they are not very sensitive to violations of their assumptions.  However, it is good to test the assumptions, and correct for them if possible. The only assumption for the dependent *t* test is that the mean of the differences follows a normal distribution. 

---

## Calculating the Dependent *t*-Test by Equation

The equation for a dependent *t* test is as follows:

![The equation for a dependent t test. T equals mean of the difference scores minus zero divided by the standard error of the difference scores.](Media/105.L4.1.png)

Where `d bar` is the mean of the difference scores and *<code>S<sub><span>D&#773;</span></sub></code>* is the standard error of the difference scores.  The first thing you will need to calculate in this equation is the difference scores.  Then you will find the mean of those difference scores.

```text
Difference = Pre − Post
```

Add a column to the data table by simply creating a formula and populating it down the rows by clicking and dragging the little plus sign on the right down to auto-fill.

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>This is a somewhat large dataset.  Things will drag down faster if you put your mouse at the very bottom of the screen and then use the scroll wheel on your mouse if you have one. </p>
    </div>
</div>

![A spreadsheet showing air travel data. Headings include column A, city one, column B, city two, column C, city one pop, column D, city two pop, column E, distance, column F, average fare in two thousand, column G, average passengers in two thousand, column H, average fare in two thousand one, column I, average passengers in two thousand one, and column J, fare difference. Above the data is a formula, F two minus H two, to calculate the fare difference. Below the data reads, fun fact, mathematically it doesn’t matter whether you do column H minus column I, or column I minus column H.](Media/distribution8.png)

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Fun Fact!</h3>
    </div>
    <div class="panel-body">
        <p>Mathematically, it doesn't matter whether you do column H - column F, or column H - column F!</p>
    </div>
</div>

With your difference scores in hand, you can test for the assumption of normality of the difference score.  To test for normality, just examine a histogram of the difference scores. You can easily do this in MS Excel by highlighting the difference column, then going to the insert tab, the charts section, and selecting histogram from the tab that says "All Charts," shown below.

![An excel window used to insert a chart, with histogram selected.](Media/distribution9.png)

And here is the result:

![A histogram of fare difference.](Media/distribution10.png)

Although this graph shows pretty close to a normal distribution, if you don't have a normal distribution with your activity and hands on data, you can just ignore it for now, because *t* tests are so robust.  Later you will learn how to correct for non-normality. 

With a new column of differences, you can easily calculate the mean difference. For this dataset, the mean difference is 21.35 dollars.  Yes, you could do that by adding all the values up and then dividing by the number of rows - but luckily MS Excel has that handy  `=average()` command to find the mean in a trice - just highlight the data that you would like to average in the parentheses.

Now that you have found the mean of the difference scores, your equation looks like this:

![T equals twenty one point three five minus zero divided by S sub D bar.](Media/distribution11.png)

---
The next step is to calculate the standard error of the difference scores, using this formula:

![S sub D bar equals S sub D divided by square root of capital N.](Media/105.L4.2.png)

Where *<code>S<sub>D</sub></code>* is the standard deviation of the difference scores and *`N`* is the sample size.

Although you could calculate standard deviation by hand, again MS Excel has your back with an easy trick! `=stdev.s()` This yields a standard deviation of the difference as 31.61. When you plug that into the equation, along with your *N*, which is just the total number of rows, or 4,177, (remember `=count()` ?) you get this equation for the standard error of the difference scores, which you can solve for.

![S sub D bar equals thirty one point six one divided by square root of four thousand seventy seven](Media/distribution12.png)

When you plug that all into a calculator, you will find that the standard error of the difference scores is .49 when rounded up. With S<sub>D bar</sub> found, you can fill in the rest of your dependent *t* test equation and solve for it.

![T equals twenty one point three five minus zero divided by point four nine](Media/distribution13.png)

When plugged into a calculator, you'll find that your *t* value is **43.57**.  

---

## Interpreting the *t*-Test

That's great! But what does that 43.57 mean? How do you interpret it? Well, the first step is to find the degrees of freedom.  For a dependent *t* test, your degrees of freedom or "df" is going to be *N* - 1.  So, your df is 4,176. Armed with your *t* value and your degrees of freedom, you can find out whether this value is significant or not.  You can either pull out a [*t* table](httpss://www.sjsu.edu/faculty/gerstman/StatPrimer/t-table.pdf), or you can head to [an applet](https://byuimath.com/apps/normprobwitht.html) that does the same thing behind the scenes.

If you're using the table, you will look up your value of degrees of freedom on the far left.  Notice anything about this table? Well, it doesn't have every number listed, and it doesn't got past a thousand.  That's ok - just use the closest number.  In this case, you'll use the row for 1,000.  Then use a two-tailed test at *p* = .05.  Since your alternative hypothesis was just that the mean would not equal zero, this means it is a two-tailed test.  But if you had specified that the mean would be greater or smaller than zero, then you would have a one-tailed test. Assume that significance will be at .05 unless told otherwise; it is typically standard.

This gives you a *t* critical value of 1.962, which means that to be significant, your *t* value would need to be greater than 1.962.  Luckily, 43.57 is > 1.962, so you can say that this test was significant at *p* = .05.

If you're using the applet, then you just need to type in the *df* at the top, put your *t* values on the each side, and the area, or *p* value, will be automatically calculated for you.

![A students t distribution with four thousand one hundred ninety six degrees of freedom and an area of zero point zero zero zero zero e times ten raised to the power of zero. On the left side of the distribution, t equals negative forty three point five seven zero. On the right side of the distribution, t equals  forty three point five seven zero.](Media/distribution14.png)

<div class="panel panel-danger">
    <div class="panel-heading">
        <h3 class="panel-title">Caution!</h3>
    </div>
    <div class="panel-body">
        <p>Beware, though - in the applet you'll often get VERY small <em>p</em> values that will be expressed in scientific notation, as this one is here.  Anything that comes after the "e" in scientific notation means that you move the decimal place to the left the number of times indicated.  So, if it is 5.8855e-12, this means you move the decimal place 12 places to the left and put eleven zeros in front! You go from 5.8855e-12 to .00000000000058855, which is showing significant!</p>
    </div>
</div>

If you go back to your hypotheses, do you accept or reject the null hypothesis? You would reject the null hypothesis and accept the alternative, because your *p* value is less than .05, and because your *t* value is greater than the *t* critical value shown in the table.

When you do a two-sided test, you won't know what the difference is between the mean and zero -you just know that there is a difference! So, look at the means of the groups as a whole to see which one is larger.  In this case, the average air fare in 2000 was $209.97, while the average air fare in 2001 was $188.62.  

---

## Present your Conclusion in a Sentence, Relating the Result to the Context of the Problem

```text
There is sufficient evidence to suggest that the terrorist attacks on 9/11 impacted the price of airline tickets, making them cheaper.  
```

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Dependent t-Test Calculation Quiz
```

```c-lms
topic: Dependent t-Test Effect Size Calculation
video-id: Effect Size
video-url-mp4: https://player.vimeo.com/external/317286044.hd.mp4?s=06731e18f294a601a652b25f7ea75e8f25cd4583&profile_id=175
video-url-mp4-1080:https://player.vimeo.com/external/317286044.hd.mp4?s=06731e18f294a601a652b25f7ea75e8f25cd4583&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/317286044.hd.mp4?s=06731e18f294a601a652b25f7ea75e8f25cd4583&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/317286044.sd.mp4?s=3a6f2d3ee3de6cd1a718db6aa48783b441a77ab5&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/317286044.sd.mp4?s=3a6f2d3ee3de6cd1a718db6aa48783b441a77ab5&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L07-pg7tutorial.zip)**.

# Calculating Effect Size

Effect size is a better indicator than *p* value of how strong the findings of a particular test are, because *p* value depends on sample size via the degrees of freedom, but effect size does not.  This means that if you have a larger sample size, by default it is more likely that something is significant! Therefore, in many cases, people are either adding in an examination of effect size with their examination of *p* values, or may even skip *p* values altogether.  For dependent *t* tests, you can calculate effect size using a measure called Cohen's *d*. Cohen's *d* measures the proportion of variance in the dependent variable that is accounted for by the independent variable. In the example from last page, the independent variable is the time factor (pre or post 9/11), and the dependent variable is the airfare prices. 

Here's the formula for Cohen's *d*:

![The equation for Cohens D. D equals D bar divided by S sub D.](Media/105.L4.12.png)

Where <span><code>D&#773;</code></span> is the mean difference you have already calculated and <code>S<sub>D</sub></code> is the standard deviation of the difference scores (also already calculated). This is what the equation looks like when you plug everything in:

![D equals twenty one point three five divided by thirty one point six one.](Media/distribution15.png)

When put into the calculator, that gives you .68. You then need to interpret this value according to convention.

Interpretation of Cohen's *d*:

* **Small:** less than or equal to 0.2
* **Medium:** 0.3 - 0.5
* **Large:** 0.6 or greater

So, with a value of .68, this means you have a *large* effect size, and you can safely say that not only are the changes in air fare fromm pre to post 9/11 significant, but they also have a large effect size and represent a meaningful difference.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>You may want to watch this <a href="https://vimeo.com/452380186"> recorded live workshop </a> that goes over the concept of effect size and how to calculate it for both independent and dependent t-tests. </p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Dependent t-Test Effect Size Quiz
```

```c-lms
topic: Dependent t-Test in MS Excel
video-id: Calculating Dependent t-Tests in MS Excel
video-url-mp4: https://player.vimeo.com/external/317285988.hd.mp4?s=f8b4c42bb3235c489c2cab3fdaf631a4e89e2718&profile_id=175
video-url-mp4-1080:https://player.vimeo.com/external/317285988.hd.mp4?s=f8b4c42bb3235c489c2cab3fdaf631a4e89e2718&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/317285988.hd.mp4?s=f8b4c42bb3235c489c2cab3fdaf631a4e89e2718&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/317285988.sd.mp4?s=fbf46cdffe1ddd8004f7e0318179eb730f849e81&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/317285988.sd.mp4?s=fbf46cdffe1ddd8004f7e0318179eb730f849e81&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L07-pg8tutorial.zip)**.

# Dependent *t* Test in MS Excel

You used MS Excel as a calculation aid on the last page, but you can also actually conduct a dependent *t* test in MS Excel using the `=t.test` function.  

To compute the *p* value for a dependent *t* test in MS Excel, in an empty cell, type `=t.test(` it will then prompt you for the following:

---
To make sense of those prompts:

* **array1:** This is the first column, so you can highlight all of column B.
* **array2:** This is the second column.  You will highlight all of column C.
* **tails:** This is whether you want a two-tailed or a one-tailed test.  Nice and intuitive: type 1 for one-tailed and 2 for two-tailed!
* **type:** You have the option to test a paired, two-sample equal variance, or two-sample unequal variance *t* test in MS Excel.  They are in number order, so for a paired *t* test, you want to type in 1.  

This is what the completed formula will look like:

![A spreadsheet showing air travel data. Headings include column F, average fare in two thousand, column G, average passengers in two thousand, column H, average fare in two thousand one, column I, average passengers in two thousand one, and column J, fare difference. Columns L and M include data calculated from the air travel data in the previous columns, including mean difference, twenty one point three five three three seven, mean standard deviation, thirty one point six one four one five, sample size, four thousand one hundred seventy seven, mean in two thousand, two hundred nine point nine seven three two, mean in two thousand one, one hundred eighty eight point six one nine eight, and t test p value, equals t dot test open parentheses F colon F, H colon H, 2, 1, end parentheses.](Media/distribution16.png)

And the yield is just the *p* value. Does it look familiar? It should!

Using the *t* test formula in MS Excel makes things much easier, but doesn't provide as much information.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Dependent t-Test Excel Quiz
```

```c-lms
topic: Dependent t-Test Activity
```

```c-lms
start-activity: Dependent t-Test Activity
```

```c-lms
topic: Dependent t-Test Activity Solution
```

# Dependent t-Test Activity Solution

You will find the calculations completed in MS Excel as well as an example slide show for the Dependent *t*-Test Activity [here](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/Dependent_t_answer.zip). 

```c-lms
topic: Independent t Test
video-id: Independent t-Tests
video-url-mp4: https://player.vimeo.com/external/317286062.hd.mp4?s=8bca6990f2b40f130daf6e009990bf310cb32358&profile_id=175
video-url-mp4-1080:https://player.vimeo.com/external/317286062.hd.mp4?s=8bca6990f2b40f130daf6e009990bf310cb32358&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/317286062.hd.mp4?s=8bca6990f2b40f130daf6e009990bf310cb32358&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/317286062.sd.mp4?s=34c66c6238e72c0d269df1fd7d75496a77e6be7b&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/317286062.sd.mp4?s=34c66c6238e72c0d269df1fd7d75496a77e6be7b&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L07-pg11tutorial.zip)**.

# Independent *t* Test

## Paired vs. Independent

Time for you to review for a moment: How can you tell if data are paired? The key characteristic of paired data is that the subjects in Group 1 determines the subjects in Group 2. The data for each subject in Group 1 is paired with the data for a corresponding subject in Group 2. 

Two samples are independent if the participants in Group 1 tell you nothing about the participants in Group 2. Certainly, for a independent *t*-test, Group 1 and Group 2 do not consist of the same people, and they are not paired in any way.  

Suppose you want to compare the incomes of teenagers to adults. These two groups are independent; knowing the names of the teenagers in the data tells you nothing about the adults.  Similarly, knowing the names of the adults tells you nothing about the teenagers! This is because these groups are independent.

You can compare the mean income of teenagers to the mean income of adults using an *independent t-test*. You will conduct hypothesis tests to determine whether the means of each group differ (<code>μ<sub>1</sub> − μ<sub>2</sub></code>).  This is similar to the dependent *t*-test, but in the dependent *t*, you examined the difference of differences between the means, and here you can skip the "finding the difference" step.

---

## Hypothesis Testing

### **Case Study:** Concussion Rates in Male and Female Athletes 

Is there a difference in the number of concussions received by gender? 

---

### Summarize the Relevant Background Information

**[Here is the data](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/concussion.zip)** on male and female college athletes.  It includes information on the sports they played, their gender, the number of concussions, and the academic year.

Take a look at the data file, and make note of the way the data is shaped. Males and females all in one column, and the number of concussions is in another column. This is a common way to store data for a two sample independent *t* test. It differs from the two sample paired test, where data are typically stored in rows for each pair. 

---

### State the Null and Alternative Hypotheses and the Level of Significance

The null hypothesis is that there is no difference in the number of concussions for men and women. 

The alternative hypothesis is that men and women will have different rates of concussion.  

These hypotheses are expressed mathematically as:

H<sub>0</sub>: μ<sub>1</sub> = μ<sub>2</sub>

H<sub>a</sub>: μ<sub>1</sub> ≠ μ<sub>2</sub>

You will use the α = 0.05 level of significance.

---

### Give the Relevant Summary Statistics

You will use <code>x-bar<sub>1</sub></code> to denote the mean number of concussions for men, <code>s<sub>1</sub></code> for the male standard deviation, and <code>n<sub>1</sub></code> for the male concussion sample size. For women, you will use <code>x-bar<sub>2</sub></code>, <code>s<sub>2</sub></code>, and <code>n<sub>2</sub></code>, respectively.

Summary Statistics:

![A spreadsheet with headings statistic, female, and male. Row one beneath the headings, mean, twenty point two six six six seven, sixteen point nine three three three three. Row two, standard deviation, nineteen point four three six five nine, twelve point two seven three four seven, sample size, fifteen, fifteen.](Media/Distribution19.png)

Were you surprised that the means are relatively similar? Why might this be the case?

---

### Test for Assumptions 

In order for an independent *t* tests to be accurate, the data must be normally distributed for each group. You must examine the groups separately; it is not sufficient to combine the groups and produce a single graph, because you would obscure any differences between the groups.

Here are the two histograms for men and women:

![A histogram of male concussions](Media/Distribution18.png)

![A histogram of female concussions](Media/Distribution17.png)

Neither of them look normally distributed! No bell-shaped curve here.  Since this is a practice exercise, you will continue on.  In the real world, you would either conduct a different test that does not assume normality or you would make the data normal by performing transformations on your data. You will learn about both of those options at a later date.

---

### Give the Test Statistic and its Value

The test statistic for a hypothesis test comparing two means with independent samples is a *t*.

The calculation for the two sample *t*-test is not trivial. It can be calculated by hand, but in trying to be consistent with the goal of keeping calculations simple and to a minimum, you will utilize the pre-packaged functions in MS Excel.

To perform this analysis in MS Excel, simply use the `=t.test()` function like before.  However, instead of choosing option 1 for a paired test at the end, choose option 3, for an independent test with unequal variance. The calculation for *t* is slightly different depending on whether or not the variances between the two samples are assumed to be equal. Since you don't know anything about the population standard deviation or variance for the two samples, it doesn't seem reasonable to assume they are equal. However, if you assume they are unequal and they are equal, then the two formulas converge to the same value. For this reason, take the conservative approach and always assume the variances are unequal.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Fun Fact!</h3>
    </div>
    <div class="panel-body">
        <p>Unequal variance has a name: <b>heteroscedastic</b>. That's right, it is seven syllables. Try tossing that word into normal conversation with your friends and family sometime - they are sure to be impressed.</p>
    </div>
</div>

Since your alternative hypothesis contains the `≠` sign, you have a two sided *t*-test.

---

#### State your Decision

Now, you will apply the *p* value MS Excel spit out for you.  Since the *p*-val is greater than the level of significance, you will fail to reject the null hypothesis: 

```text
.58 > .05
```

---

### Present your Conclusion in a Sentence, Relating the Result to the Context of the Problem

```text
There is insufficient evidence to suggest that there is a difference in the number of concussions between male and female college athletes. 
```

Said in even plainer terms: 

```text
Male and female athletes get the same number of concussions in college.
```

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Independent t-Test Quiz
```

```c-lms
topic: Independent t-Test Activity
```

```c-lms
start-activity: Independent t-Test Activity
```

```c-lms
topic: Independent t-Test Activity Solution
```

# Independent t-Test Activity Solution

You will find the calculations completed in MS Excel as well as an example slide show for the Independent *t*-Test Activity [here](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/SugarCaneAnswer.zip). 

```c-lms
topic: F-Distribution
video-id: The F-Distribution
video-url-mp4: https://player.vimeo.com/external/317286183.hd.mp4?s=cfc0c575631679236efa509feacef48f85931b5a&profile_id=175
video-url-mp4-1080:https://player.vimeo.com/external/317286183.hd.mp4?s=cfc0c575631679236efa509feacef48f85931b5a&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/317286183.hd.mp4?s=cfc0c575631679236efa509feacef48f85931b5a&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/317286183.sd.mp4?s=133eb8eadb1ceb2c9d8b3657bb8611700cd847cf&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/317286183.sd.mp4?s=133eb8eadb1ceb2c9d8b3657bb8611700cd847cf&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L07-pg14tutorial.zip)**.

# The *F*-Distribution

The *F*-distribution is used for some of your most-used statistics - analysis of variance, abbreviated ANOVAs, and regressions, which you will cover in Intermediate Statistics.

The *F*-distribution shape depends on the degrees of freedom, just like the *t*-distribution. However, unlike the *t*-distribution, the *F*-distribution actually uses two different degrees of freedom values.

Just to give you an idea, here is what the *F*-distribution looks like when there are four different combinations of degrees of freedom:

![An F distribution with four different colored lines that represent four different degrees of freedom](Media/L06-12.png)

The *`n`* and the *`m`* in the figure correspond to the two values of degrees of freedom. Please note from looking at this graph that a value for *`F`* less than 0 is impossible.

The "peak" of the distribution is usually around 1, and the distribution goes on forever to the right side. Much like the normal distribution, the right side the curve never actually touches the horizontal axis, but gets closer as it gets farther out.

---

## Summary

Now that you've learned about hypothesis testing, this was your first chance to really sink your teeth into an actual analysis! You have completed your very first statistical analysis testing, using three different types of *t*-tests: single sample, dependent, and independent *t*'s.  Now that you have that foundation, in other modules you will be able to compute these analyses and many more quickly and easily using either R or Python.  

You also learned about some additional distributions, to include the uniform, binomial, multinomial, and *F* distributions. 

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: F-Distribution Quiz
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
        <td style="font-weight: bold;" nowrap>Uniform Distribution</td>
        <td>Every number has the same probability of occurring.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Binomial Distribution</td>
        <td>Outcomes from a trial are either "success" or "failure."</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Multinomial Distribution</td>
        <td>More than two outcomes are possible from a trial.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Single Sample <em>t</em> Test</td>
        <td>A <em>t</em>-test comparing the sample to the population.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Dependent <em>t</em>-Test </td>
      <td>A <em>t</em>-test that compares the means of two related samples.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Paired Design</td>
      <td>When two samples are related.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Independent <em>t</em>-Test</td>
      <td>A <em>t</em>-test that compares the means of two unrelated samples.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Analysis of Variance</td>
      <td>A statistic that uses the <em>F</em> distribution and compares the means of two <em>or more</em> samples.</td>
    </tr>
</table>


---

## Key MS Excel Formulas

* **=t.test() with the type parameter of 1 :** Dependent *t*-test.

* **=t.test() with the type parameter of 3:** Independent *t*-test with unequal variance.

---

## Key Hand-Calculation Formulas

* Single-sample *t*-test: 

    ![The formula for single sample T test. T equals x bar minus mu divided by s divided by square root of n](Media/L06-13.png)

* Dependent *t*-test: 

    ![The formula for dependent T test. T equals D bar minus zero divided by S sub D bar.](Media/105.L4.1.png)

* Standard Deviation of the Difference Scores

    ![The formula for standard deviation of the difference scores. S sub D bar equals S sub D divided by square root of capital N.](Media/105.L4.2.png)

* Effect Size: 

    ![The formula for effect size. D equals D bar divided by S sub D.](Media/105.L4.12.png)

```c-lms
topic: Lesson 7 Final Project
```

```c-lms
start-activity: Lesson 7 Final Project
```
