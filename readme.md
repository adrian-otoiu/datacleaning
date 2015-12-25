### Readme

This script processes the data provided for the project. Some of the steps are done in a slightly different order than 
indicated in the assignment instructions so as to do them in the right place and make the whole processing more efficient. 
More specifically, it does not make sense to select mean and standard deviation values before first labelling the variables. 
However, this does not impact the end result.

I) First I import and process the data (point 1 in project requirements). I did this step by step, as, from my experience, 
it is better to check if each step is properly completed.

1) The first imported files are the subject ID files (subject_train, and subject_test). 
   I put the label SubjectID after the import and a I do a check for unique values to see 
   if I have subject numbers no greater than 30.

2) Then I import the activity files(y_train and y_test). I put the label Activity and check to have only 6 activities.

3) Then I merge the subjectID and activity files separately for the train data and for the test data into train and test files.

4) At this point I do a check to see if the data merged properly by making crosstabs separately for the test data and train data. 
   The purpose is spot potential anomalies, e.g. very few activities for one subject. I do then separately so that, before merging the data, 
   if an anomaly comes up, I can go back and revise the appropriate broken file(s).

5) Then I import the actual/measurements data from the X_test and X_train data files, and merge them to the corresponding train and test files, 
   generating atrain and attest files.

6) Then I make the merged dataset alldata from the atrain and attest files with rbind command. Now the dataset only needs the appropriate labels 
   for the measures variables, which will be done below.

II)   Here I replace the numeric values in the activity variable (point 3 in the project requirements)
with the labels 1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING

I did this directly with the factor command, as I thought it easier than importing the data and putting labels in it given that there were only 6 activities.

III) Here I put the variable names (point 4 in the project requirements), and do some cleaning/renaming so as to prepare the numeric variables for selection and summarization.

1) First I import the variable labels from the feature files.

2) In order to help the selection of the variables than have mean and standard deviation measures, I clean the labels with the gsub commands. Cleaning is needed for the 
   later steps when only the variables with mean and standard deviation are selected, and means are calculated for each subject and activity.
```
featclean<- gsub("-mean()", "_MEAN", features$V2,fixed=TRUE)
featclean<- gsub("-std()", "_STD", featclean,fixed=TRUE)
featclean<- gsub("-", "_", featclean,fixed=TRUE)
```
   These replacements get rid of the parentheses and the hyphen as their presence in variable names are not read properly by the summarization commands. 
   Also, capitalization helps select the right variables.

3) Here I make a variable names vector and assign the proper variable names to the alldata file. (point 3 in the project requirements). I kept the labels 
   from the labels file since I found them to be pretty straightforward and short enough, thus making good parsimonious names for rather technical
   variables that take a bit to define and explain. The appropriate, extended definition of each label can be found in the codebook file. 
   Hopefully this answers the “Appropriately labels the data set with descriptive variable names” requirement. 

IV)  Here I select the MEAN and STD (standard deviation) variables from alldata and create a reduceddata set with the variables (required in the 
point 2 of the project instructions). This dataset also contains the SubjectID and Activity variables. 

V) Here I compute the means for the MEAN and STD variables by SubjectID and Activity (point 5 in project instructions)

VI) Here I export the data in the text file finaldata.txt (point 5 in project instructions). As a courtesy for the next user, I reformatted the 
values to disable scientific notation in displaying the variable values, which usually leads to annoying import errors. As a note, the doBy package 
can be more user-friendly for users of statistical software such as SAS or Stata.

Thank you for evaluating my work!

Selected references:

Quick-R web site 

Lecture videos in the Getting and Cleaning data

Forum postings in the Getting and Cleaning data course

doBy package documentation https://cran.r-project.org/web/packages/doBy/index.html

http://stackoverflow.com/questions/9397664/force-r-not-to-use-exponential-notation-e-g-e10

http://www.inside-r.org/packages/cran/doBy/docs/summaryBy

RCommander GUI

