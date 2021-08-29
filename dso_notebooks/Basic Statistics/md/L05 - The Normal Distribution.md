```c-lms
activity-name: The Normal Distribution
topic: Overview
video-id: The Normal Distribution and The Central Limit Theorem
video-url-mp4: https://player.vimeo.com/external/231927454.hd.mp4?s=445f7ac77b0dcc4cce98ccbbe35f57c163664b9e&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/231927454.hd.mp4?s=445f7ac77b0dcc4cce98ccbbe35f57c163664b9e&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/231927454.hd.mp4?s=445f7ac77b0dcc4cce98ccbbe35f57c163664b9e&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/231927454.sd.mp4?s=bb8a353127daf0560c3ff70ae1012197fbda7d15&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/231927454.sd.mp4?s=bb8a353127daf0560c3ff70ae1012197fbda7d15&profile_id=164
```

# Overview

The properties of a normal distribution will be discussed, which will lead to a discussion of the standard normal distribution, and a calculation of the *z*-score.  

Then you will proceed into the properties of unusual events, and how these properties will be leveraged into hypothesis testing.  A useful graphical tool which demonstrates the relationship between *z*-scores and unusual events will be shown.  At the end of the lesson, the Central Limit Theorem will be introduced.

Being able to use the normal distribution is a key to most of the analytical methods that follow in this module and others.  When this lesson is successfully completed, students will be prepared to move on to complex analyses with the comfort of knowing the fundamentals of those analyses.

An exam will assess concept mastery at the end of this lesson.

```c-lms
topic: The Normal Distribution
video-id: The Normal Distribution
video-url-mp4: https://player.vimeo.com/external/316601663.hd.mp4?s=7aeced19a08bbd4b62fee667c756792bead8aabf&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316601663.hd.mp4?s=7aeced19a08bbd4b62fee667c756792bead8aabf&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316601663.hd.mp4?s=7aeced19a08bbd4b62fee667c756792bead8aabf&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316601663.sd.mp4?s=aeac7a880ad6ed38ad437080f0a8c9f3bb6772bc&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316601663.sd.mp4?s=aeac7a880ad6ed38ad437080f0a8c9f3bb6772bc&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L05-pg2tutorial.zip)**.



Suppose a botanical research firm employed you to monitor the growth of a particular species of bush that produces non-edible berries by collecting the weights of those berries.  You head out to the forest with several team members, armed with equipment to weigh berries.  

After the sampling plan has been determined, and precise instructions have been given, you head out to your assigned area to collect data.  Most of the berries you will measure today are between 70 and 130 milligrams (mg).  You begin to collect data and store it in a spreadsheet.  The first 20 rows look something like this:

![The first twenty rows of a spreadsheet, showing various weights in milligrams.](Media/L05-03.png)

Throughout the day, you busily weigh berries, as do the other members of your team.  By the end of the day, your team has weighed several thousand berries.  Rather than list out a huge table of numbers, someone decides to create a histogram of berry weights:

![Histogram of berry weights. The x axis contains bins from 57.7 to 135.7.  The y axis contains weights from zero to five hundred.  The graph is labeled "Berry Weights (mg)" and it looks to be approximately normally distributed in a bell-shaped curve.](Media/L05-04.png)

The smallest berry weighed in at 58.2 mg, and the largest weighed in at 135.5 mg.  The range was broken up into two mg increments (many people refer to these increments as buckets), and the data were grouped into those buckets.  Each vertical bar indicates how many berries fall into that bucket.  
By the looks of the histogram, there aren't that many berries in the 57.7 to 59.7 bucket. In fact, the count is so small, that you can't even see it represented as a vertical bar.  Notice that the horizontal axis is only partially labeled, because putting all the labels in would have made it too crowded to read.  

The vertical axis on the left indicates the height of each bar. For example, there is a bar labeled 89.7 to 91.7, and the height of the bar looks to be around 270.  This means there were 270 berries measured that fell into that weight bucket.

The shape of this graph is particularly important: it's shaped like a bell, and depicts the normal distribution.  Having been discovered by Gaussian, it is sometimes called "Gaussian" as well, so the normal distribution, the bell curve, or the Gaussian distribution all mean the same thing.  

It turns out that a great many things in nature exhibit a normal distribution.  It is so common that early statistics were developed around the normal distributions.

Rather than collecting a bunch of data every time you want to discuss normal distributions, you can instead talk about them in general terms.  Below is a picture of a generic normal distribution.  Notice that there are no buckets, and the shape at the top has been smoothed to demonstrate the ideal shape.  

There is a horizontal axis, with hash marks but no numbers attached, and there is no vertical axis, but the implication is that where the hump of the bell is taller, there is a greater concentration of numbers than where the hump is shorter.

![A generic normal distribution with a classic bell curve shape.](Media/L05-05.png)

The shape implies that if you took an infinite number of measurements (you won't), it is a lot more likely that any single measurement will be closer to the center of the distribution than it will be out in the tails on either side.  The measurements that land near the center are common, the measurements that land in the tails are rare or unusual.  

Even though the distribution doesn't show it, the curved portion never really comes down to touch the horizontal axis...yes, that is correct, the tails go on forever to the left and to the right.  This shape of the data is often referred to as a "distribution." 

If you look back at the histogram of berries, you can see that the bars are shorter in the 65 mg to 85 mg range, and also in the 115 mg to 135 mg range.  There are very few berries that were measured that fell into these weight ranges.  On the other hand, there are thousands of berries in the 90 mg to 110 mg range, as evidenced by the tall bars.

The shape of the normal distribution is iconic.  There are a vast number of natural and man-made phenomena that behave as normally distributed variables.  For this reason, most of the work in the early days of statistics was done using the normal distribution, and this is why it is so useful.  

In fact, there is so much known about the normal distribution, that even when a variable is not normally distributed, it is advantageous to either just treat it as though it were normal, or to somehow convert it to a normal shape.  

---

## Descriptive Statistics for the Normal Distribution

### Mean

A normal distribution is symmetric, meaning that the left half is a mirror image of the right half and vice versa.  The mean of a normally distributed variable is shown graphically as the vertical line which is the center of the symmetry, as shown here:

![A generic normal distribution with a classic bell curve shape. A mean line runs vertically through the center of the curve.](Media/L05-06.png)

The mean of a normal distribution is in the middle.  

---

### Standard Deviation

Here is where the standard deviations fall:  

![A generic normal distribution with vertical lines showing standard deviations from the mean.](Media/L05-08.png)

If you consider the mean and the standard deviation together, you get a feel for where the distribution is centered, and what the spread of the distribution is.  For example, in this picture, you can see that the vertical lines representing "mean +/- x standard deviations" are drawn in.  

A lot of the data in a normally distributed variable are within one standard deviation of the mean.  If you go out to +/- 2 standard deviations from the mean, you have captured most of the data in the distribution.  If you go out to +/- 3 standard deviations, you have captured almost all of the data.

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>Remember, the curve never actually touches the horizontal axis.  It just gets closer and closer as you go farther to the left or the right.  Even though it isn't visible to the naked eye, there is a non-zero area between the curve and the horizontal axis to the left of mean - 3 standard deviations, and to the right of mean + 3 standard deviations.</p>
    </div>
</div>

---

### Median

The median is the "middle value," or the point at which half of the area under the curve of the distribution is to the left, and the other half is to the right.  In a normal distribution, the mean and the median are the same number.  

---

### Range

Since the distribution technically goes on forever to the left and the right, there is no min, and there is no max.  Since there is no min or max, there can't be a range either, because the range is (max - min).

---

## Practical Usage of the Normal Distribution

Okay, put the normal distribution into context.  Going back to the berries example above - note that it was stated that most of the berries that would be measured would be between 70 and 130 mg.  Interpret that as meaning that the mean of the distribution is 100 mg, and the standard deviation is 10 mg.  Now, look at the generic distribution from above, this time specifically related to the berries:

![A normal distribution with mean and standard deviation lines for the weights of berries. The vertical line in the center represents one hundred milligrams. Running from left to right, the vertical lines represent seventy, eighty, ninety, one hundred, one hundred ten, one hundred twenty, and one hundred thirty milligrams.](Media/L05-09.png)

Can you see how a lot of the berries are between 90 and 110, most are between 80 and 120, and virtually all are between 70 and 130?  This is the practical interpretation of the mean and standard deviation.  Later, you will learn how you can determine the probability of finding a berry in a certain weight range, and how rare it is to see an unusually large or unusually small berry.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Normal Distribution Quiz
```

```c-lms
topic: The Standard Normal Distribution
video-id: The Standard Normal Distribution
video-url-mp4: https://player.vimeo.com/external/316601642.hd.mp4?s=358409250d07cca23a33f7daa3988fa59442a2d3&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316601642.hd.mp4?s=358409250d07cca23a33f7daa3988fa59442a2d3&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316601642.hd.mp4?s=358409250d07cca23a33f7daa3988fa59442a2d3&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316601642.sd.mp4?s=6906363116b4dba9f488a82977b4289577c8cd35&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316601642.sd.mp4?s=6906363116b4dba9f488a82977b4289577c8cd35&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L05-pg3tutorial.zip)**.

# The Standard Normal Distribution

There is a very special case of the normal distribution.  It is called The Standard Normal Distribution (notice the use of capital letters).  The Standard Normal Distribution has a mean of 0 and a standard deviation of 1.  So, it looks like this:

![The standard normal distribution. A vertical line in the center represents a mean of zero. Vertical lines to the left and right of the mean represent a standard deviation of one.](Media/L05-10.png)

---

## The 68-95-99 Rule

Here are a few values for the standard deviation areas on The Standard Normal Distribution:

- Area between -3 and -2 = 0.022
- Area between -2 and -1 = 0.136
- Area between -1 and 0  = 0.341
- Area between 0 and 1   = 0.341
- Area between 1 and 2   = 0.136
- Area between 2 and 3   = 0.022

Did you notice the symmetry?  Because the bell curve is symmetrical, so are the areas under the curve.

When you add these up, you will find that:

-  68% of all values are within 1 standard deviation of the mean
-  95% of all values are within 2 standard deviations of the mean
-  99.7% of all values are within 3 standard deviations of the mean

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Standard Normal Distribution Quiz
```

```c-lms
topic: The z-Score
video-id: The z-Score
video-url-mp4: https://player.vimeo.com/external/316601618.hd.mp4?s=3ef637428c5b4e33d57c9fa1e41d78de46a58a18&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316601618.hd.mp4?s=3ef637428c5b4e33d57c9fa1e41d78de46a58a18&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316601618.hd.mp4?s=3ef637428c5b4e33d57c9fa1e41d78de46a58a18&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316601618.sd.mp4?s=1165de741dfe770aeb38d8ad6d1fa6bc5bdcb9a1&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316601618.sd.mp4?s=1165de741dfe770aeb38d8ad6d1fa6bc5bdcb9a1&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L05-pg4tutorial.zip)**.

# The *z*-Score

In Ghana, the height of a young adult woman is normally distributed, with a mean of 159.0 cm, and a standard deviation of about 4.9 cm.  Gabianu is a college student originally from Ghana, and she stands 169.0 cm tall.  She is on the tall side for Ghanian women.  

She is 10 cm taller than the average woman, which is about 4 inches.  Gabinau is a little more than 2 standard deviations taller (2 x 4.9 = 9.8) than the average woman.  Now time to do a more precise calculation:

![One hundred sixty nine point zero minus one hundred fifty nine point zero divided by four point nine equals ten divided by four point nine, approximately two point zero four standard deviations.](Media/L05-11.png)

So, Gabianu is about 2.04 standard deviations taller than the average Ghanian woman.  Is that a lot?  Would you consider Gabianu to be extraordinarily tall or just a bit on the tall side?  

A question like that is pretty subjective.  169 cm is about 5 feet 6 inches tall.  Rather than depend on a subjective declaration of Gabianu's stature, you could instead standardize her height.  That is exactly what you have done when calculated her height in terms of the standard deviation of the "population" of Ghanian women.

There is a name for this sort of standardization.  It is called a *z*-score.  A *z*-score is a great way to measure any individual piece of data relative to the population.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Calculate z-scores in a snap!</h3>
    </div>
    <div class="panel-body">
        <p>If you would like, you can use <a href="https://www.woz-students.com/z-score"> this website </a> to calculate z-scores easily!</p>
    </div>
</div>

To calculate a *z*-score, you need to know a couple of things:

-  Population mean
-  Population standard deviation

Even though population parameters are technically unknown, you will often treat them as if they are known, because many calculations depend on knowing population parameters.  

Quite often, in an example or a quiz question, verbiage will be used to imply that the population parameters are known.  

For example:

-  The baseline value of fat content in cheese
-  The historical mean test score
-  The agreed upon value for the speed of light
-  The average lifespan of an incandescent light bulb

Two globally accepted symbols represent the population mean and the population standard deviation.

The name of the symbol for the population mean is mu (rhymes with "few.")  The symbol looks like this:

![The mu symbol, which represents population mean.](Media/L05-12.png)

The name of the symbol for the population standard deviation is sigma.  The symbol looks like this:

![The sigma symbol, which represents population standard deviation.](Media/L05-13.png)

Armed with that information, you can now calculate a *z*-score whenever you know mu and sigma.  The formula for a *z*-score is as follows:

![The formula for z score. Z equals x minus mu divided by sigma.](Media/L05-14.png)

Okay, now examine the formula for a moment.  The numerator (that is the part of the fraction that is above the horizontal bar) of the *z*-score is simply the difference between your particular value (*x*) and the population mean.  

Note that if your value is larger than the mean, the numerator will be positive.  If your value is less than the mean, the numerator will be negative, which is okay.  Don't be tricked into thinking you should take the larger value and subtract the smaller value; you should always take your observed value, and subtract the population mean from it.  

---

### A *z*-Score Example

Back to the example with Gabianu, she is taller than the population mean, so the numerator for her *z*-score is 10 (169.0 - 159.0).

With sigma in the denominator of the fraction, the difference (in the numerator) is simply getting scaled.  Gabianu's height difference from the mean is 10 cm.  When you divide that by 4.9 (which is the population standard deviation, or sigma), you are essentially converting the height difference of 10 cm and expressing it in terms of the sigma.  So ten divided by 4.9 is about 2.04, which means Gabianu's height is about 2.04 standard deviations more than the average height.  

Gabianu's friend from Ghana is Rashida.  Rashida is 154.8 cm tall.  Calculate her *z*-score:

![Z equals x minus mu divided by sigma equals one hundred four point eight minus one hundred fifty nine point zero divided by four point nine equals negative four point two divided by four point nine equals negative zero point eight six.](Media/L05-15.png)

Since Rashida has a *z*-score of -0.86, you interpret that as meaning she is about one standard deviation shorter than the average Ghanian woman.

In summary, here is the *z*-score in layman's terms:

> The *z*-score is a measure of how many standard deviations your value is away from the population mean.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>Having trouble with z-scores and z-tests? You may want to watch <a href="https://vimeo.com/444755833"> this recorded live workshop. </a></p>
    </div>
</div>


---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: z-Score Quiz
```

```c-lms
topic: z-scores in the Standard Normal Distribution
video-id: Calculating a z Score with the Standard Normal Distribution
video-url-mp4: https://player.vimeo.com/external/316601709.hd.mp4?s=fb27ac2c9ee883fe88fa3a8ae0c2c5199ea7bab7&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316601709.hd.mp4?s=fb27ac2c9ee883fe88fa3a8ae0c2c5199ea7bab7&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316601709.hd.mp4?s=fb27ac2c9ee883fe88fa3a8ae0c2c5199ea7bab7&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316601709.sd.mp4?s=f749e40826afa706963b86474dcb5b9121bff0f5&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316601709.sd.mp4?s=f749e40826afa706963b86474dcb5b9121bff0f5&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L05-pg5tutorial.zip)**.

# *z*-scores in the Standard Normal Distribution

Okay, now try and tie all of these concepts together.  Look at the Standard Normal Distribution again:

![The standard normal distribution. A vertical line in the center represents a mean of zero. Vertical lines to the left and right of the mean represent a standard deviation of one.](Media/L05-10.png)

As a reminder, the mean for The Standard Normal Distribution is zero, and the standard deviation is 1.  If you plug these values into the *z*-score calculation, watch what happens:

![Z equals x minus zero divided by one equals x divided by one equals x.](Media/L05-16.png)

Did you catch that?  It turns out if you are looking for a z-score for a value of x and the distribution is The Standard Normal Distribution, then the z-score is equal to the input value, which is X.  

This means that if you calculate a z-score for *any* value in *any* normal distribution, what you have really done is map the value in its own distribution to the corresponding value in The Standard Normal Distribution.  

Now, you can use this to do cool things like calculate probabilities.

It turns out that if you want to know the probability of a random value being in a certain range, it is equal to the area between the curve and the horizontal axis of the distribution from which the random value is taken.  

To make the math easy, you can arbitrarily set the value of the area under the entire curve to 1.  

Go back to the berry example.  The distribution of berry weights looks like this:

![A normal distribution with mean and standard deviation lines for the weights of berries. The vertical line in the center represents one hundred milligrams. Running from left to right, the vertical lines represent seventy, eighty, ninety, one hundred, one hundred ten, one hundred twenty, and one hundred thirty milligrams.](Media/L05-09.png)

Now, suppose for some reason you wanted to know the probability of selecting a single berry at random, and having the weight of that berry be between 90 and 110 mg.  

In other words, you would like to figure out the area under the curve between 90 and 110, and compare that to the area under the whole curve:

![A normal distribution with mean and standard deviation lines for the weights of berries. The vertical line in the center represents one hundred milligrams. Running from left to right, the vertical lines represent seventy, eighty, ninety, one hundred, one hundred ten, one hundred twenty, and one hundred thirty milligrams. The portion of the distribution between ninety and one hundred ten is shaded.](Media/L05-17.png)

What is the area of the green shaded region, relative to the area under the entire curve (blue regions and green region combined)?  Remember, for simplicity, you arbitrarily set the area of the region under the entire curve to 1, just to make the math easy.

Skipping the details, can you see how the *z*-score for 90 is -1, and the z-score for 110 is 1?  If you are struggling with this, remember that for the berries, mu = 100 and sigma = 10.  

So knowing that, it looks like the probability of a single berry being between 90 and 110 is the same as the probability of a single *z*-score being between -1 and 1:

![The standard normal distribution. A vertical line in the center represents a mean of zero. Vertical lines to the left and right of the mean represent a standard deviation of one. The portion of the distribution from negative one to one is shaded.](Media/L05-18.png)

Since the area under the curve is between -1 and 1 for The Standard Normal Distribution, this means the value is 0.683.  Therefore, the probability of a single berry being between 90 and 110 mg is the same as the probability of the *z*-score being between -1 and 1, which is the same as the area between -1 and 1 on The Standard Normal Distribution.  The answer is 0.683, or 68%.

---

## Unusual Events

In statistics, the reason probability plays such a big role is because you want to be able to identify unusual events.  Events that are common just aren't that interesting, but unusual events can be very interesting.  

When an unusual event occurs, it is an indicator of one of two things - either you just witnessed something that doesn't happen that often, or whatever led you to believe it is an unusual event was wrong.  The first possibility can be exciting, but the second possibility can alter how you see the world.

Here is an example - in golf, a hole-in-one is a pretty rare event.  You are not talking about a hole-in-one at the mini golf course or at a pitch and putt, but about a hole-in-one on a regulation golf course that would be used by professionals.  

![A man playing golf.](Media/L05-30.png)

Among the total population, the chances of making a hole-in-one are about 1 in 12,500.  Many people who routinely play golf go their entire lives without ever making or personally witnessing a hole-in-one.

The probability of making a hole-in-one is 1/12,500 or about 0.00008.  In fact, because of the low probability that it happens, every time a hole-in-one is made, it is an exciting event.  But you wouldn't think anything was suspicious about an occasional hole-in-one.  

On the other hand, other things might give you reason to wonder.

In the 2016 Master's at Augusta, in the final round on Sunday, 3 different golfers made a hole-in-one on the same hole, and all 3 happened within about an hour.  To make it even more unusual, there were only 57 golfers playing that day, so 1 out of every 19 golfers hit a hole-in-one that day.  

Any time there is a probability for an event of 0.05 or less, and the event occurs, it is considered to be a rare event.  When a rare event occurs, the first response of a data scientist is to question the validity of the assumptions in the system.  The truth of the matter is that sometimes, it is just a rare event that just happened to occur.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: z-score Probability Quiz
```

```c-lms
topic: Probabilities and *z*-Tests
video-id: z Tests
video-url-mp4: https://player.vimeo.com/external/316601590.hd.mp4?s=ce19b5ac9a1710ee860fc2c58a0b98846f79623d&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316601590.hd.mp4?s=ce19b5ac9a1710ee860fc2c58a0b98846f79623d&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316601590.hd.mp4?s=ce19b5ac9a1710ee860fc2c58a0b98846f79623d&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316601590.sd.mp4?s=d8ac1e77554fcb52f5a9fac54c8057bbc1f07725&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316601590.sd.mp4?s=d8ac1e77554fcb52f5a9fac54c8057bbc1f07725&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L05-pg6tutorial.zip)**.

# Calculating a *z*-Test

Now, time to return to the Standard Normal Distribution.  As noted before, anything that is normally distributed can be mapped to The Standard Normal Distribution by calculating the *z*-score, as long as the population mean (mu) and the population standard deviation (sigma) are known.  To review, a *z*-score is calculated using the following formula:

![The formula for z score. Z equals x minus mu divided by sigma.](Media/L05-14.png)

There are many websites that will calculate a *z*-score for you, and stats programs will do it too.

---

## Using the Normal Probability Applet

Once you have a *z*-score calculated, it is customary that the next step is to find a probability associated with that *z*-score.  Again, there are many websites that will perform this calculation for you.  Many don't even require you to have a *z*-score, just the information you need to calculate it! This link is one of the best found so far:

**[Click Here for Normal Probability](https://davidmlane.com/hyperstat/z_table.html)**

---

## Examples Using the *z*-Score Applet

### Example 1

Back to the berry example again.  Suppose you want to know what the probability of having a randomly selected berry weigh between 85mg and 115 mg, just for a reference point, you found before that according to the 68-95-99 rule, that would be somewhere between 0.68 and 0.95 since 85 to 115 is 1.5 standard deviations away from 100.  

Start with the *z*-score.  If *x* = 85, and mu = 100, and sigma = 10, then the *z*-score is:

```text
(85-100)/10 = -15/10 = -1.5
```

When you plug -1.5 into the *z*-score applet at the bottom left, and then hit return, you will notice that the bottom right value changed to 1.5.  Inputting the correct *z*-score is only half the battle here.  

You are looking for the probability that a single berry will be between 85 and 115 mg.  The keyword is *between*. Choose that option on the applet.

![A screenshot of the z score applet that shows a normal distribution from seventy to one hundred thirty. The area between eight five and one hundred fifteen is shaded. The option area from a value open parentheses use to compute p from z close parentheses is selected. The option value from an area open parentheses use to compute z for confidence intervals close parentheses is not selected. Specify parameters. Mean, one hundred. Standard deviation, ten. Above one point nine six is not selected. Below one point nine six is not selected. Between eight five and one hundred fifteen is selected. Outside negative one point nine six and one point nine six is not selected. Results. Area open parentheses probability close parentheses, zero point eight six six four. A recalculate button is at the bottom of the screenshot.](Media/Zapplet1.png)

The area (probability) shown at the top is 0.8664, so the probability of a single berry being between 85 and 115 mg is about 0.87.

---

### Example 2

Suppose you want to know the probability of a single berry being *less than* 88 mg?  The *z*-score for 88 is:

```text
(88-100)/10 = -12/10 = -1.2
```

Plugging the mean and standard deviation values in, then choose the below option on the applet. 

![A screenshot of the z score applet that shows a normal distribution from seventy to one hundred thirty. The area between seventy and eighty eight is shaded. The option area from a value open parentheses use to compute p from z close parentheses is selected. The option value from an area open parentheses use to compute z for confidence intervals close parentheses is not selected. Specify parameters. Mean, one hundred. Standard deviation, ten. Above one point nine six is not selected. Below eighty eight is selected. Between eight five and one hundred fifteen is not selected. Outside negative one point nine six and one point nine six is not selected. Results. Area open parentheses probability close parentheses, zero point one one five zero nine nine nine nine nine nine. A recalculate button is at the bottom of the screenshot.](Media/Zapplet2.png)

The probability of a single berry being less than 88 mg is about 0.12.

---

### Example 3

Suppose you want to know the probability of a single berry being greater than 94 mg?  Then plug the mean and the standard deviation in, and select the option for before:

![A screenshot of the z score applet that shows a normal distribution from seventy to one hundred thirty. The area between ninety four and one hundred thirty is shaded. The option area from a value open parentheses use to compute p from z close parentheses is selected. The option value from an area open parentheses use to compute z for confidence intervals close parentheses is not selected. Specify parameters. Mean, one hundred. Standard deviation, ten. Above ninety four is selected. Below eighty eight is not selected. Between eight five and one hundred fifteen is not selected. Outside negative one point nine six and one point nine six is not selected. Results. Area open parentheses probability close parentheses, zero point seven two five seven. A recalculate button is at the bottom of the screenshot.](Media/Zapplet3.png)

The probability of a single berry being greater than 94 mg is about 0.73.  

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>The most common mistake made by students solving problems like these is choosing the wrong above/below/between/outside option to reflect the original question. So double check!</p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: z-Test Quiz
```

```c-lms
topic: Using the z-Score to Determine a Percentile
video-id: Percentiles
video-url-mp4: https://player.vimeo.com/external/316601677.hd.mp4?s=801478e66f2f07b3aa2b2ffb3a5eb665099bc438&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316601677.hd.mp4?s=801478e66f2f07b3aa2b2ffb3a5eb665099bc438&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316601677.hd.mp4?s=801478e66f2f07b3aa2b2ffb3a5eb665099bc438&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316601677.sd.mp4?s=ba70ff1c23afaec63b4257c3a2f46180b2be4771&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316601677.sd.mp4?s=ba70ff1c23afaec63b4257c3a2f46180b2be4771&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L05-pg7tutorial.zip)**.

# Using the *z*-Score to Determine a Percentile

Remember that a percentile is the point at which a certain amount of a distribution is below a certain value, and the rest is above that value.  

For example, the 45th percentile is the point in the distribution where 45% of the data are below (or to the left) of that value, and 55% are above (or to the right) of that value.  

Using the applet makes it simple to determine percentiles.  Suppose you took a standardized exam, and the mean score is 440 with a standard deviation of 23.  Your score is 472, what percentile is that?

First, calculate the *z*-score:  

```text
z = (472 - 440)/23 = 32/23 = 1.391
```

Put the mean and standard deviation in the applet, and then choose the *below* option for percentiles.  You will always choose the below option when finding percentiles. 

![A screenshot of the z score applet that shows a normal distribution from three hundred seventy one to five hundred nine with standard deviations of twenty three. The area between three hundred seventy one and four hundred seventy two is shaded. The option area from a value open parentheses use to compute p from z close parentheses is selected. The option value from an area open parentheses use to compute z for confidence intervals close parentheses is not selected. Specify parameters. Mean, four hundred forty. Standard deviation, twenty three. Above ninety four is not selected. Below four hundred seventy two is selected. Between one hundred twenty eight point one and one hundred twenty eight point three is not selected. Outside negative one point nine six and one point nine six is not selected. Results. Area open parentheses probability close parentheses, zero point nine one seven eight nine nine nine nine nine nine. A recalculate button is at the bottom of the screenshot.](Media/Zapplet4.png)

Since the area reads 0.9179, the percentile is 91.8.  Approximately 91.8% of all scores are less than or equal to 472, and therefore 8.2% of test scores are greater than or equal to 472.

---

## Using a Percentile to Determine a *z*-Score or a Value for *x*

In the previous example, you knew the value of *x*, and wanted to calculate a percentile.  You can do the inverse too.  

Suppose your friend's test results for the same test say they scored in the 73rd percentile, and they want to know what their raw score was.  You can find this by using the applet, and then doing a quick calculation.

In the applet, choose the option of `Value from an area` and enter the mean (440), standard deviation (23) and the area (0.73) in.  Then select the `below` option, since percentiles are all about finding the amount below: 

![A screenshot of the z score applet that shows a normal distribution from three hundred seventy one to five hundred nine with standard deviations of twenty three. The area between three hundred seventy one and four hundred fifty four point zero nine five is shaded. The option area from a value open parentheses use to compute p from z close parentheses is not selected. The option value from an area open parentheses use to compute z for confidence intervals close parentheses is selected. Specify parameters. Area, zero point seven three. Mean, four hundred forty. Standard deviation, twenty three. Results. Recalculate button. Above is not selected and its field is blank. Below is selected and its field shows four hundred fifty four point zero nine five. Between is not selected and its field is blank. Outside is not selected and its field is blank.](Media/Zapplet5.png)

The output in the below section is 454. That means your friend's raw score was 454.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Percentiles Quiz
```

```c-lms
topic: Parent and Child Distributions
video-id: Parent and Child Distributions
video-url-mp4: https://player.vimeo.com/external/316601694.hd.mp4?s=37e2270bb4b145dc322db2c362252a758cc0eb9a&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316601694.hd.mp4?s=37e2270bb4b145dc322db2c362252a758cc0eb9a&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316601694.hd.mp4?s=37e2270bb4b145dc322db2c362252a758cc0eb9a&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316601694.sd.mp4?s=9b03da71ce26ef391e385a140f8292b4f0873e1e&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316601694.sd.mp4?s=9b03da71ce26ef391e385a140f8292b4f0873e1e&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L05-pg8tutorial.zip)**.

# Parent and Child Distributions

What happens when you randomly select samples from your distribution? The overall distribution, called the *parent distribution* typically has a similar mean to the samples you collected, called the *child distributions.*  However, the standard deviation is smaller.  

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Fun Fact!</h3>
    </div>
    <div class="panel-body">
        <p>You will commonly see the Standard Deviation of Child Distribution referred to as “<i><b>Standard Error</i></b>”!</p>
    </div>
</div>

---

### Berry Example

Go back to the berry example for a moment to illustrate this process.  You already simulated selecting and weighing around 5600 individual berries.  You may recall the distribution of individual berry weights looked like this:

![A histogram showing the weights of berries in milligrams.](Media/L05-04.png)

The weights of individual berries is normally distributed.  Now, instead of plotting the weight of every individual berry, take a sample of size 16, one sample at a time, and calculate the sample means.  Here is the first simulated sample:

![A spreadsheet showing a sample of sixteen individual berries and each ones weight in milligrams. The mean of the sample is one hundred four point three milligrams.](Media/L05-26.png)

A second sample is collected, 16 more berries are selected, each is weighed individually, and then the mean of the second sample is calculated:

![A spreadsheet showing a sample of sixteen individual berries and each ones weight in milligrams. The mean of the sample is ninety seven point nine milligrams.](Media/L05-27.png)

Fast forward, take 500 samples, each of size 16, calculate the sample means, and write the means down on your spreadsheet.  Then, construct another distribution, with the sample means instead of the individual berry weights.  

![A histogram showing the sample means of berries, rather than individual berry weights, in milligrams.](Media/L05-28.png)

Note that the distribution of sample means also looks to be normally distributed.  By observation, you'll notice that the mean of the distribution of sample means looks to be somewhere around 100. This is because the mean of the child distribution is the same as the mean of the parent distribution.

You'll also note that the standard deviation of the child distribution is smaller than the standard deviation of the parent distribution.  The relationship is as follows:

![Standard deviation of child distribution equals standard deviation of parent distribution divided by the square root of sample size.](Media/L05-29.png)

Okay, back to the berries.  The distribution of individual berry weights (parent) has a mean of 100, and a standard deviation of 10.  The distribution of sample means (child) has a mean of 100, and a standard deviation of 2.5:

```text
10/sqrt(16) = 10/4 = 2.5
```

The "width" of the child distribution is about 1/4 the "width" of the parent distribution.  If you apply what you know about the 68-95-99 rule, that says the distribution of sample means should have almost all of it's values between 92.5 and 107.5, which are the mean +/- 3 standard deviations for the child distribution.

---

# The Central Limit Theorem

The *Central Limit Theorem* states that the larger your sample size, the more likely it is to be normally distributed, and the more likely it will be closer to the "True" population.  

---

## Summary

Most statistics assume a normal distribution, so get used to that beautiful bell curve! The characteristics of the bell curve, particularly the probability of where a particular data point will fall (i.e. 1-3 standard deviations from the mean) is the basis for most hypothesis testing. In fact, the work you have learned today about finding *z*-scores in a wide variety of different settings is actually your very first, albeit it basic, hypothesis test, so congratulations!

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Parent Child Distribution Quiz
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
        <td style="font-weight: bold;" nowrap>Normal Distribution</td>
        <td>A distribution with a bell shape with a mean and standard deviation.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Standard Normal Distribution</td>
        <td>A special case of a normal distribution, with mean of 0 and standard deviation of 1.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap><em>z</em>-score</td>
        <td>Measures how many standard deviations away from the mean a particular value of a population is.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Rare Event</td>
        <td>A rare event has a probability of 5% or less.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Parent Distribution</td>
      <td>The overall, or larger, distribution.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Child Distribution</td>
      <td>The sample, or smaller, distribution.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Central Limit Theorem</td>
      <td>The larger your sample size, the more likely it is to be normally distributed and closer to the truth.</td>
    </tr>
</table>

```c-lms
topic: The Normal Distribution and the Central Limit Theorem - Skills Assessment
```

```c-lms
start-activity: Lesson 5 Exam
```