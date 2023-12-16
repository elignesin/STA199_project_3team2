---
title: "Project Proposal"
subtitle: "Team 2 Proposal"
format: html
editor: visual
---

```{r}
#| label: load-pkgs
#| message: false

library(tidyverse)
```

# Data 1

## Introduction and data

The dataset is from the World Health Organization and has data on factors that relate to life expectancy, including mortality, immunization, and socioeconomic factors. As stated by the World Health Organization, data is collected through household surveys, civil registrations, and institutional sources such as health facilities. This data is then curated into the Global Health Observatory database. The dataset has data from all countries collected from 2000 to 2015. Each observation is a country's health status for a given year, and it includes variables such as life expectancy, mortality rates, country development status, schooling, disease rates, and alcohol rates.

## Research question

Question: Which health and socioeconomic factors most greatly affect the life expectancy of a country, and does this differ between developed and developing countries?

The research topic is life expectancy and the factors that influence it, as well as how these factors differ between countries. Our hypothesis is that developed countries will on average have higher life expectancy than developing countries, and that the factors most correlated with life expectancy are immunization coverage and income composition of resources. There are both categorical and quantitative variables involved in our research topic. Development status is a categorical variable and immunization coverage, income composition of resources, disease rates, mortality rates, and schooling are quantitative variables. Life expectancy is a quantative variable.

## Literature

Article: https://www.who.int/news/item/19-05-2016-life-expectancy-increased-by-5-years-since-2000-but-health-inequalities-persist

This article from the World Health Organization provides a broad overview about the disparities in life expectancy between different countries. Although life expectancy fluctuated more in the 20th century due to political circumstances, it had largely stabilized (for most countries) by the turn of the 21st century. Globally, the life expectancy for children born in 2015 was 71.4 years. However, for high-income countries, life expectancy is closer to 80 years or more, and for low-income countries, life expectancy is under 60 years. Despite dramatic gains in life expectancy in the last two decades, these major inequalities still persist. This report focuses on access to health services as a major determining factor for a nation's life expectancy. Complications with pregnancy and childbirth, HIV incidence, malaria outbreak, cardiovascular disease, cancer, lack of clean water, etc. represent just some of these risk factors that stem from or are exacerbated by underlying issues with healthcare infrastructure.

Research Question: Our research question builds on the WHO article by determining which risk factors have the greatest, most direct impact on life expectancy for different countries. Additionally, the data set includes variables that are not directly mentioned in the article, so bringing more factors to the discussion regarding disparities in life expectancy provides us with a more nuanced outlook on the topic.

## Glimpse of data

```{r}
#| label: load-data-1

life_expectancy <- read.csv("data/Life Expectancy Data.csv")
glimpse(life_expectancy)
```

# Data 2

## Introduction and data

The source of the data came from the CORGIS Dataset Project. The data was originally collected from the Coffee Quality Database. The datset describes both Arabica and Robusta beans from 2010-2018. The beans are from across many countries and rated on a continuous 0-100 scale. Each observation is a type of coffee bean from a specific farm which include variables such as acidity, sweetness, and fragrance are measured. There are also variables in the dataset that provide information on the origins of the beans such as the altitude of the farm in which the beans are collected from.

## Research question

Research question: Does Robusta or Arabica beans have a higher rating?

The research topic explores the rating of the coffee bean. There is a continuous 0-100 rating of the coffee bean on various factors that impact the overall rating of the coffee bean such as acidity, sweetness, fragrance, etc. The research topic will explore the relation between the type of the coffee bean and how it impacts the factors of the overall enjoyability of the coffee bean.

I hypothesize that the Arabica bean will have a higher rating. According to the Department of Agriculture, Arabica beans account for 60% of the coffee beans produced worldwide so there should be a higher quality if it is produced more.

Source: https://usda.library.cornell.edu/usda/fas/tropprod//2010s/2017/tropprod-06-16-2017.pdf

The types of variables in my research question are both categorical and quantitative. For categorical variables, the Country of origin of the coffee bean, whether the bean is Robusta or Arabica, and region in which coffee bean is from. The qualitative variables is altitude of the farm in which the coffee bean is produced, the number of bags of the coffee bean produced, and the scores of the coffee bean for flavor, sweetness, acidity, fragrance, uniformity, and moisture (scale of 1-10 continuous).

## Literature

The article I chose was "Arabic vs. Robusta: No Contest" by Jerry Baldwin which was featured in the Atlantic. In the article, Baldwin provides context as to why Arabica beans are better than Robusta beans that are supported by a historical breakdown of the origins of Arabica and Robusta beans. Specifically the creation of Robusta beans were to mix in with the Arabica beans to lower the overall cost of the beans per bag. Additionally, Baldwin provides context that Robusta beans are typically more mass-produced compared to Arabica, which often forgoes the quality and taste of the bean for making more. As a result, Baldwin concludes that Arabica beans have a better taste and quality than Robusta beans. However, Baldwin says that this is a generalization and may vary from bean to bean. Our research question builds on the article by expanding the data to more quantitative data rather than qualitative reasoning based on historical context. Our research question, instead, takes quantitative data of ratings of different factors that impact the quality of the bean (flavor, acidity, sweetness, etc) to see if there is a significant quantitative difference in ratings between Arabic and Robusta beans.

Link: https://www.theatlantic.com/health/archive/2009/06/arabica-vs-robusta-no-contest/19780/

## Glimpse of data

```{r}
#| label: load-data-2

coffee <- read.csv("data/coffee.csv")

glimpse(coffee)
```

# Data 3

## Introduction and data

The county_demographics data was taken from the CORGIS Datasets project. This information was collected by the United States Census Bureau about counties in the United States from 2010 through 2019. The observations include county data about age distributions, the education levels, employment statistics, ethnicity percents, household information, income, and other miscellaneous statistics about women-, minority-, and veteran-owned firms with over 3140 observations.

## Research question

This research question explores the topic of how attitudes of different age groups manifest in economic development. We hypothesize that since younger people tend to be more supportive of diversity, equity, and inclusion, that counties with a lower median age will show an increase in the amount of women- and minority-owned firms.

The variables in this research question are quantitative, with median age and number of women-/minority-owned firms all taking numerical values.

## Literature

Article: https://www.pewresearch.org/social-trends/2023/05/17/diversity-equity-and-inclusion-in-the-workplace/

Summary: The article covers the rise in attention toward diversity, equity, and inclusion in the workplace, and how the opinions of various demographic groups differ toward it. Most workers have experienced DEI measures at work, and most also say these measures have a positive impact, but not many place a lot of importance in it. Women are 11% more likely than men to see DEI as good, and in this order, Black, Hispanic, Asian, and then White people have the most positive opinions of DEI. The greatest indicator by far is political lean --- Republicans are equally split between positive and negative opinions, while Democrats overwhelmingly support DEI. In terms of age groups, the general trend is that younger employed adults tend to have greater support of DEI. Workers under 30 show the greatest support --- 68%, which generally declines into the 40s-50s in the upper age ranges. Workers generally believe their employer pays the right amount of attention to DEI. About 1/3 of workers believe racial or ethnic diversity and age diversity is important, with slightly less support for gender and sexual orientation diversity. About half of workers also value accessibility. Overall, workers that are women, Black, Democratic or young, tend to show the greatest support toward DEI.

Research Question: Our research question builds on this article, because the article indicates that the younger population supports workplace diversity more, and we want to figure out if the median age of a location is correlated with the minority ownership of businesses. Since younger demographics support diversity more, extrapolating from that, we would expect to see more minority ownership proportions in younger areas.

## Glimpse of data

```{r}
#| label: load-data-3

county_demographics <- read.csv("data/county_demographics.csv")

glimpse(county_demographics)

```
