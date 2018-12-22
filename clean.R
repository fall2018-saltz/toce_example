
#view the structure of the input dataframe
str(raw_data)

#replace any missing ozone values with the mean of ozone
m <- mean(tmp_data$Ozone, na.rm=TRUE)
m
tmp_data$Ozone[is.na(tmp_data$Ozone)] <- m

str(tmp_data)

#remove other NAs
tmp_data <- na.omit(tmp_data)

#define output dataset
clean_data <- tmp_data
str(clean_data)




