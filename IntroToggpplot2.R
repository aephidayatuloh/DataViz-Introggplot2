library(ggplot2)

setwd("D:/data/folder")
titanic <- read.csv("titanic.csv")
titanic$Survived <- as.factor(titanic$Survived)
titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Sex <- as.factor(titanic$Sex)
titanic$Embarked <- as.factor(titanic$Embarked)

# install.packages("ggplot2")
library(ggplot2) 

qplot(x = Age, data = titanic)

ggplot(data = titanic, aes(x = Survived)) + 
  geom_bar()

g <- ggplot(data = titanic, aes(x = Survived)) 
g + geom_bar()

ggplot(data = titanic, aes(x = Survived)) + 
  geom_bar(fill = "blue")

g <- ggplot(data = titanic, aes(x = Survived)) 
g + geom_bar(fill = "blue")

ggplot(data = titanic, aes(x = Survived, fill = Sex)) + 
  geom_bar()

g <- ggplot(data = titanic, aes(x = Survived)) 
g + geom_bar(aes(fill = Sex))

ggplot(data = titanic, aes(x = Fare)) + 
  geom_histogram()

ggplot(data = titanic, aes(x = Fare)) + 
  geom_histogram(fill = "red")

g <- ggplot(data = titanic, aes(x = Fare)) 
g + geom_histogram(fill = "red")

ggplot(data = titanic, aes(x = Fare)) + 
  geom_histogram(fill = "red", bins = 50)

g <- ggplot(data = titanic, aes(x = Fare)) 
g + geom_histogram(fill = "red", bins = 50)

ggplot(data = titanic, aes(x = Fare, fill = Sex)) + 
  geom_histogram(bins = 50)

g <- ggplot(data = titanic, aes(x = Fare)) 
g + geom_histogram(aes(fill = Sex), bins = 50)

ggplot(data = titanic, aes(x = Fare, fill = Sex)) + 
  geom_density()

g <- ggplot(data = titanic, aes(x = Fare)) 
g + geom_density(aes(fill = Sex))

ggplot(data = titanic, aes(x = Fare, fill = Sex)) + 
  geom_density(alpha = 0.5)

g <- ggplot(data = titanic, aes(x = Fare)) 
g + geom_density(aes(fill = Sex), alpha = 0.5)

ggplot(data = titanic, aes(x = Age, y = Fare)) + 
  geom_point()

g <- ggplot(data = titanic, aes(x = Age, y = Fare)) 
g + geom_point()

ggplot(data = titanic, aes(x = Age, y = Fare, col = Survived)) + 
  geom_point(aes(col = Survived, shape = Sex))

g <- ggplot(data = titanic, aes(x = Age, y = Fare)) 
g + geom_point(aes(col = Survived, shape = Sex))

ggplot(data = titanic, aes(x = Pclass, y = Fare)) + 
  geom_boxplot()

# Faceting
ggplot(data = titanic, aes(x = Age, fill = Survived)) + 
  geom_density(alpha  0.5)

ggplot(data = titanic, aes(x = Age, fill = Survived)) + 
  geom_density(alpha  0.5) + facet_wrap(~Sex)

ggplot(data = titanic, aes(x = Age, fill = Survived)) + 
  geom_density(alpha  0.5) + facet_grid(~Sex)

ggplot(data = titanic, aes(x = Age, fill = Survived)) + 
  geom_density(alpha  0.5) + facet_wrap(Sex ~ .)

ggplot(data = titanic, aes(x = Age, fill = Survived)) + 
  geom_density(alpha  0.5) + facet_grid(Sex ~ .)

# Title and Axis Labels
g <- ggplot(data = titanic, aes(x = Age, fill = Survived)) + 
  geom_density(alpha  0.5) + facet_grid(Sex ~ .)
g

g + labs(title = "Distribution of Age by Sex and Survived")

g + labs(title = "Distribution of Age by Sex and Survived", 
         x = "Age of Passenger", y = "Proportion") 

# Theme
z <- g + labs(title = "Distribution of Age by Sex and Survived", 
              x = "Age of Passenger", y = "Proportion")
z + theme_grey() #default theme

z + theme_bw()

z + theme_classic()

z + theme(axis.title = element_text(size = 20))

z + theme(axis.title = element_text(size = 20),
          plot.title = element_text(colour = "red", size = 20))

z + theme(axis.title = element_text(size = 20),
          plot.title = element_text(colour = "red", size = 20))

ggsave("plotR.jpg")
