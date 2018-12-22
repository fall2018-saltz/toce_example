

str(raw_data)

#replace missing ozone value with the mean
tmp_data <- raw_data
m <- mean(tmp_data$Ozone)
m
tmp_data$Ozone[is.na(tmp_data$Ozone)] <- m

str(tmp_data)

#remove other NAs
tmp_data <- na.omit(tmp_data)

#define output dataset
clean_data <- tmp_data
str(clean_data)




