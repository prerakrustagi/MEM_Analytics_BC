#Install ggplot package
#install.packages("ggplot2")

#Initializing the library
library(ggplot2)

midwest_data <- midwest
#View(midwest_data)

#Initializing a ggplot object with the data and x and y axis representation
g_plot <- ggplot(data = midwest_data, aes(x = area, y = poptotal))

# Creating a ggplot with the specified x and y values
g_plot <- g_plot + geom_point(aes(col = state)) +
                   geom_smooth(method = "lm") +
                   labs(title = "Midwest Population") +
                   theme(plot.title = element_text(size = 30)) + 
                   theme(panel.background = element_rect(fill = NA, linetype = "dashed")) + 
                   theme(panel.grid.major = element_line(colour = "black"))

#Plot the ggplot
plot(g_plot)

