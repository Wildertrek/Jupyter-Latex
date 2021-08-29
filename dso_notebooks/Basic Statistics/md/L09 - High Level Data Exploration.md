```c-lms
activity-name: High Level Data Exploration
topic: Overview
video-id: High Level Data Exploration
video-url-mp4: https://player.vimeo.com/external/231927734.hd.mp4?s=cae6347b6596ce402446852da521bdd98881e437&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/231927734.hd.mp4?s=cae6347b6596ce402446852da521bdd98881e437&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/231927734.hd.mp4?s=cae6347b6596ce402446852da521bdd98881e437&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/231927734.sd.mp4?s=abb71ba4d1608531bcd44e726b00200ec60f2dae&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/231927734.sd.mp4?s=abb71ba4d1608531bcd44e726b00200ec60f2dae&profile_id=164
```

# Overview

When you get right down to it, the main responsibility of a data scientist is to take large amounts of data and make use of them for business purposes. Possible business purposes include making predictions or projections, improving business processes, and data-based decision making.

In this lesson, you will go over some high level data exploration and how to look for low hanging fruit when it comes to the first pass of data analysis. Most of these high-level analyses will take place using Excel.

This lesson will then move into an introduction of some visualization tools and how to evaluate data using them.

Concept mastery at the end of this lesson will be assessed by an exam.

```c-lms
topic: Data Exploration
video-id: Data Exploration
video-url-mp4: https://player.vimeo.com/external/318291716.hd.mp4?s=1cde4881d01f12e5eb832084446327711fe1907c&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291716.hd.mp4?s=1cde4881d01f12e5eb832084446327711fe1907c&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291716.hd.mp4?s=1cde4881d01f12e5eb832084446327711fe1907c&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291716.sd.mp4?s=2620b3c933ba568770135393b54b84630b2afcc5&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291716.sd.mp4?s=2620b3c933ba568770135393b54b84630b2afcc5&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L09-pg2tutorial.zip)**.

# Data Exploration

The role of a data scientist is to look deeper at data. So far, you have touched on a few techniques to analyze data, such as *t*-tests and Chi-Squares. What you haven't learned is where those data come from, and how to get them into a useful format.

In DSO104, data wrangling and data visualization will be discussed thoroughly. In this lesson, you will learn the foundations.

In an ideal world, data is at your fingertips and perfectly formatted for analysis. Do you ever watch one of those crime shows where there are one or more computer geniuses retrieving data? You can watch someone do something on TV that only requires a few moments, when in real life, it could take hours at best, and possibly days or weeks at worst.

Even if you set aside all of the realistic privacy issues, filtering data down is not a trivial exercise. It is true that if the same retrieve-merge-sort-filter routine gets used over and over, it is easily automated. But to do it on demand and on the fly is a large task. The process of retrieving, cleaning, and reformatting data is **VERY** time consuming. It is often more time consuming than the actual analysis that takes place.

First, you will look at a typical example. **[Click on this link to get a zip file full of CSV data.](https://repo.exeterlms.com/documents/V2/DataScience/Basic-Statistics/colleges.zip)**

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Tip!</h3>
    </div>
    <div class="panel-body">
        <p>"CSV" stands for comma separated values.  This means that a CSV dataset will have each column of data separated by a column, rather than a tab as in a .txt file or by something that actually looks like a column, as in a MS Excel file. </p>
    </div>
</div>

---

## Exploring the First File

![A portion of a CSV file with many columns and rows.](Media/L09-01.png)

What do you notice about it right off the bat? If you were given the assignment to investigate the data, where would you start? Unlike homework problems that typically show up in an introductory statistics course, this dataset is a mess. Here are some general observations:

* 7703 rows by 122 columns

* Very few of the 122 columns have a header where it is obvious what it is. Once you look at the data in the column, a few more columns become obvious, but the vast majority of them are impossible to interpret. For example, column J is labelled "PREDDEG". You probably have no idea what that stands for. You could guess that it has something to do with a degree, because the data pertain to colleges, but aside from that, you're probably clueless. Furthermore, the values appear to be coded, because a quick scan tells me that they are all 3, 2, or 1. What does that mean? Is it categorical data that is indexed? Is it ordinal data?

* Column G is INSTURL. It seems pretty obvious that it is the URL of the institution, but some of them have the "www." at the front of the URL, and some don't. While that initially might not seem like a big deal, it can cause problems if you need to extract some information from it later.

---

## Exploring the Second File

Now open the second .csv file, and wait for it to download. It may take a while to load.  It turns out to have only 7703 rows, but 1743 columns. There are 4 or 5 columns that match columns from the first table, so who knows why they chose to put data into separate tables?

Here are some observations about this dataset: 

* Several columns have numbers, zeroes, and the word NULL in them. It makes you question whether or not the NULLs are actually zeroes, or if the zeroes are actually NULLs, or if they mean different things.

    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">Tip!</h3>
        </div>
        <div class="panel-body">
            <p>In most analyses, columns are either quantitative or categorical. Having something in there that isn't a number, like the word NULL, makes most programs assume the column is categorical incorrectly, which can cause problems in the analysis. </p>
        </div>
    </div>

* Many columns have lots of entries that say "PrivacySuppressed," so essentially, they are missing data.

* If you look at column G of the second table, you will notice that it contains the zip code of the college, but some of them are 5 digit zip codes, and some of them are 9 digit zip codes. This is likely to cause problems if you use zip code in any analysis.

---

## Exploring the Third File

Okay, open the 3rd .csv file. This one also has 7703 rows, but 1195 columns. Here are some more observations:

* More columns of info on the same colleges. This table seems to have a bunch of demographic data, such as low income students, gender quantities, enrollments, withdrawals, transfers, etc.

* There is also some financial data on here, including Pell grant rates, no Pell grant rates, loans, etc.

* This table is also filled with NULLs and "PrivacySuppressed" cells, causing a ton of noise in the data.

---

## Exploring the Fourth File

And finally, it is time to look at the 4th .csv table. It is quite a bit smaller, but still 7703 rows, but only 89 columns. Some observations here:

* This table looks like it has quite a bit of interesting information on the makeup of the student body, such as race, economic class, family income, etc.

Just to get a feel of what it is like working as a data scientist, spend a few minutes browsing these tables. During your career you will regularly be presented with tables or databases that are pretty cryptic. It is a good idea to get a feel of what that is like right now.

There is little chance you will completely understand the data you are working with at first glance, so you are going to have to ask somebody (an expert, preferably) what the columns represent. You will get the expert's help much more willingly if you have already tried to translate and understand as much as possible.

This example is very typical of available data - especially if it comes from the government. It is a shining example of data being easy and cheap to collect, but usually not much thought is put into whether it is stored in a format that is easy to extract or use.

Companies are getting better at this, but the truth is that those who have the expertise to make clever ways to store data aren't usually that interested in making it easy to retrieve and analyze.

---

## What a Data Scientist Doesn't Do

Now, if these data were the focus of some prime time drama on television, the discourse might be something like this:

BOSS: "Hansen, show me all the schools where the enrollment is between 4% and 7% Hispanic!"

HANSEN (the data nerd): -bipity bip bip boop bip- "Okay boss, here you are, it looks like about 75 colleges."

BOSS: "Hmm...okay, which of those have either 30% or higher with Pell grants, or at least 10% of their families are below the poverty level!"

HANSEN: -more computer noises...bip bip boopity bop- "Yeah, that narrows it down to these 17 colleges."

BOSS: "How many of those are within 8 miles of a waterpark?"

HANSEN: -boop boop bip- "We are down to 3 colleges now."

BOSS: "I need to know the name of every woman at those colleges that has worked as a barista anytime in the past 3 years."

HANSEN: -bip bip- "We have 17 women who fit the bill. I am sending their home and work addresses to your cell phone right now."

On TV, this interchange would have taken about 25 seconds. In real life, this is probably at least an 8 to 10 day project if you are lucky and don't have anything else pressing to work on.

---

## Your Data Exploration Take-Aways

* Data exploration is time consuming.

* You need to put effort into understanding what the data is. This is a combination of browsing through it yourself and using common sense, and getting help from the experts.

* It is worth the time to make a cursory glance at the format of your data, it will save you a lot of time later on.

---

## A Few Visualizations 

It is always a good idea to make some quick and dirty graphs from your data if you have the time, which will allow you to see at a glance if there is something terribly wrong with your data. Making a few graphs is typically much quicker than trying to look through thousands of rows of a table.

In the graph below, the "LOCALE" column from one of the college scorecard tables was quickly graphed using MS Excel. The plot shows row number as the horizontal axis, and a dot for each row of data. 

![A graph with the title locale. The x axis runs from zero to nine thousand in intervals of one thousand. The y axis runs from negative ten to fifty in intervals of ten. Data is plotted and runs in horizontal bands across the graph.](Media/L09-02.png)

The graph produced isn't very helpful from a practical perspective, because whatever LOCALE means, it is obviously coded. 

A few things really jump out:

* Values seem to be 10-14, 20-24, 30-34, and 40-44. There seems to be nothing between 15 and 20, 25 and 30, etc. The data is obviously coded, although you don't know what the code is yet.

* There are at least two negative values. These seem completely out of place given the rest of the data. A quick filter reveals that those 3 rows are for colleges in Palau, Micronesia, and the Marshall Islands. This quick sanity check gives you the opportunity to delete these rows if you want to exclude colleges outside the US.

* There are several values that are zeroes. Filtering the data to only show the zeroes reveals they are actually NULLs, and the graphing utility has interpreted them as zeroes for some reason. A quick scan across all the columns of these rows shows that all of the columns are filled with NULLs. These rows may be deleted, depending on the end goal, because they provide no useful new information.

In summary, this is just a quick peek at the manipulation necessary to perform any kind of meaningful data analysis. The data preparation step of the data science pipeline is where a lot of the work takes place.

This kind of exploration doesn't take a lot of advanced education, but it does take practice. The best data scientists not only have strong analytical skills, but they have a thorough understanding of the data they are using, and strong knowledge about the processes from which they come.

In DSO104, data wrangling will be brought up again, and you'll gain lots of hands-on experience.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Data Exploration Quiz
```

```c-lms
topic: Data Exploration Activity
```

```c-lms
start-activity: Data Exploration Activity
```

```c-lms
topic: Graphical Tools for Analysis
video-id: Histograms
video-url-mp4: https://player.vimeo.com/external/318291763.hd.mp4?s=2a95b28c4d12b4d5ae65d33c0a8ab5ce2a082f8d&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291763.hd.mp4?s=2a95b28c4d12b4d5ae65d33c0a8ab5ce2a082f8d&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291763.hd.mp4?s=2a95b28c4d12b4d5ae65d33c0a8ab5ce2a082f8d&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291763.sd.mp4?s=68daf86a6994cd6b8499b1351daef541718ee6be&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291763.sd.mp4?s=68daf86a6994cd6b8499b1351daef541718ee6be&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L09-pg4tutorial.zip)**.

# Graphical Tools for Analysis

There is a common phrase saying "A picture is worth a thousand words." This is definitely true for data analysis. In fact, it can be argued that any analysis void of pictures is incomplete at best, and worthless at worst.

To a data scientist, pictures are graphs. These are commonly referred to as "data visualization." There is a complete module on data visualization, and that module will primarily show how to create beautiful visualizations that will capture your audience.  

In this lesson, the graphs will be presented to familiarize you with their appearance, and to give instruction on what to look for.

Interpreting graphs is a tricky concept. You want the consumers of the graphs to be able to quickly draw conclusions and find the "a-ha" moments themselves. If you have to present a graph and then spend a lot of time explaining what the consumer should be seeing, it is probably not a very good graph.

On the other hand, there are some very complex visualizations with multiple layers of findings, and they often need to be pointed out.

Time to get right into it, starting with the simplest and most common visualizations, and then moving on to more complex visualizations.

---

## Histogram

A *histogram* is about the simplest way to visualize a single quantitative variable. A histogram is made by taking a bunch of data and putting them into equally sized "buckets." Each bucket is represented by a bar, and the height of the bar is relative to the amount of data points in that bucket.

* **Data format** : A single quantitative variable

* **Pros** : Practically any spreadsheet, programming language, or statistical software package will create a histogram easily. 

* **Cons** : On the downside, the shape of the distribution can be manipulated a bit by changing the width of the buckets. Two histograms from the same dataset may not be identical.

---

### Histogram Example

![A histogram of steel sheet thickness](Media/L09-03.png)

This is an example of something you might see at a manufacturing plant, where sheet metal is being rolled. It is possibly being used by someone who wants to keep an eye on the manufacturing process.

---

### Histogram with Multiple Groups

*Histograms with multiple groups* often are used to compare two different groups of data. This is a useful tool for drawing conclusions about how a grouping variable might affect the response variable.

**Data format** : Data used are from a single quantitative variable, where each data point belongs to one of two or more groups. The groups are usually categorical.

**Pros** :Easy to interpret and exhibit differences

**Cons**: It can be hard to detect the real shape of the histogram for groups that lie on top of one or more other groups.

![A histogram comparing the weights of both men and women. The vertical bars for women are in one color, and the vertical bars for men are in another color. Bars are stacked for data that overlaps.](Media/L09-06.png)

In this example, since the data for the males is overlaid on top of the data for the females, it is a bit of a challenge to see what the shape of the males distribution would look like if plotted alone. On the other hand, it is easy to tell that the distribution of weights is centered at a greater value for the males than for the females.

![A histogram with three variables, x, y, and z. Each variable is represented by a different color. The bars are not stacked but are instead set adjacent to each other, with a small amount of white space between them.](Media/L09-07.png)

This histogram with multiple groups is interesting in that the bars are not stacked, but set adjacent to each other, with a bit of white space between the buckets. This makes it easy to see what each of the individual distributions looks like as well as compare the three groups.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Histogram Quiz
```

```c-lms
topic: Boxplots
video-id: Boxplots
video-url-mp4: https://player.vimeo.com/external/318291693.hd.mp4?s=2b73ef7a95103396a70281fe6fdbb31ef2a234ad&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291693.hd.mp4?s=2b73ef7a95103396a70281fe6fdbb31ef2a234ad&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291693.hd.mp4?s=2b73ef7a95103396a70281fe6fdbb31ef2a234ad&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291693.sd.mp4?s=e88385a59698eb580b1464bfb48db07a5e84b897&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291693.sd.mp4?s=e88385a59698eb580b1464bfb48db07a5e84b897&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L09-pg5tutorial.zip)**.

# Boxplots

A boxplot is a compact way of representing a distribution. You saw your first example of a boxplot in Lesson 4.  Here is what each part of the boxplot represents:

![In the top box, there is a boxplot.  It has two green points to the left of a vertical line. The vertical line is labeled Q1 - 1.5*IQR. Then there is a blue whisker, leading to a pink box.  The left side of the pink box is labeled Q1, while the right side of the pink box is labeled Q3. In the middle of the box is a line labeled "Median." The distance from Q1 to Q3 is labeled IQR.  Then a whisker extends to the right of the box, and there is a vertical line labeled Q3 + 1.5*IQR.  There are two green dots to the right of the whisker also.  From this top graphic, four grey lines extend down to a lower graphic, also contained in a box. These lines are located at the left vertical line, left side of the box, right side of the box, and right vertical line.  They drop to a corresponding normal distribution histogram, and you can see that the middle portion around zero sigma is the same pink as the box.  This portion of the histogram is labeled as 50%.  Then there is 24.65% on either side of the pink, shown in blue.  Lastly, the green portions are outside of the blue on either side and are labeled as .35% in the histogram.](Media/L09-39.png)

The "box" is the middle 50% of the data. The line in the center of the box represents the median, and the leftmost and rightmost edges of the box represent the 1st quartile and 3rd quartile, respectively.

There are often lines or whiskers that extend from the box to the left and the right, these whiskers indicate values outside the box. The picture above shows both a boxplot and a histogram for the same dataset, just to give reference to how they compare.

* **Data format** : A single quantitative variable is used to make a boxplot.

* **Pros** : This is a quick and dirty representation of a distribution.

* **Cons** : It is thin on details and nuance.

---

## Asymmetrical Boxplots

You have looked at a lot of symmetrical distributions, but many are actually skewed a little or a lot. Here is a histogram and corresponding boxplot for a distribution that is skewed right:

![A histogram and boxplot for a distribution that is skewed right.](Media/L09-40.png)

Notice how the long tail is to the right of the histogram, as is the whisker on the boxplot.  Also, note how the distance from the 1st quartile to the 2nd quartile (the median) is less than the distance from the 2nd quartile to the 3rd quartile. This shows up in the boxplot as two unequal portions of the "box" part of the boxplot.

![A boxplot showing number of eggs laid. The median is six, and the middle fifty percent of the data are from three to eight.](Media/L09-08.png)

The graph above is a typical boxplot with the median at 6, and the middle 50% of the data are from 3 to 8.

![A vertical boxplot.](Media/L09-09.png)

Boxplots can also be vertical. In this case, the distribution looks pretty symmetric, but there are several outliers on the high side represented by single points. Rules vary, but a typical "maximum whisker length" is usually about 1.5 times the width of the box. Anything beyond that limit on either side is usually depicted by a single point.

---

## Side-by-Side Boxplot

A side-by-side boxplot takes the idea of a single boxplot and multiplies it by several groups. It takes the ease and simplicity of the boxplot, and then uses it to compare different groupings of the same quantitative response variable.

Here are the properties of a side-by-side boxplot:

* **Data format** : The side-by-side boxplot is made with one quantitative variable and one categorical variable with two or more groups.

* **Pros** : This graph tells a large story with a single picture. It is relatively easy to understand at first glance. 

* **Cons** : The only con is that they can become noisy if you try and cram too much information onto a single graph.

---

### Side-by-Side Boxplot Examples

![A side by side boxplot showing the fuel efficiency of different classes of vehicles. Seven boxplots, one for each class of vehicle, are side by side along with all data points in each group.](Media/L09-10.png)

The side-by-side boxplot above is loaded with information. The author has decided to show all the points in addition to drawing the boxplots, which gives an idea of how much data is in each group.

The author also chose to "jitter" the data points to make them easier to see. Jittering is a way of spreading out the data horizontally within each group. The author included horizontal lines for reference.

Within about five seconds of viewing this graph, you have a pretty good feel for the story being told.  Pickups and SUVs get much lower gas mileage than most other classes of vehicles, subcompacts have a huge spread in gas mileage compared to other classes, and there weren't a lot of two-seater cars in this dataset.

![A side by side box plot with two categorical variables and one quantitative variable.](Media/L09-11.png)

This above side-by-side boxplot is also good. There isn't much in the way of a legend, but aside from that, it is clear there are two categorical variables and one quantitative variable. The categorical variables are broken out as colors and by distance in cm. Even with the ambiguities, this graph packs a lot of information into a small space.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Boxplot Quiz
```

```c-lms
topic: Pie Charts
video-id: Pie Charts
video-url-mp4: https://player.vimeo.com/external/318291840.hd.mp4?s=cb9feb55087cbe43a302e6b1f84dc2593e273f00&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291840.hd.mp4?s=cb9feb55087cbe43a302e6b1f84dc2593e273f00&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291840.hd.mp4?s=cb9feb55087cbe43a302e6b1f84dc2593e273f00&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291840.sd.mp4?s=25d26512f9e3991d30fb720e0a219ff1c9fa650e&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291840.sd.mp4?s=25d26512f9e3991d30fb720e0a219ff1c9fa650e&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L09-pg6tutorial.zip)**.

# Pie Charts

Pie charts are another common way to graph categorical data. Here are their properties:

* **Data format** : A single categorical variable, with either counts or percentages known for each of the categories.

* **Pros** : Pie charts are found everywhere. 

* **Cons** : Here is the problem with pie charts: they mislead as often as they convey critical information. Take a look at the pie chart below:

---

## Examples

It is not clear what is being charted, but can anyone tell whether the melons slice is larger than the apples slice? Or better yet, which is bigger...berries, or apples + squash, or melons + corn? For a tool that is designed to rapidly communicate information, this pie chart leaves a bunch of questions unanswered.

![A pie chart with different colored sections for apples, berries, corn, melons, and squash.](Media/L09-12.png)

In the image below, note how the two slices (Binding and Paper Cost) in the foreground just look bigger, because you can see two dimensions rather than just the surface dimension. Furthermore, Binding and Printing Cost are both listed at 20%, but the Binding slice looks a lot bigger than the Printing Cost slice.

![A pie chart showing business costs and the proportion of each type of cost compared to all costs. Promotion cost, ten percent. Printing cost, twenty percent. Transportation cost, ten percent. Paper cost, twenty five percent. Binding, twenty percent. Royalty, fifteen percent.](Media/L09-13.png)

You may suspect foul play here; someone is trying to over-emphasize the Binding costs.

Lastly, if you have to list the percentages anyway to get your point across, why don't you just make a bar graph in the first place? It is easy to tell which bar is taller than another on a bar graph, while it is often not so easy to tell in a pie chart.

Having said all this, here's one pie chart that conveys exactly the information it is trying to convey:

![A pie in a pie pan. A large portion of pie, more than twenty five percent, has been removed. To the right of the pie is a key with two images and label. First image shows a close up of the empty pie pan, and the label reads, pie I have eaten. Second image shows the uneaten portion of pie, and the label reads, pie I have not yet eaten.](Media/L09-14.png)

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Pie Chart Quiz
```

```c-lms
topic: Bar Graphs
video-id: Bar Charts
video-url-mp4: https://player.vimeo.com/external/318291682.hd.mp4?s=ba7bfeee6b33c4a9bb11262fc2ff1c508d9bef3e&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291682.hd.mp4?s=ba7bfeee6b33c4a9bb11262fc2ff1c508d9bef3e&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291682.hd.mp4?s=ba7bfeee6b33c4a9bb11262fc2ff1c508d9bef3e&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291682.sd.mp4?s=5c4457d0db331fd114fade9d9aefbd4930580a87&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291682.sd.mp4?s=5c4457d0db331fd114fade9d9aefbd4930580a87&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L09-pg7tutorial.zip)**.

# Bar Graphs

A bar graph is a very useful tool. Bar graphs are used for the same data that a pie chart would be used for. Here are their properties:

* **Data format** : A single categorical variable, with either counts or percentages known for all categories.

* **Pros** : One huge pro is the ability to quickly compare between categories. Your eyes are easily able to see which bar is taller, or which bar extends further to the right.

* **Cons** : On the con side, bar graphs get used **a lot** when they shouldn't be; for instance, when the horizontal axis variable is not categorical.

---

### Bar Graph Examples

![A bar graph for nicest fruit with data displayed in vertical bars. The y axis shows number of people and runs from zero to forty in increments of five. The x axis shows different types of fruit, apple, orange, banana, kiwifruit, blueberry, and grapes. Apple, thirty five people, orange, thirty people, banana, ten people, kiwifruit, twenty five people, blueberry, forty people, and grapes, five people.](Media/L09-15.png)

This graph is simple yet crystal clear.

![A bar graph for nicest fruit with data displayed in horizontal bars. The y axis shows number of people and runs from zero to forty in increments of five. The x axis shows different types of fruit, apple, orange, banana, kiwifruit, blueberry, and grapes. Apple, thirty five people, orange, thirty people, banana, ten people, kiwifruit, twenty five people, blueberry, forty people, and grapes, five people.](Media/L09-16.png)

The graph above depicts the same data, in the same order, but the bar graph has horizontal bars instead of vertical bars.

![A bar graph with categorical variables. The x axis shows three factories, a, b, and c. The y axis shows defects per one thousand cars and runs from zero to thirty in increments of one. To the left is a box with a key that shows different colors that represent different years, nineteen ninety four, nineteen ninety five, and nineteen ninety six. Each of these colors is used for a vertical bar for each factory on the x axis, so that there are three years of data for factory a, three years of data for factory b, and three years of data for factory c.](Media/L09-17.png)

This bar graph has good and bad in it.

First, the good: two "categorical" variables are represented here: the factory, and the year. Grouping within factory and using colors is a great idea. Once again, a lot of information is conveyed in a single graph.

Now for the bad: "Defects / 1000 cars" isn't really a count, it is more like a rate (defect rate in this case), so having a bar represent that is kind of goofy.

---

## Stacked Bar Graphs

![A stacked bar graph that shows counts associated with two different categorical variables. The graph shows preferred cars for people from various regions. Cars include wagon, truck, S U V, sports, sedan, and hybrid. Regions include Asia, Europe, and U S A.](Media/L09-18.png)

The above bar graph is called a stacked bar graph. Once again, it packs a ton of information in, because it shows counts associated with not one, but two different categorical variables. There is not much labeling here, but you can venture a guess that it is the preferred cars for people from various regions.

The stacked bar clearly shows the total amount of people surveyed by region, and then within each stack, there is a clear count of vehicle types. The use of colors is good, as it is easy to compare a certain vehicle type across regions, and on top of that, the listed counts makes it even easier.

If there is one critique of this graph, it would have to be the placement of the counts when they are small; the counts often overlap with another part of the graph. Especially for the Hybrid count for Asia, the "3" is just hanging out at the bottom of the graph.

![A stacked bar graph with three different categorical variables. The x axis has three groupings, private caches, shared caches, and persistent caches. Each grouping has five categories, ammp, applu, apsi, art and equake. The y axis shows percentage of total heap usage and runs from zero percent to eighty percent in increments of ten percent. To the right fo the bar graph is a key indicating colors and what they represent. Red, stubs. Green, hashtables. Yellow, traces. Blue, basic blocks.](Media/L09-19.png)

One final stacked bar graph is shown above. This graph shows three different categorical variables. There is not a lot of descriptive labeling, it's difficult to determine what this graph is about, but the message should be pretty clear if you know what you are looking at.

---

## Pareto Charts

A pareto graph is widely used to quickly display cause and effect relationships. It is similar to a bar chart, but is almost always vertical, and has the bars sorted from left to right with the tallest bar being on the left. In addition, there is usually a line showing cumulative percentages, with the scaling on the right side, so it has two y-axes.

* **Data format** : A single categorical variable, with multiple categories and counts for each category.

* **Pros**: This tool is very helpful in industry, especially for anyone that has any sort of a process monitoring or troubleshooting responsibility for a process. 

* **Cons** : This chart is not as common as it used to be, so it is difficult to find packages in programs like Python or R to automatically create a pareto chart.

The pareto chart goes hand in hand with something called the pareto principle, which states that in many situations, roughly 80% of the effects come from only 20% of the causes.

In a lot of industries, the word pareto has become a verb. You might hear someone say: "Can someone please pareto these defect causes so we know what to work on first?"

---

### Pareto Chart Examples

![A pareto chart. The x axis includes the categories overpriced, small portions, wait time, food is tasteless, no atmosphere, not clean, too noisy, food is too salty, unfriendly staff, food not fresh. The left y axis runs from zero to nine hundred in increments of one hundred. The right y axis runs from zero point zero to one hundred point zero in increments of ten point zero. A key shows a solid blue bar represents count and a dotted red line represents cumulative percentage.](Media/L09-20.png)

The chart above is a perfect example of a helpful pareto chart. Of course, there is no chart title, so you must guess what is being charted. Suppose that it is a pareto of customer feedback about a local restaurant. If management collected these data to try and create happy customers, they would certainly want to attack the biggest problems first.

It looks like there are almost 800 complaints that the food is overpriced, which comprises about 47% of all complaints according to the red cumulative percentage curve. For this situation, between high prices and small portions, those two categories (20% of the 10 categories shown) comprise just over 80% of the complaints.  This means that if management wants to put a huge dent in customer complaints, they shouldn't waste their time making sure the food is less salty, for instance, because very few people care about that.

![A cumulative pareto chart for defect type that combines bars and cumulative tend into a single graphic. Different colors bars represent different defect types, including cracks, improper shape, incomplete, surface scratches, or other. The y axis shows percentage and runs from zero to one hundred in increments of twenty.](Media/L09-21.png)

The chart above combines the bars and the cumulative trend into a single graphic. It looks a bit different, but it is still a pareto chart.

![A pareto chart with many categories. The far right category is labeled others, and this category includes more categories with very small counts that, if included separately, would have distorted the chart.](Media/L09-22.png)

One more comment about pareto charts. Sometimes, there are a few categories with large counts, and a whole bunch of categories with very few in them.  It can make it so your pareto chart has dozens of categories on the horizontal axis, and the wording runs over from one category to the next such that you can't read any of them. This results in a cluttered and useless pareto chart, when you don't care at all about the last several categories that are listed.

One solution to this is shown above.  You can see on the right side where several categories have been combined into one "other" category, but now the "other" category has more counts than a couple of the categories to the left of it. This is a case where it is reasonable to disrupt the "largest to smallest" ordering scheme on the graph.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Bar Graph Quiz
```

```c-lms
topic: Scatterplots
video-id: Scatter Plots
video-url-mp4: https://player.vimeo.com/external/318291873.hd.mp4?s=a4e5b3eaf9a2e99d96956fd3681ed3f9828b21d9&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291873.hd.mp4?s=a4e5b3eaf9a2e99d96956fd3681ed3f9828b21d9&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291873.hd.mp4?s=a4e5b3eaf9a2e99d96956fd3681ed3f9828b21d9&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291873.sd.mp4?s=761295b47c5aebc926f35e071bc285327102c4cd&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291873.sd.mp4?s=761295b47c5aebc926f35e071bc285327102c4cd&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L09-pg8tutorial.zip)**.

# Scatterplots

Scatterplots are the default way to represent two quantitative (continuous) variables together. The way this works is to have a pile of subjects, and for each subject, two different measures are known.

* **Data format** : Two quantitative variables are needed here. In a table, these data usually are arranged so that each row is a single subject, and there are two data columns, each having a quantitative measure from that subject.

* **Pros** : Scatterplots are simple to use and easy to interpret.

* **Cons** : On the con side, sometimes they are abused because people try to extrapolate the relationship beyond the set of data used to create the scatterplot, and sometimes authors will selectively display data or subsets of data to drive an agenda.

---

### Scatterplot Examples

![A scatterplot of M P G versus weight. X axis represents weight and runs from one thousand five hundred to five thousand five hundred in increments of five hundred. Y axis represents M P G and runs from ten to fifty in increments of ten. Data points are scattered.](Media/L09-23.png)

Above is an example of a great scatterplot. Imagine what the table would look like in this case: it would probably be a couple hundred rows of auto mileage data, where each row represents one car. The weight and MPG of each car is measured, and nearly impossible to interpret by looking at the table.

When a scatterplot is created, in an instant the general relationship is obvious: each dot represents a single car, and heavier cars in general get lower gas mileage.

![A scatterplot of S A T scores. X axis shows verbal S A T scores and runs from four hundred eighty to six hundred in increments of twenty. Y axis shows math S A T scores and runs from four hundred eighty to six hundred in increments of twenty. Data points are scattered.](Media/L09-24.png)

Above is another good example of a scatterplot. It is not clear if each dot represents a single student, or a class full of students, but it clearly shows at a glance that for the standardized test, higher verbal scores and higher math scores seem to go hand-in-hand.

![A scatterplot matrix titled iris data open parentheses red equals setosa, green equals versicolor, blue equals virginica close parentheses. The matrix made up of a grid of sixteen squares, four rows of four. Row 1, from left to right, sepal dot length, scatterplot, scatterplot, scatterplot. Row 2, from left to right, scatterplot, sepal dot width, scatterplot, scatterplot. Row 3, from left to right, scatterplot, scatterplot, petal dot length, scatterplot. Row 4, scatterplot, scatterplot, scatterplot, petal dot width.](Media/L09-38.png)

The scatterplots above are a great representation of data. Instead of just two quantitative variables, there are now four, and the "scatterplot matrix" plots each pair of variables. In fact, each pair is plotted twice. For instance, when considering the sepal length to the sepal width, the scatterplot in row 1 column 2 and the scatterplot in row 2 column 1 are reflections of each other.

On top of the matrix, each graph shows a third variable (categorical) which breaks the graph up even more and provides a ton of information that is probably useful to a plant biologist.

![A scatterplot with no key. Many dots of various colors are scattered. X axis reads o l e i c. Y axis reads s t e a r i c.](Media/L09-26.png)

Above is another decent scatterplot, where a third categorical variable is indicated with color. There is no key, so you don't know all the details.  Scaling and some context would probably help in the viewer's understanding of this graph.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Scatterplot Quiz
```

```c-lms
topic: Line Graphs
video-id: Line Graphs
video-url-mp4: https://player.vimeo.com/external/318291825.hd.mp4?s=e3e7bd8abd1595b7dd52b38a8400ca00b439b43b&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291825.hd.mp4?s=e3e7bd8abd1595b7dd52b38a8400ca00b439b43b&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291825.hd.mp4?s=e3e7bd8abd1595b7dd52b38a8400ca00b439b43b&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291825.sd.mp4?s=3b8b83ce71e0d8103aa3faec67aaa2590bf0e692&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291825.sd.mp4?s=3b8b83ce71e0d8103aa3faec67aaa2590bf0e692&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L09-pg9tutorial.zip)**.

# Line Graphs

Line graphs are a great way to represent data that are longitudinal, which means that either the same variable is being measured at different points through time or through space. For example, you could measure the outdoor temperature each hour throughout the day, or maybe you have a large pile of tailings from a mining operation, and you want to measure the radioactivity using a probe as you push the probe into the tailings pile at different depths.

Typically line graphs are single points in a scatterplot type fashion, but then they are connected by a line. The line isn't used to estimate the theoretical but unmeasured values between the data points, it is simply used to connect the data for easier viewing and interpretation.

* **Data format** : A line graph uses two quantitative variables, one of which is either a time component (most common) or a distance component (less common).

* **Pros** : Line graphs are a relatively simple graph that can convey a ton of useful information at first glance.

* **Cons** : If line graphs are used inappropriately, they can be misleading. For example, some people will make a line graph when there is a quantitative variable on the y-axis, and a categorical variable on the x-axis. Unless there is some sort of "order" in the categorical variable (which would make it an ordinal variable and not a categorical variable), there is no reason to connect the points and it can be subject to misinterpretation.

 ---

### Examples of Line Graphs

![A line graph showing people in a store at various times. X axis shows time and runs from ten a m to six p m in increments of one hour. Y axis shows number of people and runs from zero to twenty five in increments of one. A data point of number of people at each hour is plotted on the line graph. Ten a m, two people. Eleven a m, five people. Twelve p m, ten people. One p m, twenty two people. Two p m, fifteen people. Three p m, five people. Four p m, four people. Five p m, four people. Six p m, three people.](Media/L09-27.png)

Above is a very typical, no nonsense line graph. The individual data points are labeled here, which is not necessary, but can be helpful.

![A line graph titled channel one news viewing figures. The line graph shows multiple trends. The x axis is months and runs from January to December in increments of one month. The Y axis is millions of viewers per day and runs from zero to five in increments of one. To the right is a key that shows the color that each time represents. Blue, one p m. Yellow, six p m. Red, nine thirty p m. Green, eleven p m. Beneath the line graph is text that reads open parentheses the eleven p m news was introduced on first may close parentheses.](Media/L09-28.png)

This next graph above is a good. Multiple trends are overlaid on the same set of axes, and they are related to each other and would be helpful to a station manager, for instance. Your first glance provides good information such as: at 11 PM, viewers peaked in the summer months, and seem to have been taking viewers away from the 9:30 PM broadcast.

This makes sense anecdotally; it is expected that families might be busier in the summer evenings and end up catching the later broadcast. Then, when school starts in September, hours go back to where schedules are more conducive to family life.

There is also an example of excellent graph protocol, where the author spells out the fact that the 11 PM broadcast didn't begin until May, so the absence of the green line from Jan through Apr is clearly explained.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Line Graph Quiz
```

```c-lms
topic: Data Maps
video-id: Data Map
video-url-mp4: https://player.vimeo.com/external/318291746.hd.mp4?s=ae608352ea065714d26813ce596d7f644f8d07b8&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291746.hd.mp4?s=ae608352ea065714d26813ce596d7f644f8d07b8&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291746.hd.mp4?s=ae608352ea065714d26813ce596d7f644f8d07b8&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291746.sd.mp4?s=173020ed32455d467784e8de81d153bf10871d00&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291746.sd.mp4?s=173020ed32455d467784e8de81d153bf10871d00&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L09-pg10tutorial.zip)**.

# Data Maps

Data maps are exactly what they sound like - a quantitative variable is overlaid on a map, and usually a color gradient is used to demonstrate the strength of the variable in that region. A "key" is crucial, because the picture is meaningless if you don't know what a certain color represents.

* **Data format** : The data is usually a single quantitative variable, with a categorical variable that has some location designation, such as a county name, a zip code, or a state name. 

* **Pros** : These graphs are ideal for quick and dirty visual reference. Most people recognize and familiar with basic geography.

* **Cons** : One drawback to data maps is that sometimes authors chose to report raw numbers rather than rates. This can be misleading, because (in the case of counties) there is such a huge variation in total population, it distorts the effect.

---

### Data Map Examples

![A map of the united states showing stroke death rates, two thousand to two thousand six, adults ages thirty five plus, by county.](Media/L09-30.png)

Above is a data map of stroke rates for adults across the US. It was prepared by the Center for Disease Control and Prevention (CDC), which has a stellar reputation for accuracy and unbiased evaluations. They have done a great job in bucketing the colors so that about 1/5 the country is grouped into each color.

The high stroke rate throughout the South is alarming, and then the complete change as you head into the southern half of Florida is such that it even makes the most casual observers wonder what is going on. Drawing the consumer in is an indication of an excellent visualization. If it makes you want to investigate further, the work of the visualization is done.

![A county level map of the united states that shows voting patterns. Each county is a shade of either red or blue, with the deepest red indicating strongest support for the Republican presidential candidate, and the deepest blue indicating strongest support for the Democrat presidential candidate.](Media/L09-31.png)

Every presidential election has one of these data maps shown above. Each county is colored based on whether the county favored the Democrat (blue) or the Republican (red) candidate. The darker the color, the stronger the support for that candidate.

One caution with data maps: in this example, there are some really large counties in the US. Many of them are in the west, especially Nevada, Southeast California, and Arizona.

If you interpret a data map, you shouldn't put too much weight on the size of the area, because there is a chance that the population is spread pretty thinly in a large county, whereas it may be very dense in a small county.

This map is from the presidential election between Donald Trump and Hillary Clinton. The uninformed observer would look at this map and might conclude that the Republican candidate had won an overwhelming victory over the Democrat based simply on square mileage, but the truth is that the Democrat actually received more votes than the Republican in this case. This map is good for seeing "areas" of strength, and shouldn't be interpreted on a county by county basis from color alone.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Data Map Quiz
```

```c-lms
topic: Area Graphs
video-id: Area Graph
video-url-mp4: https://player.vimeo.com/external/318291672.hd.mp4?s=3ce6f0bd86ea5a6bfd4331f07eff3c096c19b2ac&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291672.hd.mp4?s=3ce6f0bd86ea5a6bfd4331f07eff3c096c19b2ac&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291672.hd.mp4?s=3ce6f0bd86ea5a6bfd4331f07eff3c096c19b2ac&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291672.sd.mp4?s=583490cfae5e7e14d45eb6f31ff85673dd4426f7&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291672.sd.mp4?s=583490cfae5e7e14d45eb6f31ff85673dd4426f7&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L09-pg11tutorial.zip)**.

# Area Graph

An area graph is similar to a line graph, in that the horizontal axis (or x-axis) is usually a date or time stamp. There is a single quantitative variable, but there are also several categories for that quantitative variable for each time slot. Most importantly, it has to make some sort of sense to look at the total for each time slot in addition to wanting the breakdown by category.

* **Data format** : There are two quantitative variables, but one of them needs to be time. There is also a categorical variable that breaks down the vertical axis quantitative variable into different groups.

* **Pros** : Like most of the graphs you have looked at so far, visual interpretation is almost immediate. 

* **Cons** : On the down side, any "area" that is not sitting directly on the horizontal axis might be difficult to interpret when you want to know the "month-to-month" trend. Once the bottom of a single color area is not flat, peaks and valleys in the top of a single color area become less intuitive.

---

### Area Graph Examples

![A generic area graph titled variable y, January two thousand thirteen. X axis is date and runs from January first two thousand thirteen to January twenty ninth two thousand thirteen in increments of one week. Y axis is variable y and runs from zero to four hundred fifty in increments of fifty. A color key shows green, group c, red, group b, blue, group a, purple, group d.](Media/L09-32.png)

Above is a generic chart showing Variable Y as the response variable, and categories as groups A, B, C, and D. The use of color is good, dates are clearly labeled, but unfortunately the groups are in a funky order.

![An area graph showing the months of the year on the x axis and sales on the y axis, running from zero dollars to four hundred thousand dollars in increments of one hundred thousand dollars. The graph shows sales data throughout the year for four regions, central, east, south, and west. Each regions data is shown in a different color.](Media/L09-33.png)

Again, the graphic above is a good use of color, and the graph shows total sales broken down by region. As was noted in the "cons" section above, the large spike in May appears to be completely driven by a spike in sales in the South. The Central, East, and West regions all show relatively flat sales in the April through July time frame.

This is easily seen in the West region, because the bottom of the grey shaded region is flat. But for the Central and East, you have to look closely to see that the thickness (top to bottom) of the shaded region is pretty consistent for those four months, even though the bottom of both shaded regions is quite bumpy.

![An area graph showing the percentage of expenditure for various cost categories across time. The x axis is years and runs from nineteen eighty four to two thousand eight in increments of two years. The y axis shows percentage and runs from zero percent to one hundred percent in increments of ten percent. The categories of data, from bottom to top, are transportation, personal insurance, miscellaneous, housing, healthcare, food, entertainment, education, cash contributions, and apparel.](Media/L09-34.png)

This graph above is interesting because the vertical axis is not in dollars, it is in percentage, so the total each year adds to 100%. This means that there is a nice smooth top of the graph as opposed to the bumpy tops in the previous two examples.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Area Graph Quiz
```

```c-lms
topic: Tree and Heat Maps
video-id: Tree and Heat Maps
video-url-mp4: https://player.vimeo.com/external/318291888.hd.mp4?s=b7f4c89d0520fe0f984d4466066519249f387ff5&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/318291888.hd.mp4?s=b7f4c89d0520fe0f984d4466066519249f387ff5&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/318291888.hd.mp4?s=b7f4c89d0520fe0f984d4466066519249f387ff5&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/318291888.sd.mp4?s=d95c451eb67a0eae217b5ed8a165dfce2d94fa30&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/318291888.sd.mp4?s=d95c451eb67a0eae217b5ed8a165dfce2d94fa30&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L09-pg12tutorial.zip)**.

# Tree Maps

Tree maps are highly visual methods of displaying data. They are hierarchical in that the categorical data has an element of drill down available in the graphic. This hierarchy is displayed using nested shapes, usually rectangles. Thousands of bits of information can be displayed in a single visualization.

* **Data format** : Tree maps have one quantitative variable and one or more categorical variables with multiple levels.  

* **Pros** : As noted before, thousands of rows of data can be conveyed in a single graph.

* **Cons** : There is a lot of stuff to look at. It usually takes a bit more than just a cursory glance to catch all the nuance in the data. Sometimes small but important anomalies get lost in the graph.

![A tree map in which the categorical variables are European countries and regions within each country. The size of the overall rectangles for each country, as well as the smaller rectangles for the regions within each country, are an indication of population. Color is an indication of the ration of elderly, considered sixty five and over, in the region.](Media/L09-35.png)

For example, take a look at this tree map above. The categorical variables are European country, and region within the country. The size of the overall rectangles for each country, as well as the smaller rectangles for the regions within each country, are an indication of population. Furthermore, color is an indication of the ratio of elderly (65 and over) in the region.

It is easy to see that Germany not only has a large population, but also has a large elderly population (assuming red is high, and blue is low, of course). France has a nice mix of older and younger, whereas Poland is largely a younger population than western European countries.

You might wonder why these data were not portrayed in a data map, since the groups are geographical regions. Good question! Take a look at both the area map and the tree map side-by-side, and see what is apparent in one graph but not the other:

![An area map of European countries and regions within each country, and a tree map of European countries and regions within each country, placed side by side.](Media/L09-42.png)

What jumps out at you?

Here are some observations:

* The difference from Germany to Poland is abrupt. It basically stops at the border. What do you suppose drives this?

* Sweden is about 1.5 times the size of Germany geographically, but the population of Sweden is so small, that it is hard to find in the tree map. Germany has about 9 times the population of Sweden.

* The UK and Ireland have a similar relationship. The UK is about 3 times the size of Ireland, but has about 15 times as many people. The impact of Ireland to the whole continent is overemphasized on the area graph, whereas on the tree map you can hardly find Ireland.

---

## Heat Map

Heat maps and tree maps are similar, in that they both use color and color gradients to display some sort of quantitative variable. Sometimes heat maps are symbolic representations of the data and simply use shapes (generally rectangles) to display different categories, while other times actual geographical maps are used to display things.

Heat maps became widely used in the early 1990s in the financial industry, and then spread out from there to many industries and sciences. Heat maps typically use colors ranging from bright green (for 'cool' regions) to bright red (for 'hot' regions), although it has become more common for heat maps to use the full spectrum of colors, where blue is the 'cool' color and red is the 'hot' color.

* **Data format** : Heat maps usually have at least one quantitative variable that dictates the "color" of the region, depending on what the author defines as hot versus cool. If the heat map is rectangular generic shapes used to represent the category, then there is one or more categorical variables displayed (if it is two or more categorical variables, they usually have some sort of hierarchy).

* **Pros** : The heat map shows lots of information at a glance.

* **Cons** : The graphic can become insanely complex and need a lot of visual study to find the hidden gems.

---

### Heat Map Examples

![A heat map showing different sized boxes that correspond to a company's amount of sales in a particular area. Boxes are colored to indicate the profitability of the sales, with boxes in different shades of green indicating more profit and boxes in different shades of red indicating negative profit.](Media/L09-36.png)

The heat map above is an indication of a company's annual sales. The size of each box represents the amount of sales in that area, and the color indicates the profitability of those sales. It is easy to see what is profitable, and what is not. A sales manager might make important decisions for future growth based on this chart alone.

![A heat map for the financial sector that shows ticker symbols for dozens of companies. The sizes of boxes are determined by market cap. Color indicates stock price increase or decrease. The categorical hierarchy is from market sector to actual company name.](Media/L09-37.png)

The heat map above goes back to the heat map's roots in the financial sector. It shows ticker symbols for dozens of companies. Size is broken out by market cap, color is indicative of stock price increase or decrease, and the categorical hierarchy is from market sector to actual company name.

![Two heat maps overlaid onto two actual maps of the United Kingdom. The heat maps have the title antibiotic prescriptions per person. A vertical scale of color runs top to bottom, with zero point four and shades of green on the top. The scale runs downward, with shades of green become lighter, turning into yellow, then orange, and then shades of red, culminating in deep red with a value of one point zero. On the left, a map of the United Kingdom in August. Most of the map is green and yellow with only a few orange and red regions. On the right, a map of the United Kingdom in December. Most of the map is dark red, red, and orange, with only a few spots that are yellow or green.](Media/L09-43.png)

Here is an example of a heat map that is actually on a map. This is a map of the UK. Those concerned about overuse of antibiotics would take one look at this and determine that it is not a regional problem, it is a seasonal problem.

---

## Summary

This is just a few of the available methods. There are thousands, and more are being created each day. Some are clever, some are way too much information, and some are rather dull. When determining what type or types of visualization should be included as you report results, keep the "principle of parsimony" in mind - use the simplest approach that gets your point across. Everything else is just clutter.

* Before any sort of statistical investigation of data takes place, it is a great idea to do a cursory scrub of the data, and to generate some simple visualizations.

* The right visualization will help you learn about the data quickly and easily.

* This is a skill that becomes honed only through practice, but as a data scientist, you will be amazed at how easily you can knock your boss' socks off with a good visualization that tells a story quickly.

* Creating visualizations is usually pretty simple. Formatting the data correctly and using the right graph is the hard part.

---

## When to Use Each Graph

Below you will find a general summary of what charts will be used for each data type.

---

### Categorical Data: 

* Pie chart

* Bar graph

* Pareto chart

---

### Continuous Data: 

* Histogram

* Boxplot

* Scatterplot

* Line graph

---

### Categorical and Continuous Data: 

* Histogram with multiple groups

* Side-by-side boxplots

* Stacked bar graph

* Data map

* Tree map

* Heat map

---

## Review

```c-lms
start-activity: Heat Map and Tree Map Quiz
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
        <td style="font-weight: bold;" nowrap>Histogram</td>
        <td>A graph of the spread of the data for a single quantitative variable.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Boxplot</td>
        <td>A graph of the spread of data around the mean for a single quantitative variable.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Side-by-Side Boxplot</td>
        <td>A graph of the spread of data around the mean for one quantitative variable <em>by</em> one categorical variable with two or more groups.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Pie Chart</td>
        <td>A graph of the frequencies or percentages for a single categorical variable.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Bar Graph</td>
      <td>A graph of the frequencies or percentages for a single categorical variable.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Stacked Bar Graph</td>
      <td>A graph of the frequencies or percentages of two categorical variables (one for the different bars, and one for the stack in the bars).</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Pareto Chart</td>
      <td>A type of bar chart in which the bars are ordered from largest to smallest and a cumulative count is shown as a line in the same chart.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Scatterplot</td>
      <td>A graph of two quantitative variables, one for each axis.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Line Graph</td>
      <td>A graph of two quantitative variables, one of which must have a time or distance component (which is shown on the x axis).</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Data Map</td>
      <td>A graph of a single quantitative variable and a categorical variable that is a location.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Area Graph</td>
      <td>A graph of two quantitative variables, one of which needs to be time, <em>and</em> a categorical variable.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Tree Maps</td>
      <td> A graph that displays one quantitative variable and one categorical variable with multiple levels.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Heat Maps</td>
      <td>A graph that displays one quantitative variable descriptively with "hot" and "cold" colors as well as a categorical variable.</td>
    </tr>
</table>

```c-lms
topic: High Level Data Exploration - Skills Assessment
```

Next is an exam to review the recently covered material. This exam is _not_ graded. Please feel free to refer to your notes or the curriculum, since in the real world, you don't have to memorize everything - just know where to find information! 

For each of the following data visualizations, indicate the input data format required:

```c-lms
start-activity: Lesson 9 Exam
```
