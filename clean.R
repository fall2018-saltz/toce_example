

str(raw_data)

#replace missing ozone value with the mean
tmp_data <- raw_data
m <- mean(tmp_data$Ozone)

#remove other NAs
clean_data <- na.omit(raw_data)
str(clean_data)




