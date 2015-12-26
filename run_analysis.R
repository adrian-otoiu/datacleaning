

#course project
# the script is cross-referenced with the steps described in the README file

#set file location/working directory
dir<- "D:/cursuri/getting and cleaning data/project/UCI HAR Dataset/"

#get IDs first/ part I 1) in README file

path<- paste(dir, "","train/subject_train.txt" , sep = "", collapse = NULL)

s_train <- read.table(path,
   header=FALSE, sep="", na.strings="NA", dec=".", strip.white=TRUE)
str(s_train) 
colnames(s_train)[1] <- "SubjectID"
unique(s_train) #to see the ID in train set

path<- paste(dir, "","test/subject_test.txt" , sep = "", collapse = NULL)
s_test <- read.table(path,
                      header=FALSE, sep="", na.strings="NA", dec=".", strip.white=TRUE)
str(s_test) 
colnames(s_test)[1] <- "SubjectID"
unique(s_test) #to see the ID in test set

#get activities for IDs/ part I 2) in README file

path<- paste(dir, "","train/y_train.txt" , sep = "", collapse = NULL)

y_train <- 
  read.table(path,
   header=FALSE, sep="", na.strings="NA", dec=".", strip.white=TRUE)

colnames(y_train)[1] <- "Activity"
unique(y_train) #to see the ID in train set

path<- paste(dir, "","test/y_test.txt" , sep = "", collapse = NULL)
y_test <- 
  read.table(path,
             header=FALSE, sep="", na.strings="NA", dec=".", strip.white=TRUE)

colnames(y_test)[1] <- "Activity"
unique(y_test) #to see the ID in test set

#join activities to IDs/ part I 3) in README file

train<- cbind(s_train,y_train)
str(train)

test<- cbind(s_test,y_test)
str(test)

#crosstab to check if merge makes sense!!/ part I 4) in README file

table(train$SubjectID, train$Activity)
table(test$SubjectID, test$Activity)

#Obs: for all id's there are observations with activities and they 
#seem to some extent balanced in the sense that there isn't such thing 
#as most observations for a subject are concentrated on one activity
#also data for all 30 individuals is present in the datasets

#get data for observations / part I 5) in README file

path<- paste(dir, "","train/X_train.txt" , sep = "", collapse = NULL)

X_train <- 
  read.table(path,
   header=FALSE, sep="", na.strings="NA", dec=".", strip.white=TRUE)
str(X_train)

path<- paste(dir, "","test/X_test.txt" , sep = "", collapse = NULL)

X_test <- 
  read.table(path,
             header=FALSE, sep="", na.strings="NA", dec=".", strip.white=TRUE)
str(X_test)

#merge data / part I 6) in README file

atrain<- cbind(train,X_train)
str(atrain)
atest<- cbind(test,X_test)
str(atest)

alldata<- rbind(atrain, atest)

#puts descriptive activity names / part II in README file


alldata <- within(alldata, {
  Activity <- factor(Activity, labels=c('WALKING','WALKING_UPSTAIRS',
                                        'WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING'))
})

#put labels on variables / part III 1) in README file


path<- paste(dir, "","features.txt" , sep = "", collapse = NULL)

features <- read.table(path)
View(features)

#here I remove parts of variable names to make them amenable to computing summaries later
# / part III 2) in README file

featclean<- gsub("-mean()", "_MEAN", features$V2,fixed=TRUE)
featclean<- gsub("-std()", "_STD", featclean,fixed=TRUE)
featclean<- gsub("-", "_", featclean,fixed=TRUE)

# make a variable names vector and assign the proper variable names
#/ part III 3) in README file

a <- c("SubjectID", "Activity")
b<- c(a, featclean)

colnames(alldata)<- b

##select mean and standard deviation variables 
#/ part IV in README file

alldata1<-alldata[,grep("MEAN", names(alldata), fixed=TRUE)]
alldata2<-alldata[,grep("STD", names(alldata), fixed=TRUE)]
alldata3 <- alldata[c(1,2)]
reduceddata<-cbind(alldata3, alldata1, alldata2)

#make summaries / part V in README file

options(scipen = 999) #disables scientific notation so that the exported file is then read 
#properly 
library("doBy")
#loading library command is for loading it in R console . In R studio it can be loaded using
#library(doBy)

finaltable<-summaryBy(.~SubjectID+Activity,  data=reduceddata, FUN=mean, fixed=TRUE)

#export the file
#/ part VI in README file

path<- paste(dir, "","finaltable.txt" , sep = "", collapse = NULL)

write.table(finaltable, path, sep=" ", 
            col.names=TRUE, row.names=FALSE, quote=TRUE, na="NA")

