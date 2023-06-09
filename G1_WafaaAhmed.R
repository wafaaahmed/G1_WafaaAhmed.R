Data <- read.csv('G1_Allometry.csv')
Data
View(Data)

nrow(Data)# number of rows 
ncol(Data)  #n.of cols
rownames(Data)
colnames(Data) # name to cols

str(Data)
summary(Data)  # to get summary statistical of data mean,mode....

head(Data) # first 6 rows 
tail(Data)  # last six rows 

#Select specific data.
Per.type <- Allomentry[ 2, 3 ]
Per.type
#specific row and col
Setinfo <- Allomentry[ c(1:10), c("diameter", "leafarea")]
Setinfo
# can get first 25 row
Setinfo <- head(Allomentry,25)
Setinfo


Allomentry <- data.frame(Data) # convert data to data frame 
Allomentry
Result <- data.frame(Allomentry[Allomentry$species=='PIPO',])# get specific part in data 
Result
Result2 <- data.frame(Allomentry[Allomentry$height,])
Result2
test <- as.numeric(Allomentry$height) #to make height  numeric only 
test

complete.cases(Allomentry)  # to get NA places by get False in it 

Allomentry[!complete.cases(Allomentry),]  # to get Rows in  missing data 

#filter Data
Allomentry 
#to get each speecies data 
filter1<-  Allomentry[Allomentry$species =='PIPO',]
filter2<-  Allomentry[Allomentry$species =='PSME',]             
filter3<-  Allomentry[Allomentry$species =='PIMO',]            

filter1
filter2
filter3

#extract data from data frame
filter4 <- Allomentry[Allomentry$species=='PIPO', c("diameter","leafarea")]
filter4
# to convert data into numeric and get rid of comma in numbers 
Allomentry$height <- as.numeric(Allomentry$height)
Allomentry$height
Allomentry$height <- gsub(",",".",Allomentry$height)
Allomentry$height
Allomentry$height <- as.numeric(Allomentry$height)

#logical operator
is.na(Allomentry)    # get true result for Na value otherwise get false 
any(is.na.data.frame(Allomentry))  #get result True 

# Function to data
Allomentry$height
NewAllomentry <- Allomentry[,]
NewAllomentry


Z<- mean(Allomentry$height)    #to get the mean of data height
Z

calheight <- function(height)
{
  return(height>82)
}
# new names of col
colnames(Allomentry) <- (c(Species="Types",diameter="Lenght of diam"))
colnames(Allomentry)   

#DEAL with missing data
missing_values <- sum(is.na(Allomentry))
missing_values



# remove Na value
Allomentry<- na.omit(Allomentry)
Allomentry

# get data without duplicate
Allomentry <- unique(Allomentry)
Allomentry

# Statistical functions to data 
mean$height <- mean(Allomentry$height)
mean$Height 

meadian$height <- meadian(Allomentry$height)
mode$height <- mode(Allomentry$height)

# visulize data with histogram
Allomentry <- read.csv("Allomentry.csv")
draw_hist <- ggplot(Allomentry aes(height))
draw_hist
draw_hist + geom_histogram()
draw_hist + geom_histogram(binwidth = 5)
draw_hist + geom_histogram(color="red")
draw_hist + geom_histogram(fill="blue")
draw_hist + geom_histogram(alpha = 0.5)
draw_hist + geom_histogram() + ggtitle("Age of Passengers")
draw_hist + geom_histogram() + labs(x="Passenger age", y="Numbers")