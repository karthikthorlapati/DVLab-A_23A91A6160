#Load the data
data(iris)

#Understand the data
str(iris)
View(iris)
class(iris)
?iris


#Basic Box plot
boxplot(iris$Sepal.Length)

#Add Title & Labels
boxplot(iris$Sepal.Length,
        main="Box plot for Sepal Length",
        ylab="Sepal_Length",
        col="skyblue")

#Grouped boxplot(by species)
boxplot(Sepal.Length~Species,
        data=iris,
        main="Sepal Length by Species",
        xlab="Species",
        ylab="Sepal Length",
        col=c('pink','green','violet'))

#Multi-Variable Box plot
boxplot(iris$Sepal.Length,
        main="Box plot for Sepal Length",
        ylab = "Sepal.Length",
        col='skyblue')
boxplot(iris[,1:4],
        main="Multi Variable Box Plot",
        col=c('pink','green','skyblue','orange'))

#Using Custom color Palette
species_colors<-c("Setosa"="red",
                  "versicolor"="steelblue",
                  "virginica"="green")
boxplot(
  Sepal.Length~Species,
  data=iris,
  col=species_colors,
  main="Sepal Length by Species"
)
#ggplot
library(ggplot2)

ggplot(iris,
       aes(x=Species,y=Sepal.Length))+
  geom_boxplot()

#Colored box plot by species
ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  theme_minimal()

#Using Manual Color Palattes
ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  scale_fill_manual(
    values=c(
      "setosa"="red",
      "versicolor"="steelblue",
      "verginica"="green"
    )
  )+
  theme_minimal()