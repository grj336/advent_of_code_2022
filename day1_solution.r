# Advent of coede 2022 - Day 1: Calorie Counting Elves
# https://adventofcode.com/2022/day/1

# Record start time
start_time <- Sys.time()

# Set working dir
setwd("~/R/adventOfCode")

# Read in .txt file with input data as individual lines inclucing blanks
fileName = "day1_input.txt"
inputData = readLines(fileName) # Use read lines so that blanks are included to seperate elves

# Initialise empty variables for the loop
allElfCalories = vector() # Stores total calories by elf
elfCalories = 0 # Calulates running total of calories per elf

# Loop through all lines in the file
for (i in 1:length(inputData)){
  
  # Blank line indicates new elf, test if new elf
  if ((inputData[i]) == ""){
    print("New elf")
    
    allElfCalories = append(allElfCalories, elfCalories) # Append elf total to the master vector
    elfCalories = 0 # Reset the calorie counter to zero
  }
  # If it is not a blank line then convert value to numeric & add calorie count to running total
  else {
    elfCalories = elfCalories + as.numeric(inputData[i])
  }
  
}

# Find and print the number of calories the elf with the most has calories
print(paste0("The elf with the most calories has: ", max(allElfCalories), " calories"))

# Part 2
# Find total of top 3 elves
allElfCalories = sort(allElfCalories) # Sort vector
top3Elves = tail(allElfCalories, 3) # Last 3 values (3 highest calories)
top3Elves = sum(top3Elves)# Sum 

print(paste0("Total calories of the top 3 elves are: ", top3Elves))

# Record end time
end_time <- Sys.time()

# Running time
end_time - start_time
