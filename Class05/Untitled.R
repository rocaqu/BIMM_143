---
editor: 
  markdown: 
    wrap: 72
---

library(ggplot2)

# Basic plot

p1 \<- ggplot(cars) + aes(x = speed, y = dist) + geom_point() +
geom_smooth()

# Plot with custom labels

p2 \<- ggplot(cars) + aes(x = speed, y = dist) + geom_point() + labs(
title = "Speed and Stopping Distances of Cars", x = "Speed (MPH)", y =
"Stopping Distance (ft)", subtitle = "Your informative subtitle text
here", caption = "Dataset: 'cars'" ) + geom_smooth(method = "lm", se =
FALSE) + theme_bw()

# Read data

url \<-
"https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes \<- read.delim(url)

# Summary statistics

head(genes) ncol(genes) nrow(genes) gene_states \<- table(genes\$State)
round(gene_states / nrow(genes) \* 100, 2)

# Basic gene expression plot

p3 \<- ggplot(genes) + aes(x = Condition1, y = Condition2, col =
State) + geom_point()

# Gene expression plot with custom colors and labels

p4 \<- ggplot(genes) + aes(x = Condition1, y = Condition2, col =
State) + geom_point() + scale_colour_manual(values = c("blue", "gray",
"red")) + labs( title = "Gene Expression Changes Upon Drug Treatment", x
= "Control (no drug)", y = "Drug Treatment" )

# Display plots

p1 p2 p3 p4
