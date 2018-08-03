library(lattice)
cars <- read_csv("C:/Users/bernr/Desktop/Repro/04cars.csv")



# lets use a builtin data set 
mtcars
# now we can see a quick scatterplot of correalted data
plot(mtcars)
# thats not really going to do us any good. So lets compare somethings....
# lets plot the dealer cost vs the manufactor suggested retail price(MSRP)

plot(cars$MSRP,cars$Dealer_cost)
# ok now we are getting somewhere this chart shows the higher cost the higher the MSRP 
# but it is a boring lets make a chart showing miles per gallon of all the cars in mtcars

dotchart(mtcars$mpg)
#that s boring and does not explain much 
#now we should add some labels 

dotchart(mtcars$mpg,labels=row.names(mtcars), cex=0.9, xlab="Miles Per Gallon")
# Still boring so  let's go all out
# Dotplot: Grouped Sorted and Colored
# Sort by mpg, group and color by cylinder 
x <- mtcars[order(mtcars$mpg),] # sort by mpg
x$cyl <- factor(x$cyl) # it must be a factor
x$color[x$cyl==4] <- "red"
x$color[x$cyl==6] <- "blue"
x$color[x$cyl==8] <- "darkgreen"	
dotchart(x$mpg,labels=row.names(x),cex=.9,groups= x$cyl,
         main="Gas Milage for Car Models\ngrouped by cylinder",
         xlab="Miles Per Gallon", gcolor="black", color=x$color)





# Basic data analysis
median(cars$MSRP)
mean(cars$MSRP)
max(cars$MSRP)
min(cars$MSRP)
range(cars$MSRP)
quantile(cars$MSRP)

