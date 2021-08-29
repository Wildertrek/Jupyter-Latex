```c-lms
activity-name: Statistical Inference
topic: Overview
video-id: Statistical Inference
video-url-mp4: https://player.vimeo.com/external/231927669.hd.mp4?s=98060bab9c0db0d014b3be81c07cf476a42c9d5f&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/231927669.hd.mp4?s=98060bab9c0db0d014b3be81c07cf476a42c9d5f&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/231927669.hd.mp4?s=98060bab9c0db0d014b3be81c07cf476a42c9d5f&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/231927669.sd.mp4?s=12ab70250a77f195d257ff8351cfc1b8fa9aea96&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/231927669.sd.mp4?s=12ab70250a77f195d257ff8351cfc1b8fa9aea96&profile_id=164
```

# Overview

Now that you have learned the basics of descriptive statistics and probability, it is time to combine them into what will be the heart of data science - making inferences.  An inference is a conclusion drawn about your data through the use of statistics.  In this lesson, you will briefly review sampling and how it applies to inferences, and then you will learn how to create and test hypotheses! You will also learn about some of the errors that can be introduced in hypothesis testing.

Concept mastery at the end of this lesson will be assessed by an exam. 

```c-lms
topic: Populations and Samples
video-id: Sampling Methods
video-url-mp4: https://player.vimeo.com/external/315975458.hd.mp4?s=f9830a991788182b4aee9ebeab8bfc201391b7d9&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/315975458.hd.mp4?s=f9830a991788182b4aee9ebeab8bfc201391b7d9&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/315975458.hd.mp4?s=f9830a991788182b4aee9ebeab8bfc201391b7d9&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/315975458.sd.mp4?s=0bd50e254c6137df4ee1aa4375931f5ff9165bba&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/315975458.sd.mp4?s=0bd50e254c6137df4ee1aa4375931f5ff9165bba&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L04-pg2tutorial.zip)**.

# Populations and Samples

Consider the following scenario: You work for the power company in a large metropolitan area. There are about 1.7 million households in the area the power company serves. You are asked to find out some information about the customers of the power company.

![Smoke coming out of a factories smokestacks.](Media/L04-02.png)

Unfortunately, the things you are asked to find out aren't just located in a database somewhere; you actually have to determine a way to go to the customer base and find out this information.

For example, maybe you need to find out if a customer has an additional alternative source of energy at their home, whether it is solar, gas, wind, or something else (basement nuclear reactor, maybe?); whether they have 5 or more appliances that are energy star rated; and how many people live in the home.

You realize that finding this information out for all 1.7 million households is impractical. It would take years, and thousands of hours to complete the data collection.

The solution is *sampling*. Sampling is when you take a subset of the population and make assertions about the entire population by just observing a small subset of that population. You don't need to talk to every household, you can just ask some of the households, and then extrapolate that information from the sample to the whole city.

![A visualization of the sampling process. There are twelve items that represent people in a population. Item two, five, eight, and ten are pulled from the total population and placed in subsets, or samples, of the overall population.](Media/DescriptiveStats1.png)

There is a risk involved with this: since you are purposely excluding most of the households in the city, you are obtaining incomplete information. You can take multiple samples and they will all be slightly different, with no way to tell which one is the most accurate.

On the other hand, your workload is dramatically decreased if you decide to sample.

In the above example, you would consider all of the households in the metro area as the population, and the subset of households from which you will get the info as the sample.

---

## Why Sample? 

Why not just observe all members of a population, rather than just sample? If you measured everyone or everything in the population, you would get an accurate measure of the population, rather than by estimating it through sampling.

While it is true that sometimes all of the members of a population are easily measured, for instance, a machine may collect data from every item manufactured, much more often, it is impractical.  For instance, imagine taking a political poll during a presidential election cycle.  There is no way you have the time or resources to ask all 220 million potential voters about their opinion. Sampling is the only practical approach.

---

## Sample Size

Sample size is referred to as *`n`*.  For instance, if you talk to 30 people out of a larger group, this is a sample size of 30, or *n* = 30.

---

## Sampling Methods

Sampling was proposed as a method of collecting data long ago. Collecting data is usually thought of as being fairly expensive in both resources and time. By sampling you can reduce the amount of data to be collected, thereby conserving resources; however, you can risk taking a sample that is not representative of the population as a whole and then having inaccurate results.

In the next few pages, you will go over the different types of sampling. 

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Samples Quiz
```

```c-lms
topic: Simple Random Sampling
```

# Simple Random Sampling

With simple random sampling (often referred to as SRS), every potential candidate for data collection has the same probability of being chosen as every other candidate for data collection. Who gets selected is *random*. The best way to do this is to assign all candidates a unique number, and then have a random number generator select which of those candidates should be a part of the sample. This method provides the best samples, but may not always be done because it can logistically be difficult or expensive.

![A humorous comic representing sampling. A man is wearing a blindfold and facing a crowd of people. The points at the crowd and says, you, you, you, you. A person in the crowd says, I cant hear you, is it still random?](Media/L04-03.png)

---

## Sampling Method Examples

Here is a hypothetical situation to illustrate each of these sampling methods:

> Suppose you work for a health care provider. Your team is tasked by a federal agency to add to the knowledge base of 10th-grade students by collecting medical information. The population is all 10th-grade students in the state of Ohio. You will collect height, weight, and hearing test data for each child sampled.

![A doctor showing information on a computer screen to a patient.](Media/DescriptiveStats2.jpg)

All of the following sampling strategies will make use of this scenario in their example.

---

## Simple Random Sampling Example

Each 10th grader in Ohio is assigned a number from 1 to 38,559 (that is the number of 10th graders in the state). A random number generator is used to select 3000 of these numbers, with no repeats. Your team will spread out across the state to meet with each of these 3000 students and collect the health data you need.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Simple Random Quiz
```

```c-lms
topic: Cluster Sampling
```

# Cluster Sampling

Cluster sampling occurs when the population is broken down into groups based on some sort of information such as location, age, or gender.  This information is usually demographic in nature, but not always.  Then, a few of the groups, called *clusters*, are randomly selected, and within each of the chosen clusters, you sample at 100%.  Everyone in a chosen cluster becomes part of the sample, and everyone in a non-chosen cluster is not part of the sample.  

In the graphic below, you see six clusters depicted, and those that have been colored in were chosen. You'll note that everyone from a particular cluster was taken for the sample; the randomization happens at the cluster level and not at the individual level, like for simple random sampling.

![Six clusters of dots representing the cluster sampling process.](Media/L04-04.png)

---

## Example

Rather than looking at individual students as sampling candidates, you decide to look at each school as a sampling candidate. There are 270 high schools in Ohio, so you randomly select 18 of these high schools and then sample every 10th grader at each of these 18 high schools. There will be no data collected from the 10th graders at the high schools that weren't selected.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Cluster Quiz
```

```c-lms
topic: Stratified Sampling
```

# Stratified Sampling

Stratified sampling occurs when the population is divided into strata, usually based on demographic characteristics, such as gender, age, or education level, and then within each strata candidates are randomly chosen. The strata are sampled according to their relative size within the population. For example, if the largest strata have five times as many candidates as the smallest strata, then the final sample should have five times as many sampled candidates from the large strata as the small strata.

In the image below, you'll note that the population can be *stratified,* or broken into groups based on a particular characteristic (in this case, color).  However, unlike cluster sampling, you don't randomly select the strata and sample everyone in it.  Instead, you will randomly sample within the strata at a rate that is proportionate to the how large the strata is.  In this image, since the purple strata is the largest, you will randomly select more people from that strata then from either the red or the green strata, which are smaller.

![Three distinct areas running from left to right. The first is a population containing people with different characteristics, represented by different colors. The second area represents strata and includes three sections in which the people from the first population have been broken into groups based on the target characteristics. The third area represents random samples. It is broken into three sections, like the strata area, but with far fewer people in each.](Media/L04-05.png)

---

## Example

There are some huge high schools in Ohio (3500+ students), and there are some smaller schools and charter schools with as few as 50 students. You break the schools into three different strata: schools with 1500 or more students, schools with 400 to 1499 students, and schools with 399 or fewer students. You will label these schools as big, medium, and small schools.

The big schools are where 45% of Ohio 10th grade students are going to school, with 38% going to medium-sized schools, and 17% going to the small schools. You want your total sample size to be 3000 students, so you randomly select 3000 x 45% = 1350 students from the big schools, 3000 x 38% = 1140 students from the medium schools, and 3000 x 17% = 510 students from the small schools.

This way, you have broken down the population into stratum and sampled from each strata proportionally so that each is fairly represented in the final sample of 3000 students.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Stratified Quiz
```

```c-lms
topic: Systematic Sampling
```

# Systematic Sampling

Systematic sampling happens when a start point is chosen at random, and then every *n*th item is selected after that. In the image below, the starting point is randomly chosen, but after that, every third person (generically stated as every *n*th because the number can change) is chosen, which makes the sampling as a whole no longer random.

![A visualization of the systematic sampling process. A group of dots runs horizontally across the space and represents a population. Every third dot is chosen to create the sample.](Media/L04-06.png)

---

## Example

Each 10th grader is assigned a number again, and then a random number between 1 and 13 is generated by a random number generator. Suppose you generate the number 10. Then, every 13th student after that is selected. In this case, that would be student number 10, 23, 36, 49, 62, etc. Sampling in this manner will get you pretty close to a sample size of 3000.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Systematic Quiz
```

```c-lms
topic: Convenience Sampling
```

# Convenience Sampling

Convenience sampling is when someone makes little or no effort to randomly sample, and they collect the  information that is easiest to get. Convenience sampling is usually the most biased type of sampling, but unfortunately, the most common. In the picture below, you can see that the first four people that are closest to the person taking the survey are chosen.

![A visualization of convenience sampling. A group of people make up a population. One of the people is the pollster. A circle is drawn around the pollster and the four people closest to the pollster. The four people become the sample.](Media/L04-07.png)

---

## Example

Right across the street from your facility is a high school. You send a team member over there to measure all of the 10th graders at that school. One of your team members has a spouse that teaches high school, so tomorrow she goes with her husband to the high school and measures all of those 10th-grade students there.

Another team member has a cousin who is the school nurse at a high school in another city, so you asked the cousin to collect data from the 10th-grade students at that high school, and so forth. It turns out that for some of the high schools, there was a volleyball tournament, so some of the 10th graders were missing because they are at the tournament, and another high school had a bunch of students missing because of band camp, but you just don't care.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Convenience Quiz
```

```c-lms
topic: Choosing a Sampling Method
```

# Choosing a Sampling Method

No one type of sampling is better than the others.  It usually depends on what your sampling goals are, and what is most practical.

For example, if your job was to make sure grocers are not leaving expired food on the shelf at their store, if you just ask them, there's a good chance they won't be honest with you. It makes more sense for you to go and see for yourself, but you are not going to jet off to all corners of the world to evaluate expiration dates on food from the grocers' shelves. You are probably going to select half a dozen local stores, randomly select one or two of them, and perform observations there.

Most academics believe that convenience sampling should be avoided whenever possible. In reality, most samples have at least some elements of convenience in them. The trick is to approach the convenience sampling in a thoughtful rather than a "lazy" manner and to incorporate some aspects of randomization within the constraints of the convenience sample.

Here is an example:

> A manufacturer is interested in how much of their output gets returned for being defective. They want to sample all returned materials and then read through the description of reasons for the return, because some of it gets returned for defects, but there are many other reasons for returns.

They can't randomly sample all of the returns data, because most of it is returned through a vendor. Some vendors won't share the information, some won't collect useable data, and some collect plenty of data but it is in Russian, or Chinese, or some other language the manufacturer cannot read.

For this reason, the manufacturer carefully selects the vendors that provide useful data, and then use some randomization to look at returns for different products, from different vendors, and at different times of the year. They purposely ignore a lot of data because it just isn't useful to them.

Systematic sampling doesn't make a bunch of sense in the 10th-graders example, because you haven't made the sampling any easier than simple random sampling would be. All you have done is systematically selected students instead of randomly picked them. However, if you were auditing quality on a manufactured item such as a wireless keyboard, and you are standing in the warehouse to select the keyboards you will test, doing systematic sampling makes perfect sense because you have shelves and shelves of finished product waiting to be shipped. Pulling out every 40th keyboard is no problem at all.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Choosing a Sampling Method Quiz
```

```c-lms
topic: Sampling Revisited
video-id: Why Sampling and Analysis?
video-url-mp4: https://player.vimeo.com/external/316877442.hd.mp4?s=d77b5c27adea8bef3fe743c2f6d399bbc636876f&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316877442.hd.mp4?s=d77b5c27adea8bef3fe743c2f6d399bbc636876f&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316877442.hd.mp4?s=d77b5c27adea8bef3fe743c2f6d399bbc636876f&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316877442.sd.mp4?s=c413621880cf74f679e0e2d07495c73b77194d35&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316877442.sd.mp4?s=c413621880cf74f679e0e2d07495c73b77194d35&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L06-pg2tutorial.zip)**.

---

## Why Should You Sample? 

There are lots of reasons. In general terms, you sample because you want to know something about a bigger set, usually called the population. Measuring the entire population is never practical, and usually impossible. Sampling helps you to develop estimates of what is going on with the whole population, and usually can provide you with a confidence interval around that estimate.

![Above a large circle containing many people is the word census. A smaller circle within the large circle surrounds eight people. These eight people become a sample.](Media/L08-21.png)

---

## How Should You Sample? 

Randomization is important, but so is practicality. Complete random sampling usually requires lots of resources. If you work for a facility that is only concerned with research, then it might be justified to use randomization in all cases. If you work for a production facility, then randomization usually gets in the way of manufacturing and selling goods, and the production manager would just prefer not give you any goods for experimentation at all.

In most businesses, data are collected in huge piles, because it is cheap and easy to do. For instance, if you work in a peanut butter plant, it might just be that every single jar of peanut butter gets weighed. There might be a device on the production line that weighs each jar in line as it zooms to the next station.

You don't even have to go out of your way to have tons of weight data available to you. Some of those places might crank out tens of thousands of jars each day. If you had to run some sort of experiment on weights, there is no reason to somehow randomly sample the weights on a given day. It makes more sense to just use the data that are available to you.

On the other hand, the health and safety inspector at the peanut butter plant might have to collect bacteria data on the peanut butter, and it requires a chemical analysis that is a bit laborious. The inspector would never presume to test every single jar. Instead, he or she would develop some sort of sampling plan, such as 7 jars per batch of raw peanuts per shift.

Then they would utilize randomization, pick the jars, do the bacteria analysis, and then infer the results to the rest of the jars from that batch and shift.

If they determine there is a bacteria problem, they will likely quarantine the affected batch and either scrap it, or ship it to a location with less restrictive bacteria requirements for peanut butter.

Recall from Lesson 4 that there are several different types of sampling: simple random, systematic, cluster, stratified, and convenience sampling. These are ideal approaches to sampling; in real life, sampling is usually a hybrid of two or more of these types.

Convenience sampling is the least desirable, but frankly, it is rare for a sample plan to not have some element of convenience included. Random sampling is the most desirable, but also often the most impractical. If you are able to at least incorporate some level of randomization in your sampling, you are probably better off.

---

## Why Analyze Data? 

As a historical note, much of statistics today originated in agriculture. It was very common, for instance, to do a study to see what type of soil and what type of fertilizer worked best for cotton yields. This was typically done by taking large plots of land of different soil types (sandy, rocky, rich, etc.) and creating many sub plots of the large plots.

Sub plots would then be randomly selected, and cotton would be planted. Maybe 20 sub plots in the sandy region would be selected, and then 5 different fertilizers would each be used on 4 sub plots. Cotton was planted, and harvested, and the yield would be calculated for each sub plot. Then, a large statistical analysis would be conducted to determine the best soil and fertilizer combination.

You might be thinking "Why bother with analysis? Just check and see which combination yields the most..." Sometimes if the differences are large, you would be correct - you don't need a data scientist to detect large differences. Most people with a bit of common sense can detect those large changes. But if the difference is subtle, common sense might not be able to detect small but significant differences.

---

### Automated Cars Example

Hopefully some time within the next 10 years, driverless cars will become ubiquitous in society. They will be loaded with sensors and redundant systems, but when you clear away all the dust and look at the simplest things that will be happening, it will usually boil down to some sort of statistical calculation to make decisions.

For example, a human can easily distinguish between a small dog running across the road vs. a plastic grocery bag blowing across the road. How do you get a machine to distinguish that with a high level of reliability? You don't want to make a mistake here.

If your car thinks it is a grocery bag and can therefore be run over without consequence, but it is a dog, that would be tragic. On the other hand, you don't want your car screeching to a halt every time a bag blows across the road because it might be a dog. The decision making process is highly dependent on years of statistical analysis.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Sampling Quiz
```

```c-lms
topic: Statistical Inference
video-id: Hypothesis Testing
video-url-mp4: https://player.vimeo.com/external/316877379.hd.mp4?s=03269a990657ef542ff67deb0dcecd6f330ad877&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316877379.hd.mp4?s=03269a990657ef542ff67deb0dcecd6f330ad877&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316877379.hd.mp4?s=03269a990657ef542ff67deb0dcecd6f330ad877&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316877379.sd.mp4?s=fd1dcf46d938fa31d31c01759e87b78f79ef172c&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316877379.sd.mp4?s=fd1dcf46d938fa31d31c01759e87b78f79ef172c&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L06-pg3tutorial.zip)**.



Statistical inference has been called the science of comparison. Mathematics has a lot of branches, and most of them are academic and theoretical. This is one branch that has a significant practical purpose.

If you read through this next part and start to feel lost, remember a few things:

1. You are not the only one that is feeling a little confused. When a student gets confused, they usually start to feel inadequate because they think they are the only one in the room that doesn't get it. Rest assured, if you are feeling lost, you are not alone.

2. You may have to think this over and read it over a few times before it starts to resonate with you.

3. Ask lots of questions.

---

## Creating a Hypothesis

Statistical inference is used to test hypotheses. But in order to test a hypothesis, it first needs to be created. The most important part of creating a hypothesis is to remember that it must contain the "`=`" sign, either explicitly, or implicitly. Here are a few examples:

* You have invented a new drug to treat hypertension. You are sure your drug is better than the most commonly used current drug, but as you develop a hypothesis, you hypothesize that the two drugs are exactly the same in effectiveness. What you really want to do is prove yours is better, but you will start by assuming they are both equally good.

* You are taking a survey and you believe that the crab cakes sold at "The Shack" are better than the crab cakes sold at "Seafood Supreme." Your hypothesis should be that both crab cakes are equally desirable to customers, and you hope to use data to disprove the hypothesis.

* You want to compare baseball players from two different eras, and you think one is better than the other. Your hypothesis is that they are equally skilled, and then you hope to use data to disprove that hypothesis.

* You want to collect some data to see if movie preference is dependent on gender. Your hypothesis is that movie preference is the same for both genders, and then collect data to see if the hypothesis should be rejected or not.

When creating a hypothesis, usually you actually come up with two. The first is called the "`null`" hypothesis, and this is how it is represented:

![H subscript zero, the symbol representing the null hypothesis.](Media/L08-12.png)

The word "null" is represented in the symbol by having the "0", or "null" as the subscript to the "H." The null hypothesis is the one that contains the explicit or implicit equality. Each of the examples above is a representation of the null hypothesis.

There is another hypothesis with every hypothesis test. It is called the "`alternative`" hypothesis, and is represented like this:

![H subscript lowercase a, the symbol representing the alternative hypothesis.](Media/L08-13.png)

The alternative hypothesis is usually a statement of what you hope to see happen. It can take one of three forms:

* Better than
* Worse than
* Different

In any case, the `null` hypothesis and the `alternative` hypothesis are stated together. The same examples above can help illustrate this:

* You have invented a new drug to treat hypertension. You are sure your drug is better than the most commonly used current drug, but as you develop a hypothesis, you hypothesize that the two drugs are exactly the same in effectiveness. What you really want to do is prove yours is better, but you will start by assuming they are both equally good.

    ![Null hypothesis, new drug equals baseline drug. Alternative hypothesis, new drug is greater than baseline drug.](Media/L08-18.png)

    It is important to note that the alternative hypothesis only cares if your new drug is better than the baseline drug. If the baseline drug is equally effective, or even better than the new drug, it is not being captured in this particular alternative hypothesis.

* You are taking a survey and you believe that the crab cakes sold at "The Shack" are better than the crab cakes sold at "Seafood Supreme". Your hypothesis should be that both crab cakes are equally desirable to customers, and you hope to use data to disprove the hypothesis. The null hypothesis is that `"The Shack" = "Seafood Supreme"`, and your alternative hypothesis is `"The Shack" > "Seafood Supreme"`. Using symbols, they would look like this:

    ![Null hypothesis, the shack equals seafood supreme. Alternative hypothesis, the shack is greater than seafood supreme.](Media/L08-14.png)

    It is important to note that the alternative hypothesis only cares if The Shack is greater than Seafood Supreme. If the data collected indicate that there is no discernible difference, or that Seafood Supreme is actually better than The Shack, it won't be distinguished in this alternative hypothesis.  It is only being denoted if The Shack is better than Seafood Supreme.

* You want to compare baseball players from two different eras, and you think one is better than the other. Your hypothesis is that they are equally skilled, and then you hope to use data to disprove that hypothesis.

    ![Null hypothesis, player a equals player b. Alternative hypothesis, player a does not equal player b.](Media/L08-15.png)

    Note that this time, you are interested in using data to show that either player A is better than player B, or that player B is better than player A. You don't care which way it falls, you just want to show they aren't equal, which is the symbol that has the equals sign crossed out above.

* You want to collect some data to see if movie preference is dependent on gender. Your hypothesis is that movie preference is the same for both genders, and then collect data to see if the hypothesis should be rejected or not.

    ![Null hypothesis, movie preference is independent of gender. Alternative hypothesis, movie preference depends on gender.](Media/L08-17.png)

    In this case, there are no equality or inequality signs, but the sentiment is still the same. In other words, when the null hypothesis says that preference is independent of gender, that means the preference is equal for the genders. 

---

## Calculating a Test Statistic

In every case in hypothesis testing, it is assumed that the null hypothesis is true, and under that assumption, a test statistic will be calculated. In most cases, how it is calculated is not important, because software usually calculates it. What is important is that the distribution of the test statistic is known, assuming that the null hypothesis is true. Since you know the distribution, you can calculate a probability.

---

## Calculating the Probability

You have already done this a bunch, but now it is formalized. If you know what a distribution looks like, you can calculate the probability of having a value greater than or less than the _test statistic_ value.

By the way, the statistical term for this probability is universally known as the *p* value.

---

## Determining Alpha

The Greek symbol alpha looks like this:

![The symbol alpha.](Media/L08-19.png)

Alpha is a pre-determined number that represents how often you are willing to draw a conclusion from the data, but be wrong. You will compare your *p* value with the alpha value to determine whether something is significant or not.  

The most typical value for alpha is .05. This means that there is a 95% chance that your results are accurate, and you are willing to accept a 5% chance that your data is wrong.  However, on the more rigorous side, you may also see alpha = .01, meaning that there is a 99% chance that your results are accurate and you are willing to accept a 1% chance of error.  And on the less rigorous side, from time to time you may see an alpha of .10, meaning that there is a 90% chance your results are accurate and a 10% chance your data is inaccurate.  

Here's a handy chart to sum alpha values up:

![A chart with three headings. Alpha level, accuracy, error. Row one. Alpha equal point zero one, ninety nine percent chance of accuracy, one percent chance of error. Row two. Alpha equal point zero five, ninety five percent chance of accuracy, five percent chance of error. Row three. Alpha equals point one zero, ninety percent chance of accuracy, ten percent chance of error. To the left of the chart is an error pointing downward that reads rigor.](Media/inference2.png)

---

## Decision Rule

This is pretty straight forward, but has lots of implications. Don't worry about what it means exactly at this point. Just remember that if the *p* value is less than alpha, you should reject the null hypothesis in favor of the alternative hypothesis. However, if the *p* value is greater than alpha, you fail to reject the null hypothesis, which is also accepting the null.

---

# Summarizing the Components of Hypothesis Testing

* A data scientist wants to test a theory or is asked to test a theory. For instance, maybe they want to test if the defect rate on the second shift in a manufacturing plant is less than 4% after a new plant floor layout is set up. They come up with a null hypothesis that the defect rate is equal to 4%, and the alternative hypothesis is that it is lower than 4%.

* The data scientist decides that their alpha is 0.05.

* The data scientist comes up with a sampling plan that will cover both ends of the week, and through the summer vacation season where lots of substitute factory workers are around.

* The data scientist collects the data. 

* The data scientist uses software to calculate a test statistic and an associated *p* value.

* The data scientist uses a decision rule based on the *p* value and decides to reject the null hypothesis in favor of the alternative hypothesis. The data scientist's estimate for the defect rate is 3.2%.

* The data scientist gets a nice plaque for their effort, and the manager of the guy that designed the new floor layout gets a big bonus. Such is the life of a data scientist.

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Statistical Inference Quiz
```

```c-lms
topic: Type I and Type II Error
video-id: Type I and Type II Error
video-url-mp4: https://player.vimeo.com/external/316877425.hd.mp4?s=aecb47eb65b8a1c5d73ae460cdba36df73dffc34&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316877425.hd.mp4?s=aecb47eb65b8a1c5d73ae460cdba36df73dffc34&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316877425.hd.mp4?s=aecb47eb65b8a1c5d73ae460cdba36df73dffc34&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316877425.sd.mp4?s=e1b6e167406d02967d936c812786ceecf9144696&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316877425.sd.mp4?s=e1b6e167406d02967d936c812786ceecf9144696&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L06-pg4tutorial.zip)**.

# Type I and Type II Error

Because, by definition, statistics is taking place in a sample, which has come from a larger population, there will be some bias, or error, in the data, no matter what you do.  There are two types of errors to consider: Type I and Type II.

---

## Type I Error

During hypothesis testing, it is possible to make an error. Sometimes you will reject the null hypothesis, even though it is true. To put this into context, consider the first example above with the new drug for hypertension. The null hypothesis is that new drug = baseline drug. A Type I error occurs when you reject the null and say that the new drug is better than the baseline drug, but it really isn't better.

Under normal circumstances, you will commit a Type I error occasionally. In fact, as stated above, if your alpha is 0.05, that means about 1 out of every 20 times you evaluate a test statistic, you will commit a Type I error. The problem is that you will never know when you have committed the Type I error.

Type I error is also known as your `alpha` - the probability of the time you will be wrong for any given statistical test.

---

## Type II Error

During hypothesis testing, sometimes you will "fail to reject" the null hypothesis, even though it is false. This is an error too. It is called a Type II error. In context of the hypertension drug, a Type II error occurs when the data leads you to fail to find the new drug as being better, even though it really is better.

Type II error is also known as `beta`.  

---

## ART-BAF

This table is a helpful way to remember the errors:

![A table with two columns and two rows. Column one heading is reject the null. Column two heading is fail to reject the null. Row one heading is null hypothesis is true. Row two heading is null hypothesis is false. Reject the null if null hypothesis is true is a type one error. Fail to reject the null if null hypothesis is true is not an error. Reject the null if null hypothesis is false is not an error. Fail to reject the null if null hypothesis is false is a type two error.](Media/L08-20.png)

ART-BAF stands for:

* **A:** Alpha
* **R:** Reject
* **T:** True
* **B:** Beta
* **A:** Accept
* **F:** False

It is helpful because alpha is the probability of rejecting a true null hypothesis, and beta is the probability of "accepting" a false null hypothesis.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>If you're scratching your head over hypothesis testing and error, feel free to watch <a href="https://vimeo.com/403833869"> this recorded workshop!</a></p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Error Quiz
```

```c-lms
topic: Courtroom Analogy
video-id: Type I and Type II Error Examples
video-url-mp4: https://player.vimeo.com/external/316877410.hd.mp4?s=746d144848bc0223ce641475db871ea5ee5e2289&profile_id=175
video-url-mp4-1080: https://player.vimeo.com/external/316877410.hd.mp4?s=746d144848bc0223ce641475db871ea5ee5e2289&profile_id=175
video-url-mp4-720: https://player.vimeo.com/external/316877410.hd.mp4?s=746d144848bc0223ce641475db871ea5ee5e2289&profile_id=174
video-url-mp4-540: https://player.vimeo.com/external/316877410.sd.mp4?s=e9f540e34e23f87511f6e804cb3b2834cd0fe410&profile_id=165
video-url-mp4-360: https://player.vimeo.com/external/316877410.sd.mp4?s=e9f540e34e23f87511f6e804cb3b2834cd0fe410&profile_id=164
```

The transcript for the above topic tutorial video **[is located here](https://repo.exeterlms.com/documents/V2/DataScience/Video-Transcripts/DSO101-L06-pg5tutorial.zip)**.

# The Courtroom Analogy

Hypothesis testing is a lot like a court trial. In a courtroom, the null hypothesis is that the defendant is not guilty of an alleged crime. The alternative hypothesis is that the defendant is guilty.

The prosecution has the responsibility to put together enough evidence (data) to convince the jury that the null hypothesis should be rejected; that the defendant is guilty of the alleged crime.

At the end of the trial, the jury looks at all the evidence and the arguments from both sides, and determines if the evidence is convincing enough to reject the null. If they think that the probability the defendant didn't commit the crime is low, then they reject the null hypothesis and find the defendant guilty.

![A scene from the movie to kill a mockingbird showing the lawyer Atticus Finch speaking to a jury of people in a courtroom.](Media/L08-22.png)

On the other hand, if the evidence is not convincing enough to come back with a "guilty" verdict, the jury will say the defendant is "not guilty." They are not finding the defendant "innocent," they are basically saying that the evidence presented by the prosecution was not convincing enough to render a guilty verdict.

---

### Type II Error Example

If the defendant is guilty, but the jury finds him "not guilty," they have committed a Type II error (the null is false, but you "accept" it anyway).

---

### Type I Error Example

On the other hand, if the defendant did not commit the crime, but the jury finds him guilty anyway, the jury has committed a Type I error.

---

### A Real-Life Example of Type II Error

If you are old enough to remember the O.J. Simpson murder trial, it was a huge spectacle. The trial was televised and now, there is even a movie about it! It wasn't named *"The Trial of the Century"* for no reason.

To some, the trial seemed biased. To others, the "evidence" didn't add up. Did he do it? Was he framed? Either way, the jury came back with a "not guilty" verdict.

Trials don't determine innocence or guilt but whether if the prosecution has enough convincing evidence to find the defendant guilty, or insufficient evidence, which will lead to a verdict of being not guilty.

The same holds for hypothesis testing. The test doesn't determine whether or not A = B, it determines if there is enough convincing evidence that A and B are different, or not.

---

## Summary

In this lesson, you learned about the backbone of data science - inferences.  Without being able to test hypotheses and draw conclusions from your data, a data scientist is nothing.  Everything you learn from here on out - Python, R, Data Wrangling, Machine Learning - will be in pursuit of making the best inferences possible from your data and explaining it well.

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Having trouble with the concepts in this lesson? </h3>
    </div>
    <div class="panel-body">
        <p>Read this <a href="https://towardsdatascience.com/statistics-for-people-in-a-hurry-a9613c0ed0b"> great article</a>that explains everything with examples in plain English.</p>
    </div>
</div>

---

## Review

Below is a quiz to review the recently covered material. Quizzes are _not_ graded.

```c-lms
start-activity: Courtroom Analogy Quiz
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
        <td style="font-weight: bold;" nowrap>Population</td>
        <td>The larger group of all observations.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Sample</td>
        <td>A subset of the population. The best samples are selected randomly as much as is practical.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Simple Random Sampling</td>
      <td>Every person in a population has an equal likelihood of being selected.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Cluster Sampling</td>
      <td>Every group in a population has an equal likelihood of being selected.
    </td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Stratified Sampling</td>
      <td>Groups are stratified by a particular characteristic and then randomly selected from that strata in proportion to the commonality of the group.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Systematic Sampling</td>
      <td>A starting point is randomly selected, and then you select every <em>n</em>th person.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Convenience Sampling</td>
      <td>Sampling with no strategy that is easy for the researcher.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Inference</td>
        <td>A conclusion about your data drawn through hypothesis testing.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Hypothesis</td>
        <td>An educated guess about your data.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Alternative Hypothesis</td>
        <td>What you are testing for.  An assumption that groups will differ in some way.</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Test Statistic</td>
        <td>A value generated from your statistic that will help you determine the likelihood of your results being accurate.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap><em>p</em> value</td>
      <td>The statistical term for the probability that something is either less than, equal to, or greater than your test statistic.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Alpha</td>
      <td>A pre-determined number that you will be comparing your <em>p</em> value to to determine the likelihood that your hypothesis is accurate.  The most common value for alpha is .05.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Type I Error</td>
      <td>Reject the null hypotheses when you should have accepted it.</td>
    </tr>
    <tr>
      <td style="font-weight: bold;" nowrap>Type II Error</td>
      <td>Fail to reject the null hypothesis when you should have rejected it.</td>
    </tr>
</table>

---

## The Rule

If the *p* value is less than alpha, reject the null hypothesis!

```c-lms
topic: Lesson 6 Exam
```

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
        <p>Before you take your exam, you may want to review with  <a href="https://vimeo.com/410440398"> this recorded live workshop. </a></p>
    </div>
</div>

```c-lms
start-activity: Lesson 6 Exam
```
