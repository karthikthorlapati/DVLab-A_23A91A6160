#Load & Understand the Dataset
data(diamonds)
data(package = .packages(all.available = TRUE))
library(ggplot2)
data(diamonds)
str(diamonds)
dim(diamonds)
?diamonds
#Very basic scatter
plot(diamonds$carat, diamonds$price)
#Improved scatter
plot( diamonds$carat, diamonds$price, col=rgb(0,0,1,0,1), pch = 16,
      main = "Scatter Plot: Carat vs Price")
#Hexbin Using Base R
install.package("hexbin")
library(hexbin)
hb <- hexbin(diamonds$carat, diamonds$price, xbins = 40)
plot(hb, main = "Hexbin Plot")
#Basic Hexbin
ggplot(diamonds, aes(x = carat, y = price))+
  geom_hex()+
  labs(title = "Hexagon Binnig: Diamond Structure", x="Carat",y="Price")+
  theme_minimal()
ggplot(diamonds,aes(carat,price))+
  geom_hex(bins=40)+
  scale_fill_gradient(low="lightgreen",high="red")+
  theme_minimal()
ggplot(diamonds,aes(carat,price))+geom_hex(bins=35)+scale_fill_viridis_c()+
  theme_minimal()

