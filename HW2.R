#1
install.packages("dplyr")
df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))
aggregate(df1$Sales, by=list(df1$State), FUN=sum)
library(dplyr)
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))

#The above code creates a data frame then, through a couple of other quick steps, it outputs a summarized list of states and their total sales. 
                                      
#2
df <- read.csv("~/Downloads/DATA/WorldCupMatches.csv")
size_df <- dim(df)
print(size_df)
summary_df <- summary(df)
print(summary_df)

unique_locations <- df %>% 
  distinct(City) %>%  
  nrow()
print(unique_locations)

avg_attendance <- mean(df$`Attendance`, na.rm = TRUE)
print(avg_attendance)

goals_by_home_team <- df %>%
  group_by(`Home.Team.Name`) %>%
  summarise(total_goals = sum(`Home.Team.Goals`, na.rm = TRUE)) %>%
  arrange(desc(total_goals))  
print(goals_by_home_team, n = 78)

avg_attendance_by_year <- df %>%
  group_by(`Year`) %>%
  summarise(avg_attendance = mean(`Attendance`, na.rm = TRUE)) %>%
  arrange(`Year`)  
print(avg_attendance_by_year)

#there appears to be a trend of increased attendance, despite pretty regular fluctuations from year to year.  there

#3
df3 <- read.csv("~/Downloads/DATA/metabolite.csv")
head(df3)

num_alzheimers_patients <- sum(df3$Label == "Alzheimer", na.rm = TRUE)
print(num_alzheimers_patients)

missing_counts <- colSums(is.na(df3))
print(missing_counts)

missing_dopamine <- is.na(df3$Dopamine)
clean_df <- df3[!missing_dopamine, ]
print(dim(clean_df))

median_c4_OH_Pro <- median(clean_df$c4.OH.Pro, na.rm = TRUE)
clean_df$c4.OH.Pro[is.na(clean_df$c4.OH.Pro)] <- median_c4_OH_Pro
cat("Summary statistics of c4-OH-Pro column before replacement:\n")
print(summary(clean_df$c4.OH.Pro))
num_missing_after <- sum(is.na(clean_df$c4.OH.Pro))
cat("\nNumber of missing values in c4-OH-Pro column after replacement:", num_missing_after, "\n")

threshold <- nrow(clean_df) * 0.25
missing_counts <- colSums(is.na(clean_df))
cols_to_drop <- names(missing_counts[missing_counts > threshold])
cat("Columns to be dropped due to more than 25% missing values:\n")
print(cols_to_drop)
clean_df <- clean_df[, !names(clean_df) %in% cols_to_drop]
cat("\nRemaining columns after dropping those with more than 25% missing values:\n")
print(names(clean_df))
