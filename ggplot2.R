install.packages("ggplot2")
library(ggplot2)
library(tidyverse)
#Draw scatter plots with ggplot2
g <- ggplot(mtcars, aes(x=hp, y=mpg))
g+geom_point()


# Add Labels 
g+geom_point() + labs(title="Horsepower vs mpg", subtitle="mtcars", y="Horsepower", x="mpg", caption="chart")


# Change the size and color of the points
g+geom_point(col="blue", size=3) + labs(title="Horsepower vs mpg", subtitle="mtcars", y="Horsepower", x="mpg", caption="chart")


# Use color to code another column "cyl"
g+geom_point(aes(col=cyl), size=3) + labs(title="Horsepower vs mpg", subtitle="mtcars", y="Horsepower", x="mpg", caption="chart")


# Change the theme of the chart
gg <- g+geom_point(aes(col=cyl), size=3) + labs(title="Horsepower vs mpg", subtitle="mtcars", y="Horsepower", x="mpg", caption="chart")
gg+ theme_classic() 


#Draw a smoothing line based on loesses 
gg <- g+geom_point(aes(col=cyl), size=3) + labs(title="Horsepower vs mpg", subtitle="mtcars", y="Horsepower", x="mpg", caption="chart")
gg+ theme_classic() + geom_smooth()


#Now lets make it interactive
install.packages("plotly")
library(plotly)
ggplotly(gg)



# Add annotation to the chart

library(grid)
text <- "This is a great place to add some text"
grob <- grid.text(text, x=0.7, y=0.8, gp=gpar(col="red", fontsize=12))
gg + theme_classic() + annotation_custom(grob)


#Draw a histogram
g3 <- ggplot(mtcars, aes(mpg))
g3+geom_histogram(binwidth=1)+labs(title="Histogram")


#Draw a correlogram
install.packages("ggcorrplot")
library(ggcorrplot)
data(mtcars)
corr <- round(cor(mtcars), 1)
ggcorrplot(corr, method="circle", colors=c("red", "green", "blue"), lab=TRUE)







