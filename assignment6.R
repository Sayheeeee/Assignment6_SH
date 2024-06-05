mtcars
colnames(mtcars)

library(ggplot2)
str(mtcars)
g1 <- ggplot(mtcars, aes(x = mpg)) + 
  geom_histogram(binwidth = 2, fill = 'blue', color = 'black') + 
  ggtitle("Histogram of MPG")
g1

g2 <- ggplot(mtcars, aes(x = factor(gear))) + 
  geom_bar(fill = 'orange', color = 'black') + 
  ggtitle("Bar Chart of Gears")
g2

g3<- ggplot(mtcars, aes(y = mpg)) + 
  geom_boxplot(fill = 'lightgreen', color = 'black') + 
  ggtitle("Box Plot of MPG")

g4<- ggplot(mtcars, aes(x = factor(gear), y = mpg)) + 
  geom_boxplot(fill = 'pink', color = 'black') + 
  ggtitle("Box Plot of MPG by gear") 
g4

#scatter
colnames(mtcars)
g5<- ggplot(mtcars, aes(x = hp, y = mpg)) + 
  geom_point(color = 'red') + 
  ggtitle("Scatter Plot of HP vs MPG")

g6<- ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point(color = 'blue') + 
  ggtitle("Scatter Plot of WT vs MPG")

#scatter + regression
g7<- ggplot(mtcars, aes(x = hp, y = mpg)) + 
  geom_point(color = 'red') + 
  geom_smooth(method = "lm", se = FALSE, color = 'black') + 
  ggtitle("HP vs MPG with Regression Line")

g8<- ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point(color = 'blue') + 
  geom_smooth(method = "lm", se = FALSE, color = 'black') + 
  ggtitle("WT vs MPG with Regression Line")

library(gridExtra)
grid.arrange(g1,g2,g3,g4,g5,g6,g7,g8, ncol=2, nrow =4)
