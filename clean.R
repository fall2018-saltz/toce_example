
#view the structure of the input dataframe
str(raw_data)

#define output dataset, initially just the input dataset
clean_data <- tmp_data

#
#replace any missing ozone values with the mean of ozone
#   First, get the mean of all valid ozone values
m <- mean(clean_data$Ozone, na.rm=TRUE)
m
clean_data$Ozone[is.na(clean_data$Ozone)] <- m

str(clean_data)

#remove other NAs
clean_data <- na.omit(clean_data)


str(clean_data)




