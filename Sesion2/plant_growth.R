#Default Dataset
PlantGrowth <- PlantGrowth

#Basic Scatter Plot
plot(PlantGrowth$weight, PlantGrowth$group)

#hist - Create histograms
hist(PlantGrowth$weight)

class(PlantGrowth$group)
summary(PlantGrowth$group)

#Create subsets of individual PlantGrowth$group
PlantGrowth_Ctrl <- subset(PlantGrowth$weight, PlantGrowth$group == "ctrl")
PlantGrowth_trt1 <- subset(PlantGrowth$weight, PlantGrowth$group == "trt1")
PlantGrowth_trt2 <- subset(PlantGrowth$weight, PlantGrowth$group == "trt2")

#Get Mean of a vector
mean(PlantGrowth_Ctrl)
mean(PlantGrowth_trt1)

#Perform One Sampe T-Test
t.test(PlantGrowth_Ctrl, mu = 5)

#Perform Two Sampe T-Test
t.test(PlantGrowth_Ctrl, PlantGrowth_trt2)
t.test(PlantGrowth_trt1, PlantGrowth_trt2)

######################  Cars DataSet  #####################
cars <- cars
View(cars)
plot(cars$speed, cars$dist)

linear_reg <- lm(data = cars, dist ~ speed)
View(linear_reg)
summary(linear_reg)
