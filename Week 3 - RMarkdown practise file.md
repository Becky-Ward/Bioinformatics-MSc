---
title: "A practise RMarkdown file - week 3 lecture"
author: "BW"
date: "16/10/2021"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

These are some thngs I am trying out in RMarkdown

##how to make something bold?##

**how to add in some code that is not run ** `so it looks like this is bold ** i used`

*how to add in some code that is not run *

```{r}
##this is my code that is not run i am assuming

my_thingys <- c(3,4,7,1)
my_thingys
print(my_thingys)



```


