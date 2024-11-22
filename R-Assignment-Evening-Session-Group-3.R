
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Task 1:  Accept a list of satisfaction ratings from customers with their recent purchase on a scale from 1 to 5. 
# Assume customers were given a questionnaire containing 7 questions. 
# Following data were collected from question 1 up to question 7: 5, 4, 3, 2, 5, 4, 1
customers_satisfaction <- c(5, 4, 3, 2, 5, 4, 1)

# Task 2: Calculate the average satisfaction score 
# 2.1 Define the variable to hold the result
# 2.2 The computation of the mean is going to be achieved using R build function called "mean()"
average_satisfation <- mean(customers_satisfaction)


#Task 3: Categorize the customers satisfaction  basing on average satisfaction,
#Condition to check: Low if the average score is ≤ 2.Moderate if the average score is between 2 and 4.High if the average score is ≥ 4.
# use conditional statement to achieve this segmentation, we have also preferred to store the the result in the variable to make the code more readable

category <- if(average_satisfation <= 2 ){
                  "Low satisfaction"
            }else if(average_satisfation > 2 && average_satisfation < 4){
                    "Moderate satisfaction"
            }else{
                  "High satisfaction"
            }

# Display the result to the user, use cat function to prints without quotes around strings,
# and it is recommended for  for human-readable messages
# make the message more custom and dynamic
cat("Customer with Average Satisfaction Score of:",average_satisfation,"is grouped under:",category, "Category")



# The following implementation are the all scenario are recommend by lecture
# Change the value assigned to customers_satisfaction and then replicate the same logic like above

# Scenario 1:  where the average satisfaction is 4.5

# Accept a list of satisfaction ratings from customers that should produce average score of 4.5
customers_satisfaction <- c(5, 5, 4, 4, 5,4)

average_satisfaction <- mean(customers_satisfaction)

category <- if(average_satisfaction <= 2 ){
                  "Low satisfaction"
            }else if(average_satisfaction > 2 && average_satisfaction < 4){
                    "Moderate satisfaction"
            }else{
                    "High satisfaction"
            }

# Display the result to the user, use cat function to prints without quotes around strings,
# and it is recommended for  for human-readable messages
# make the message more custom and dynamic
cat("Customer with Average Satisfaction Score of:",average_satisfaction,"is grouped under:",category, "Category")



# Scenario 2:  where the average satisfaction is 1.7

# Accept a list of satisfaction ratings from customers that should produce average score of 1.7
customers_satisfaction <- c(1, 2, 1, 2, 2, 1, 2,3,1,2)

average_satisfaction <- mean(customers_satisfaction)

category <- if(average_satisfaction <= 2 ){
                  "Low satisfaction"
            }else if(average_satisfaction > 2 && average_satisfaction < 4){
                    "Moderate satisfaction"
            }else{
                    "High satisfaction"
            }

# Display the result to the user, use cat function to prints without quotes around strings,
# and it is recommended for  for human-readable messages
# make the message more custom and dynamic
cat("Customer with Average Satisfaction Score of:",average_satisfaction,"is grouped under:",category, "Category")


#=============================?===========================================================

# Problem 2: Age Group Classification


# Below are steps to follow:
# 1. Let define a vector of ages, ensuring all entries are non-negative.
# 2. It calculates the average age to understand the population's overall demographic trend. 
# 3. Using a loop and conditional statement to categorizes individuals into predefined age category like 
# Children (Age <18), Adults(Age 18 to 59), and Seniors(Age >= 60)
# 4. Counts how many fall into each category. 

# Define a vector of ages, ensuring all entries are non-negative.
ages <- c(5, 12, 15, 25, 30, 35, 40, 45, 50, 55, 65, 70)

# Calculate average age,by using built-in mean function
average_age <- mean(ages)

# Initialize counters, and the counter will be increment in case the condition match
children <- 0
adults <- 0
seniors <- 0

# Iterate through ages item and classify accordingly
for (age in ages) {
  # check if the age is below 18
  
  if (age < 18) {
    children <- children + 1 # increment children counter  by 1
    
  } else if (age >=18 && age <=59) { # check if the age between 18 and 59
    adults <- adults + 1 # increment adults counter  by 1
    
  } else { 
      seniors <- seniors + 1  # increment seniors counter  by 1, in case neither of  above two condition are not evaluated to true
  }
}

## Display customized output to the user
cat("The average age is ",average_age,"and there are",children,"children",",",adults,"adults","and",seniors,"seniors")















