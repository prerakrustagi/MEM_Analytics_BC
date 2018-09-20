#Install ggplot package
#install.packages("ggplot2")

Energy_Act_input <- read.csv(file="Activty_Energy.csv",head=TRUE,sep=",")

#Initializing the library
library(ggplot2)

#Initializing a ggplot object with the data and x and y axis representation
g_plot <- ggplot(data = Energy_Act_input, aes(fill = Activity, 
                                              x = Sector, y = Energy_Cons))

# Creating a ggplot with the specified x and y values
g_plot <- g_plot + geom_bar(position = "dodge", stat = "identity")

#Plot the ggplot
plot(g_plot)

