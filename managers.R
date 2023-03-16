date_col <- c("10/15/18","01/11/18","10/21/18","10/28/18","05/01/18")
country_col <- c("US","US","IRL","IRL","IRL")
gender_col <- c("M","F","F","M","F")
age_col <- c(32,45,25,39,99)
q1_col <- c(5,3,3,3,2)
q2_col <- c(4,5,5,3,2)
q3_col <- c(5,2,5,4,1)
q4_col <- c(5,5,5,NA,2)
q5_col <- c(5,5,2,NA,1)

managers_data <- data.frame(date_col,
                           country_col,
                           gender_col,
                           age_col,
                           q1_col,
                           q2_col,
                           q3_col,
                           q4_col,
                           q5_col)

str(managers_data)


column_names <- c("Date" ,
                "Country",
                "Gender",
                "Age",
                "Q1",
                "Q2",
                "Q3",
                "Q4",
                "Q5")

colnames(managers_data) <- column_names
managers_data
str(managers_data)


managers_data$Age[managers_data$Age == 99] <-NA


managers_data

#create a new attribute called agecat and set the values 
# if <= 25 then young
# if >= 25 then middle age
# if >= 45 then elder

# declare agecat
# for length of the manager data
# if (age<=25 then agecat == young)
# endif



# managers_data$AgeCat[managers_data$Age <= 25] <- agecat <- c("Young")   #mytry
managers_data$AgeCat[managers_data$Age <= 25] <- "Young"
managers_data$AgeCat[managers_data$Age > 25 & managers_data$Age < 45] <- "Middle Age"
managers_data$AgeCat[managers_data$Age >= 45] <-"Elder"


managers_data

str(managers_data)


# record agecat so that it is categorical and ordinal


managers_data$AgeCat <- factor(managers_data$AgeCat)

managers_data

#alternative
#managers_data$AgeCat <- factor(managers_data$AgeCat,
#                               order = "TRUE"
#                               levels <- c("young","middle aged","elder"))



#add a anew column summary and add 5 q columns
#cant instal summary column as it contains na

#managers_data$Summary <- managers_data$Q1 + managers_data$Q2 + managers_data$Q3 + managers_data$Q4 + managers_data$Q5

summary_col <-  managers_data$Q1 + managers_data$Q2 + managers_data$Q3 + managers_data$Q4 + managers_data$Q5
summary_col

managers_data


