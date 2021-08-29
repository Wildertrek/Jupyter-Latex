```c-lms
activity-name: Other Common Distributions
topic: Overview
video-id: Other Common Distribution
video-url-mp4: https://player.vimeo.com/external/231927586.hd.mp4?s=47ccccf880050fc00ad24a704299ac03e843c3ca&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/231927586.hd.mp4?s=47ccccf880050fc00ad24a704299ac03e843c3ca&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/231927586.hd.mp4?s=47ccccf880050fc00ad24a704299ac03e843c3ca&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/231927586.sd.mp4?s=4c699908132c6f230907219db9348f5342b04e90&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/231927586.sd.mp4?s=4c699908132c6f230907219db9348f5342b04e90&profile_id=164
```

# Overview

In this lesson, you will learn about additional distributions:

* Poisson distribution
* Bathtub curve
* Exponential distribution
* Chi-square distribution

These distributions are not used as heavily as those from the last lesson, but still provide a lot of groundwork for many statistical techniques.

Concept mastery at the end of this lesson will be assessed by an exam.

```c-lms
topic: Poisson Distribution
video-id: The Poisson Distribution
video-url-mp4: https://player.vimeo.com/external/318291070.hd.mp4?s=1fb7550bab050c344c67c3d8b1e101d65050e771&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291070.hd.mp4?s=1fb7550bab050c344c67c3d8b1e101d65050e771&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291070.hd.mp4?s=1fb7550bab050c344c67c3d8b1e101d65050e771&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291070.sd.mp4?s=4d13ae69a06f6b44451f9aec128940a8e144b213&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291070.sd.mp4?s=4d13ae69a06f6b44451f9aec128940a8e144b213&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L08-pg2tutorial.zip)**.

# The Poisson Distribution

The Poisson distribution is elegant and simple. It is used to model situations in which a given number of events would occur in a fixed interval of time or space. 

---

## Examples Using the Poisson Distribution

Examples are things like:

* The number of bugs of a particular type in a square foot patch of lawn
* The number of pieces of mail received at your home in a typical day
* The number of customers arriving between 10:00am and 10:30am to a store
* The number of defects found in 30 feet of pipe

---

## Assumptions for the Poisson Distribution

There are some assumptions that must be met in order for the Poisson distribution to be a good model:

* The occurrence of an event does not affect the probability of a following event taking place
* The number of events can occur in a given interval is countable and a whole number
* The long term rate at which events occur is constant
* Two events cannot happen in exactly the same instant

The Poisson distribution is simple, because there is only one parameter. The mean of the distribution is the same as the variance (which, if you recall, is just the standard deviation squared).

The shape of the distribution is dependent on the value of the mean. For the Poisson distribution, the mean is represented by the Greek letter "lambda," and it looks like this:

![The Greek letter lambda, which is used to represent the mean for the Poisson distribution.](Media/L07-06.png)

It is important to remember that lambda can take on any value, it does not need to be a whole number. However, the number of events in the time interval of interest **does** need to be a whole number (0, 1, 2...).

For instance, you may own a fruit stand and you sell an average of 2.7 cantaloupes each hour, but the actual count is never 2.7. Sometimes you sell 4, sometimes 2, sometimes none at all.

Take a look at the Poisson distribution for several different values of lambda:

![The Poisson distribution for lambda values of one, two, three, four, five, six, seven, eight, and nine.](Media/L07-07.png)

Focus on the Poisson distribution for lambda = 2, or the red distribution. Even though the distribution is drawn as a smooth curve, the only values it can actually take on are 0, 1, 2, 3, etc.

In order to look at this graph and understand it, do the following: For a Poisson distribution with a lambda of 2, if you want to determine the probability of a 0, you would look vertically right above the 0 and see where it hits the curve.

In this case, the curve is directly above the 0 at about 0.14, meaning that the probability of getting a zero when something is distributed as a Poisson with a lambda of 2 is equal to 0.14. How about a 1?

By observing the graph directly vertically up from the 1 on the horizontal axis, and then extrapolating that point to the vertical axis, you can see that the probability of a 1 is about 0.26.

If you find the probability using the eyeball method and the graph, you can construct the following probabilities:

* 0 => p ~ 0.14
* 1 => p ~ 0.26
* 2 => p ~ 0.28
* 3 => p ~ 0.16
* 4 => p ~ 0.09
* 5 => p ~ 0.04
* 6 => p ~ 0.02
* 7 or higher => p ~ 0.00

If you add all these probabilities up, they should be pretty close to 1, because that forms a complete set of possible outcomes. Based on your eyeball analysis, the total of the probabilities is 0.99, which is not bad for a quick and dirty analysis.

Eyeball analysis is fine for approximating, but there are two problems...it might not be as precise as you want it, and if your lambda is something like 2.7, then there is no graph to represent that.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Poisson Distribution Quiz
```

```c-lms
topic: Exponential Distribution
video-id: The Exponential Distribution
video-url-mp4: https://player.vimeo.com/external/318291050.hd.mp4?s=9b72dd205c2f33806e55742badaa25f7e194d77b&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291050.hd.mp4?s=9b72dd205c2f33806e55742badaa25f7e194d77b&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291050.hd.mp4?s=9b72dd205c2f33806e55742badaa25f7e194d77b&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291050.sd.mp4?s=381f889f06a187599e46e4b874b8c7fced92d294&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291050.sd.mp4?s=381f889f06a187599e46e4b874b8c7fced92d294&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L08-pg3tutorial.zip)**.

# The Exponential Distribution

The exponential distribution is a large family of distributions, but you will focus on only a single aspect, and it is somewhat related to the Poisson distribution discussed earlier in this lesson.

The Poisson distribution described the number of events within a certain defined interval, whether time or distance. The responses were discrete, meaning that you could have 0 events, 1 event, 2 events, etc.

The exponential distribution has a continuous response instead of discrete, because it is used to describe the amount of time between two sequential events. 

---

## An Example

A local fast-food chain has a drive thru window that is open 24 hours a day. During the hours of 10:30 AM and 11:00 PM, there is more likely than not a car sitting in the drive thru lane wanting some food. But in the dead of night, there usually aren't that many cars that come by.

Suppose you are studying the hours from 2:00 AM to 4:00 AM. Historical data tells you that between those hours, you will typically have 17.8 customers in the drive thru window. With this information, you could create a Poisson distribution with mean (lambda) = 17.8.

At this point, it is probably a good idea to keep an eye on units. The mean of 17.8 represents 17.8 cars per 2 hour period, or 17.8 cars per period.

---

## Shape of the Exponential Distribution

The exponential distribution looks like this:

---
![The exponential distribution with three different colored curves representing three different lambda values, zero point five, one point zero, and one point five.](Media/L07-22.png)

---
Please note that the larger lambda is, the steeper the curve is on the left side. The three curves shown here are for lambda of 0.5, 1, and 1.5.

Imagine what the curve would look like for lambda = 17.8, as in the above scenario. It would be so steep on the left side, that it would look almost vertical, and then approach the horizontal axis very quickly.

What you did with the last calculation is similar to what you were doing earlier with the web applets for finding probabilities based on "area under the curve" and between various values of *z* or *t*.

In this case, you use the above equation to calculate the area under the curve, between the values of *x* = 0 and whatever chosen value for *x* you have.

```c-lms
start-activity: Exponential Distribution Quiz
```

```c-lms
topic: Bathtub Curve
video-id: The Bathtub Curve
video-url-mp4: https://player.vimeo.com/external/318291016.hd.mp4?s=aae8ec2449db17dc986bbce6a5f0d13d3eb8a243&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291016.hd.mp4?s=aae8ec2449db17dc986bbce6a5f0d13d3eb8a243&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291016.hd.mp4?s=aae8ec2449db17dc986bbce6a5f0d13d3eb8a243&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291016.sd.mp4?s=aa6e3f3049a3d4f5bf69f4b607576ea0bb6237e5&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291016.sd.mp4?s=aa6e3f3049a3d4f5bf69f4b607576ea0bb6237e5&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L08-pg4tutorial.zip)**.

# The Bathtub Curve

There is a probability density curve that is very popular in the electronics industry. It is called the Bathtub Curve, and it typically looks like this:

![The bathtub curb placed on a chart. The x axis of the chart represents time. The y axis represents failure rate. The area of the chart has three vertical sections, decreasing failure rate on the left, constant failure rate in the middle, and increasing failure rate on the right. Four lines are plotted, including observed failure rate, the early quote infant mortality quote failure, constant open parentheses random close parentheses failures, and wear out failures.](Media/L07-18.png)

The bathtub curve is the blue curve in the picture above. You can see two dashed lines - one in red and one in yellow - that added together make up the bathtub curve.

---

## "Infant Mortality" Failure Rate

As noted in the diagram, the red dashed line represents the "infant mortality" failure rate of an electronic device. The name is kind of morbid, but the concept is probably intuitive to most readers. When anything is manufactured, there is a certain percentage that will result in a manufacturing fail.

If your company manufactures rubber chickens, the fails are usually pretty easy to spot...maybe the eyes are printed in the middle of the back, or there are three legs. All you need is a couple of quality assurance (QA) inspectors to pull out the fails before the rubber chickens go wherever they go for retail.

On the other hand, electronics are hard to evaluate by visual means. A manufacturing fail and a manufacturing success can look exactly the same.

No manufacturer wants to send a bunch of manufacturing fails to a retailer for sale.  It is in everybody's best interest to separate out the manufacturing fails before sending inventory to the retailer.

To prevent this as much as possible, the manufacturer will do what is called "burn-in". If you go to any semiconductor manufacturer in the world, it is a good bet they have a test floor as big as several football fields. On that test floor there will often be hundreds of testers, each holding as many as 250,000 die to be burned in.

What they are looking for is to use the semiconductors enough in simulated workload, and cull out all of the infant fails. If you look on the red dashed curve, that would be the point at which the "steepness" of the failure rate flattens out.

---

## Wear Out Failures

On the other side of the distribution, pretty much everything wears out eventually. The "wear out failures" as indicated by the dashed yellow line are relatively flat to begin with. Most stuff doesn't wear out immediately after manufacture.

But as time goes on, the wear out failure rate will begin to increase, and the curve gets steeper. Even in industries where manufactured goods are not terribly complex, a good manufacturer wants a pretty good feel for when the wear out curve starts to steepen.

They don't want their warranties or guarantees to extend into the steep part of the wear out curve; it costs them too much.

As mentioned before, putting both of these curves together creates the bathtub curve. 

---

## The Data Scientist's Role

The job of the data scientist in this scenario could be complex modelling with great detail for a highly sophisticated piece of electronic equipment with lots of electronic parts, or it could be a pretty simple "connect the dots" type of curve if the complexity of the manufactured goods is low.

There is also a concept called "planned obsolescence." This means that a manufacturer doesn't want your product to last forever. They want it to wear out, or become outdated, so that you will have to replace it.

Sometimes it is possible for a manufacturer to shorten the width of a bathtub curve by doing things like using plastic parts instead of metal parts at a critical point in a piece of equipment.

In summary of the bathtub curve, companies that utilize a data scientist to help them not only define what their bathtub curve looks like, but use it to make good decisions about manufacturing, warranties, and extended warranties are ahead of their competitors.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Bathtub Curve Quiz
```

```c-lms
topic: Chi-Square Distribution
video-id: The Chi-Square Distribution
video-url-mp4: https://player.vimeo.com/external/318291034.hd.mp4?s=00a356389a63d1c28a51aa845ac0d26f92c2a8be&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291034.hd.mp4?s=00a356389a63d1c28a51aa845ac0d26f92c2a8be&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291034.hd.mp4?s=00a356389a63d1c28a51aa845ac0d26f92c2a8be&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291034.sd.mp4?s=e4b5c959ea32f4e515f32004e7878ae75b14b556&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291034.sd.mp4?s=e4b5c959ea32f4e515f32004e7878ae75b14b556&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L08-pg5tutorial.zip)**.

# Chi-Square Distribution

The Chi-Square distribution is not really suitable for modeling. It is mostly used for hypothesis testing.

In general terms, the chi-square distribution is a good way of measuring how an assumed distribution matches up with a sampled distribution when you have categorical, not continuous, data. Time to look at an example:

> Suppose you are polling for a general election. You have three candidates: Abernathy, Boykins, and Calendario. As you are polling, you ask two questions.  First, who is your preferred candidate, and second, what age group are you in.

After you have collected a bunch of data, you construct a table that looks like this:

![A table showing the names of three political candidates, the number of people who vote for each and the age range of these votes, the totals by candidate, and the totals by age range.](Media/L07-24.png)

If you scrutinize this table, you will realize that Abernathy is much more popular among the younger voters than Boykins, whereas Boykins appeals to the 30 - 49 year old group.

However, if the differences were a bit more subtle, how would you decide if there was a candidate preference by voter age?

In order to tackle a problem like this, you need to assume that there is **no difference** between age groups regarding candidate preference. With this assumption, you then calculate the "expected" counts in each cell.

For example, 90 out of 272 voters overall like Abernathy, or about 33%. If each age group liked Abernathy at 33% also, then for the 18 - 29 year olds, you would expect there to be about 0.33 x 84 = 27.8 voters for Abernathy.

Here is what the table of "expected" values would be:

![A table showing the names of three political candidates, the number of people who vote for each and the age range of these votes, the totals by candidate, and the totals by age range. The table shows quote expected quote values.](Media/L07-25.png)

If you notice, all of the column totals and row totals are still the same, it is just that the expected counts in each cell have been re-balanced.

Without talking about a lot of theory, it turns out that if you do a bunch of math on the "observed" cell counts and "expected" cell counts in each cell, the total will be distributed as a Chi-Square variable. In fact, it is called the *Chi-Square statistic*.

The formula for the calculation will not be presented here. There are tons of web applications that will calculate it for you, so there is no need to learn how to do it by hand.

In this case, the Chi-Square statistic value is 44.4. Much like has been done with the *z*-score and the *t*-score, you can use a web based calculator to determine the probability that a Chi-Square statistic would be as large or larger than 44.4, and it turns out the probability is about 0.000001.

In other words, it should essentially never happen. In terms of the voting preferences, if you assume there is no difference in preferences among age groups, and then get a probability this small, it forces you to go back and question the assumptions that were originally made. The data have led you to believe that there is in fact a difference in voting preferences among the different age groups.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Chi-Square Distribution Quiz
```

```c-lms
topic: Conducting Chi-Squares
video-id: Calculating Independent Chi-Squares
video-url-mp4: https://player.vimeo.com/external/318290985.hd.mp4?s=18a58831921ec3b6364f1fd588e2310dd43e43d7&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318290985.hd.mp4?s=18a58831921ec3b6364f1fd588e2310dd43e43d7&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318290985.hd.mp4?s=18a58831921ec3b6364f1fd588e2310dd43e43d7&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318290985.sd.mp4?s=ed70b33d42d1fa1a273d781eb94dcf3f0181b713&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318290985.sd.mp4?s=ed70b33d42d1fa1a273d781eb94dcf3f0181b713&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L08-pg6tutorial.zip)**.

# The Test for Independence

To conduct a test for independence of categorical variables, the `χ2` (Chi-Square) Test of Independence will be used. The fancy 'X' looking character (`χ`) is the Greek letter `Chi`. It is pronounced 'ki' (rhymes with 'tie', sounds like the first part of 'kite').

---

## What Does Independent Mean? 

The word "independent" means that the two variables are not associated with each other. In the case of a test of independence, it simply means that neither variable depends on the other.

Testing for independence is a bit different than all of the other tests you have run so far. Up to this point, there has always been some sort of numerical comparison to be made, whether it is a mean value against a standard, or two means against each other. For a test of independence, this is a bit tougher than the other approaches. What happens here is independence is assumed, and then the number of expected counts in each cell of a table is calculated. Then, the expected counts are subtracted from the observed counts. Finally, those differences are added up, and they become the `χ2` test statistic. The test statistic is then converted into a *p* value.

The calculation for the χ2 test statistic is too complex to do by hand, so you will be learning it in MS Excel now, and in other programming languages later.

The larger the value of the χ2 test statistic, the smaller the *p* value will be. Once the χ2 test statistic gets large enough for the *p* value to be less than α, you will reject the null hypothesis, just like you did for *t*-tests.

---

## Contingency Tables and Degrees of Freedom

The table below is called a *contingency table*. The contingency table may or may not include a row of totals at the bottom, and a column of totals on the right side.

<table class="table table-striped">
    <tr>
        <th>Fruit Condition</th>
        <th>Bananas</th>
        <th>Oranges</th>
        <th>Grapes (Bunch)</th>
        <th>Strawberries (Quart)</th>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Bruised</td>
        <td>120</td>
        <td>21</td>
        <td>6</td>
        <td>57</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Discolored</td>
        <td>38</td>
        <td>8</td>
        <td>2</td>
        <td>3</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Shriveled</td>
        <td>0</td>
        <td>0</td>
        <td>12</td>
        <td>10</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Over Ripe</td>
        <td>6</td>
        <td>15</td>
        <td>7</td>
        <td>23</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Pristine</td>
        <td>354</td>
        <td>644</td>
        <td>150</td>
        <td>228</td>
    </tr>
</table>

This contingency table has no total row or column. There are 5 rows, and 4 columns. The number of rows and columns are integral to calculating the degrees of freedom, which as you will remember from doing *t*-tests, is important to calculating the statistical significance of the test.

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>Even if the contingency table has a 'totals' row or a 'totals' column, those total categories don't get counted as rows or columns.</p>
    </div>
</div>

To find the degrees of freedom, take the number of rows of data, and subtract 1. Then, take the number of columns of data, and subtract 1. Finally, multiply these two numbers together. For this example, the degrees of freedom are: 

```text
(5-1) x (4-1) = 4 x 3 = 12
```

---

## Requirements for a χ2 Test of Independence

To conduct a Chi-Square, your data must meet the following requirements: 

* Each **expected** cell count must be greater than or equal to 5. Please note that it is not dependent on the **actual** cell count.

---

## Using the Chi-Square Calculator in MS Excel

The math for running the hypothesis test is not terribly difficult, but there are many moving parts. Rather than spending a ton of time walking you through creating a calculator, one has been prepared for you in MS Excel.

**[MS Excel χ2 calculator](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/ChiSquareTest.zip)**

The χ2 calculator has four parts:

* In the upper left, there is a place where the cell counts are entered, and these boxes are blue:

    ![The upper left portion of the chi square calculator in Microsoft excel in which cell counts are entered. The portion has six columns and six rows as well as a column for total by row and a row for total by column.](Media/chisquare3.png)

* The lower left portion takes the observed counts from each cell, and places them directly above the expected counts for each cell. The expected counts are automatically calculated each time a new cell in the blue area is filled in:

    ![A portion of the chi square calculator in Microsoft excel. This portion takes the observed counts from each cell, and places them directly above the expected counts for each cell. The expected counts are automatically calculated each time a new cell in the upper left portion of the calculator is filled in](Media/chisquare2.png)

* The lower right portion is where the χ2 statistic is calculated for each cell. The formula is <code>(observed - expected)<sup>2</sup>/expected</code>.

    ![The lower right portion of the chi square calculator in Microsoft excel. The heading for this portion reads chi square sums. There are six columns and six rows.](Media/chisquare4.png)

* The upper right portion is the results. The cells from the bottom right portion are added together, this is the value of the test statistic. The degrees of freedom are then calculated automatically, and finally the *p* value is calculated based on the test statistic and the degrees of freedom:

    ![Chi square test for showing test statistic, degrees of freedom, and p value for Pearson chi square. Test statistic is four point eight seven three. Degree of freedom is one. P value is zero point zero two seven three.](Media/chisquare5.png)

To run the test of independence, all that has to be done is the cell counts need to be entered into the blue region at the top left. The size of the table is limited to a 6 x 6 contingency table. This should be sufficient for just about any case, but if a need for a larger table arises, it can easily be expanded.

---

## Null and Alternative Hypotheses for Chi-Squares

The null and alternative hypotheses for any Chi-Square Test of Independence, in general terms, are:

* <b>H<sub>0</sub>:</b> The row variable and the column variable are independent. 

* <b>H<sub>a</sub>:</b> The row variable and the column variable are not independent.

---

## Case Study: Friday the 13th in Finland 

Superstitious, anyone? In this example, you will be determining whether there is any relationship between Friday the 13th, gender, and traffic accident deaths in Finland.  The contingency table data is located **[here](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/friday13.zip)**.

---

### Case Study Question 

People often wonder whether two things influence each other. You may wonder whether the gender of the driver and whether the day was Friday the 13th influences the number of deaths related to traffic accidents.  This thought can be expressed as the question:

> "Do traffic accident deaths depend on the gender of the driver or whether the day is Friday the 13th?"

This question has only two possible answers: 

* **"Yes":** You can write the alternative hypothesis by expressing the answer "yes" as "Traffic accident deaths, gender, and Friday the 13th are not independent."  This will be the alternative hypothesis.

* **"No":** The answer "no" can be written as Traffic accident deaths, gender, and Friday the 13th are independent."  This will be the null hypothesis.

---

### Case Study Contingency Table

The data from the study are summarized in the following contingency table:

![A contingency table with data that explores the relationship between Friday the thirteenth, gender, and traffic accidents in Finland. The table shows how many males and how many females were involved in traffic accidents on Fridays that were the thirteenth day of the month and on Fridays that were not the thirteenth day of the month. Eighty two males were in accidents on Friday the thirteenth. Two thousand four hundred twenty three males were in accidents on non thirteenth Fridays. In total, two thousand five hundred and five males were in accidents on these days. Forty one females were in accidents on Friday the thirteenth. Seven hundred eighty nine females were in accidents on non thirteenth Fridays. In total, eight hundred thirty females were in accidents on these days. On Friday the thirteenth, one hundred and twenty three males and females combined were in accidents. On non thirteenth Fridays, three thousand two hundred and twelve  males and females combined were in accidents. The total number of accidents recorded for both males and females on both Friday the thirteenth and non thirteenth Fridays was three thousand three hundred thirty five.](Media/chi-square1.png)

---

### Case Study Calculations in MS Excel

Go ahead and enter the data into the MS Excel spreadsheet results like so:

![A portion of the chi square calculator in Microsoft excel in which data is entered. Some data is entered. Column one, row one, eighty two. Column one, row two, forty one. Column two, row one, two thousand for hundred twenty three. Column two, row two, seven hundred eighty nine. Column 1 total, one hundred twenty three. Column two total, three thousand two hundred twelve. Row one total, two thousand five hundred five. Row two total, eight hundred thirty. Total, three thousand three hundred thirty five.](Media/chi-square2.png)

There are a couple of important points: 

* It doesn't really matter if the rows and columns are interchanged. For example, this table is a 2x2 table (2 rows and 2 columns), but if it had been entered with gender on top and Friday along the side, the results would be the same.

* The totals at the bottom and on the right are automatically generated when the cells are filled in. Don't include the totals when filling in the blue portion of the table.

Now, take a peek at the observed vs. expected counts in the lower left portion of the spreadsheet:

![The lower portion of the chi square calculator in Microsoft excel showing observed versus expected counts. Column one, row one, observed eight two, expected ninety two point four. Column one, row two, observed forty one, expected thirty point six. Total column one, observed one hundred twenty three, expected one hundred twenty three point zero. Column two, row one, observed two thousand four hundred twenty three, expected two thousand four hundred twelve point six. Column two, row two, observed seven hundred eight nine, expected seven hundred ninety nine point four. Total column two, observed three thousand two hundred twelve, expected three thousand two hundred twelve point zero. Row one total, observed two thousand five hundred five, expected two thousand five hundred five point zero. Row two total, observed eight hundred thirty, expected eight hundred thirty point zero. Total, observed three thousand three hundred thirty five, expected three thousand three hundred thirty five point zero. ](Media/chi-square3.png)

As you can see, each row now has two entries. The entry on top is the observed counts for that cell, and the entry on the bottom is the expected counts for that cell. For example, the entries on row 1, column 1 are 82 and 92.4. This entry corresponds to the counts in the cell where it was Friday the 13th and a male was driving. 

The expected counts are based on what would happen if there was no difference in gender.

Since there are no labels for the rows or columns, referring to the original raw data is helpful to remember what is going on. Anytime the expected counts and observed counts differ greatly, there is reason to believe that the columns variable depends on the rows.

Next, look at the portion of the spreadsheet where the `χ2` sums are calculated:

![Portion of spreadsheet showing chi square sums. Column one, row one, one point one six eight. Column one, row two, three point five two five. Column two, row one, zero point zero four five. Column two, row two, zero point one three five.](Media/chi-square4.png)

Each of these cells shows the contribution to the overall test statistic. The cells correspond to the original data, and give you an idea of where the biggest relative differences between the observed cell counts and the expected cell counts lie. Summing all of these values will give you a total value which is the χ2 test statistic, found in the upper right hand portion of the spreadsheet:

![Chi square test for showing test statistic, degrees of freedom, and p value for Pearson chi square. Test statistic is four point eight seven three. Degree of freedom is one. P value is zero point zero two seven three.](Media/chi-square5.png)

This table portion is the result of the analysis. The χ2 total is labeled as the "Pearson Chi-Square" value. The degrees of freedom are calculated, and the corresponding *p* value is given.

Now you've completed your first Chi-Square analysis! 

---

### Null and Alternative Hypotheses for the Case Study

Once you apply the Chi-Square to a particular scenario, however, you can then get more specific in how you word the hypotheses:

* <b>H<sub>0</sub>:</b> Gender and Friday the 13th are independent.

* <b>H<sub>a</sub>:</b> Gender and Friday the 13th are not independent.

If the row and column variable are independent, then no matter which row you consider, the proportion of observations in each column should be roughly the same. For example, if gender and Friday the 13th are independent, then the proportion of people who die in a traffic accident should be approximately the same in each row. That is, it will be approximately the same for Men and Women, and for Friday the 13th versus other days. 

For this analysis, let `α=0.05`.  The test statistic is: `χ2 = 4.87`, with <code><em>df</em> = 8</code>. And the *p* value is rounded to 0.03 in the output.

Therefore, you should reject the null hypothesis, and conclude that there is sufficient evidence to suggest that gender is not independent of Friday the 13th.  This means that the number of traffic accident deaths in Finland is influenced by gender and/or Friday the 13th.  Taking a look at the difference between the actual cells and the expected cells, you can see that there are far more traffic accident deaths NOT on Friday the 13th then on Friday the 13th.  This should make sense to you - there are many more days that are Fridays that are NOT the 13th. This is a good indication that the data reporting is flawed; counts will be biased, because of the number of days.  A better way for someone to have reported this data was the percentage of total accidents per day that resulted in death.  

You will also note that women seem to have fewer accidents than men.  This seems like a much stronger takeaway, so your main conclusion from this independent chi-square test should be:

>Female drivers in Finland are significantly less likely to get into a fatal traffic accident, regardless of the day.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Fun Fact!</h3>
    </div>
    <div class="panel-body">
        <p>You won't calculate confidence intervals when working with contingency tables, because confidence intervals are centered around a mean.  Without a mean, it does not make sense to calculate a confidence interval.</p>
    </div>
</div>

---

## Summary

The distributions covered in this lesson are a teaser for what's to come - you will see them again accompanied with their test statistics in later modules! However, you were able to compute an independent chi-square, used for testing the independence of two categorical variables.\

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>Want a little more information on Chi-Squares in MS Excel? Then check out <a href="https://vimeo.com/405273502">this recorded live workshop. </a></p>
    </div>
</div>


---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Chi-Square Calculation Quiz
```

```c-lms
topic: Chi-Square Activity 
```

```c-lms
start-activity: Independent Chi-Square Activity
```

```c-lms
topic: Chi-Square Activity Solution
```

# Solution

The MS Excel workbook to determine whether extra-terrestrial contacts is independent of the continent upon which they are seen is located [here](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/AliensChi-squareSolution.zip). 

---

## Findings

Below you will find the answers to the Steps of Hypothesis Testing.

---

### State the Hypotheses

The null hypothesis is that extra-terrestrial contact is independent of continent.

The alternative hypothesis is that extra-terrestrial contact is not independent of continent.

---

### Calculate the Test Statistic, Degrees of Freedom, and *p* Value

The Chi-Square value is 2.734.

The degrees of freedom (df) is 5.

The *p* value is .70. 

---

### Assess the Statistical Significance

The alpha level is .05.  Since the *p* value is > .05, this means that this test is not significant.

---

### Draw Conclusions

The null hypothesis should be accepted, and the alternative hypothesis rejected, because the *p* value was greater than .05.  This means that there is no relationship between the number of extra-terrestrial contacts and the continent upon which those sightings took place.


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
        <td style="font-weight: bold;" nowrap>Poisson Distribution</td>
        <td>For situations where a limited number of events occur in a fixed interval of time or space (for predicting discrete outcomes).</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Lambda</td>
        <td>The mean of the poisson distribution.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Bathtub Curve</td>
        <td>A graph of failure rates over time for the manufacturing industry.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Infant Mortality Failure Rate</td>
        <td>A manufacturing fail that happens early on.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Wear Out Failure Rate</td>
      <td>A manufacturing fail that takes place over time as the product ages.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Exponential Distribution</td>
      <td>Used to model the amount of time that takes place between events (for predicting continuous outcomes).</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Chi-Square Distribution</td>
      <td>Used to test categorical outcomes, either against a population or against a second categorical variable.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Independent</td>
      <td>Variables are not associated with each other.  One variable does not <em>depend</em> on the other in any way.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Contingency Table</td>
      <td>A chart of frequencies based two different categorical variables.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Independent Chi-Square</td>
      <td>Tests for the independence of two categorical variables.</td>
    </tr>
</table>

```c-lms
topic: Lesson 8 Exam
```

```c-lms
start-activity: Lesson 8 Exam
```
