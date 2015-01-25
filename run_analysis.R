testsubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
testx <- read.table("UCI HAR Dataset/test/X_test.txt")
testy <- read.table("UCI HAR Dataset/test/Y_test.txt",colClasses="factor")
trainingsubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainingx <- read.table("UCI HAR Dataset/train/X_train.txt")
trainingy <- read.table("UCI HAR Dataset/train/Y_train.txt",colClasses="factor",)

testdata <- cbind(testx,testy,testsubjects)
trainingdata <- cbind(trainingx,trainingy,trainingsubjects)
merged <- rbind(testdata,trainingdata)

features <- read.table("UCI HAR Dataset/features.txt",colClasses="character")

numcols <- ncol(merged)

colnames(merged)[1:(numcols-2)] <- features$V2
colnames(merged)[(numcols-1)] <- "Activity"
colnames(merged)[numcols] <- "Subject"

meansColumns <- grep("^t.*mean\\(\\)\\-[XYZ]",features$V2)
stdsColumns <- grep("^t.*std\\(\\)\\-[XYZ]",features$V2)
columnsToInclude <- sort(c(meansColumns,stdsColumns,562,563))
mergedMeansAndStdDevs <- merged[,columnsToInclude]


activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt")
levels(mergedMeansAndStdDevs$Activity) <- activitylabels$V2

numcols <- ncol(mergedMeansAndStdDevs)
mergedMeansAndStdDevs <- mergedMeansAndStdDevs[,c(numcols, numcols-1,1:(numcols-2))]

mergedMeansAndStdDevs$groups <- paste(mergedMeansAndStdDevs$Subject,mergedMeansAndStdDevs$Activity)

uniquegroups <- unique(mergedMeansAndStdDevs$groups)

tidydata <- mergedMeansAndStdDevs[0,]

for (group in uniquegroups)
{
	x <- subset(mergedMeansAndStdDevs,groups==group)
	means <- lapply(x[,3:numcols],mean)
	x[1,3:numcols] <- means
	tidydata <- rbind(tidydata,x[1,])
}

tidydata$groups <- NULL

colnames(tidydata) <- gsub("\\-mean\\(\\)\\-","Mean",colnames(tidydata))
colnames(tidydata) <- gsub("\\-std\\(\\)\\-","Std",colnames(tidydata))

write.table(tidydata,file="tidydata.txt",row.names=F)