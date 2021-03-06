---
title: "Analyzing Beer Review Data to Create a Recommendation System for Beer"
author: "Sergey Mouzykin"
date: "September 30, 2017"
output: 
  html_document: 
    fig_caption: yes
---


### What is the problem you wan to solve?

The great beer shortage has driven people to madness. No. That is obviously not true. On the contrary, the abundance of beer variety has left us with little imagination as to what the next micro brew will be found on the shelves of your local beer distributor. Perhaps there is hope in narrowing down your next selection before the next meal by using some type of recommendation system based on previous reviews. The decision for your next beer experience doesn't have to be a tedious one. Technology exists to make our lives easier and this surely applies in aiding decision making in regards to the next purchase of a perfect brew.

### Who is the client and why do they care about this problem? What will your client do or decide based on your analysis that they wouldn't have otherwise?

The client can be an app developer or a website comprised of beer enthusiasts who are looking for a way to recommend beer based on previous reviews in order to invite people to discover new beers from around the world without bias. Although this will fall short of a full recommendation system that can rival a tech giant's, but it will be the first step taken on a one-thousand mile journey. 


### What data are you going to use for this? How will you acquire this data?

The dataset is a collection of about 1.5 million beer reviews from a period of about 10 years up to 2011. Reviewers were tasked with rating a beer's five aspects such as appearance, aroma, palate, taste and overall impression based on a (1-5) scale. This dataset was acquired from data.world [link](https://data.world/socialmediadata/beeradvocate).

### Data Preview
|Variable|Description|
|----|----|
|review time| Number of times the beer was reviewed
|review overall| Overall rating of the beer 
|review aroma| Aroma rating
|review appearance| Appearance rating
|review profilename| Reviewer's profile name
|review palate| Palate rating
|review taste| Taste rating 
|brewery name| Name of the brewery
|brewery ID| Brewery's identification number
|beer style| Style of the beer
|beer name| Name of the beer
|beer ABV| Alcohol content of beer
|beer ID| Identification number of beer

```{r, message=FALSE, warning=FALSE}
#library(readr)
#beer_reviews <- read_csv("beer_reviews.csv")
#library(dplyr)
# preview of the data set
#beer_rev = tbl_df(beer_reviews)
#glimpse(beer_rev)


```


### In brief, outline your approach to solving this problem (knowing that this might change later).

The goal is to focus on a select number of questions to answer in order to create an appropriate recommendation system. These questions will be based on the perspective of the customers and their personal preferences. 

1. Find the overall rating for each beer style and the most popular beer style.
  a. Which breweries produce the highest rated beers?
In order answer this question, the following techniques can be applied, summary statistics, bar charts, and possibly classification algorithms.
  
2. How does each aspect, including alcohol content and beer style, affect the overall rating?
  a. Create groups for alcohol level (low, medium, high)
The following techniques can be applied, linear regression (beer strength vs. ratings), and a histogram of particular features of each beer.
  
3. Recommend some number of beers based on preferred aspects and style (Ex.: Hefeweizen, taste, aroma). 
The following techniques can be applied, classification techniques (k-means or k nearest neighbors) or regression.

Based on this dataset, we can find the personal preference for each reviewer and thus create a recommendation based on those preferences. 

Things to consider:

* Some beers may have a low amount of reviews and therefore should be discounted. The cutoff needs to be determined. 
* Missing values. Why are they missing? Can they teach us anything? Will they have a great impact on the overall ratings? 

### What are your deliverables? Typically, this would include code, along with a paper and/or a slide deck.
Deliverables will include a full report on the results with R code and a presentation.   

