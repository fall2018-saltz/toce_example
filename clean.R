
#view the structure of the input dataframe
str(raw_data)

#define output dataset, initially just the input dataset
clean_data <- raw_data

#replace any missing ozone values with the mean of ozone
#   First, get the mean of all valid ozone values
meanOzone <- mean(clean_data$Ozone, na.rm=TRUE)

#print the mean -for debugging
paste("mean ozone:", meanOzone)

#assign the meanOzone value to any 'NA' value (i.e., not defined value)
clean_data$Ozone[is.na(clean_data$Ozone)] <- meanOzone

#remove any remaining rows that have NAs
clean_data <- na.omit(clean_data)

#view the structure of the input dataframe

str(clean_data)




