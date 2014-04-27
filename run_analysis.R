
# Download the file if we don't have it
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName <- "./data/smartphone.zip"
if (!file.exists(fileName)) {
    download.file(fileUrl, destfile = fileName, method="curl")
    list.files("./data")
}

# Make sure directory is alreay unzipped
phoneDir <- "./data/UCI HAR Dataset/"
if (!file.exists(phoneDir)) {
    unzip(fileName, exdir="./data")    
    list.files(phoneDir)
}
