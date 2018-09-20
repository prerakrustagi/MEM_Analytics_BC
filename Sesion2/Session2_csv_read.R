# CLass_input is a row major matrix. Use "$" to access the columns
CLass_input <- read.csv(file="Session 2-excel.csv",head=TRUE,sep=",")
for(i in CLass_input$Group) { print(i) }
summary(CLass_input$Group)
summary(CLass_input$HW1)

#Get class of a variable
class(CLass_input$Stu_ID)

#To get the names of all the col
names(CLass_input)

#To view to the first n rows
CLass_input[1:5,]

#To view the col
CLass_input[,2:3]

#To view from the last
tail(CLass_input, n=2)

#To omit all the NA
na.omit(CLass_input)
CLass_input <- na.omit(CLass_input)

#Length
length(CLass_input[1,])
length(CLass_input[,1])

#View the matrix
View(CLass_input)

as.factor(CLass_input$Group)
