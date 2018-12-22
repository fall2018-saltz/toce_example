

str(raw_data)

#replace missing ozone value with the mean
m <- mean(raw_data$Ozone)

#remove other NAs
clean_data <- na.omit(raw_data)
str(clean_data)




