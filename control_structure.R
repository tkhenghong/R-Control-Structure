# If else
x = 1
if(x > 0) {
  res = 'positive'
} else {
  res = "negative"
}
print(res)

# With else if(...)

x = 0
if(x > 0) {
  res = 'positive'
} else if (x == 0) {
  res = 'is neither positive / negative'
} else{
  res = "negative"
}
print(res)

finance = "valid"
# finance = "123"
outcome = 'not determine'
if(finance == 'valid') {
  outcome = 'pass'
}
print(outcome)

# Bonus: ifelse(test,yes,no)
ifelse(finance=='valid','accepted','rejected');
some = ifelse(finance=='valid','accepted','rejected');some

# You can use switch
val1 = 6
val2 = 7
val3 = "s"
result = switch(
  val3,
  "a"= cat("Addition =", val1 + val2),
  "d"= cat("Subtraction =", val1 - val2),
  "r"= cat("Division = ", val1 / val2),
  "s"= cat("Multiplication =", val1 * val2),
  "m"= cat("Modulus =", val1 %% val2),
  "p"= cat("Power =", val1 ^ val2)
)

print(result)

# Loop Structure

# For loop
s1 = sample(1:100,10,T);s1
s1*10 # Perform calculation

# Loop the contents with default value and calculated values(no value update)
for (i in s1) {
  print(i)
  print(i*10)
}

# Update values in loop
for(i in 1:length(s1)){
  s1[i] = s1[i] * 10
}

print(s1)


# While loop
# Same thing, a little different in structure
count = 1
while(count <= length(s1)) {
  print(s1[count])
  count = count + 1 # We don't have count++
}

# Update in while loop
count = 1
while(count <= length(s1)) {
  s1[count] = s1[count] * 10
  count = count + 1
}
s1

# Break
s1 = sample(1:100,10,T);s1
for(i in 1:100) {
  if(i>length(s1)) {
    break # Stop the loop
  }
  print(s1[i])
}

# Break with Continue
s1 = sample(1:100,10,T);s1
for(i in 1:100) {
  if(i>length(s1)) {
    break # Stop the loop
  } else if (i %% 2 == 0) {
    next # Skip rest of the line and go to next loop
  }
  print(s1[i])
}

# Repeat Loop
# Seldom used.
# It will run AT LEAST ONCE
# You need to put a condition and break to break the Repeat loop

# Repeat loop, Break
s1 = sample(1:100,10,T);s1
i = 1
repeat {
  print(paste('Current location', i))
  if(i>length(s1)) {
    break # Stop the loop
  }
  print(s1[i])
  i = i + 1
}

# Repeat loop, Break with Continue
s1 = sample(1:100,10,T);s1
i = 1
repeat {
  i = i + 1 # Need to put here, or else it loops forever
  print(paste('Current location', i))
  if(i>length(s1)) {
    break # Stop the loop
  } else if (i %% 2 == 0) {
    next # Skip rest of the line and go to next loop
  }
  print(s1[i])
}

# Additional
# Bring back the d1 from data_structure_3.r file
nrow(d1)
d1$Name = NULL
sName = sample(LETTERS,nrow(d1),T); sName
for(i in 1:nrow(d1)){
  sName[i] = paste("S",i,sName[i])
}
d1$Name = sName # This is a shortcut to add an unknown column, easier
View(d1)

# You cannot rearrange the column order, unless you recreated the data frame
d1 = data.frame(Nationality=d1$nationality, Age=d1$age, Math=d1$Mathscore, English=d1$Englishscore); d1



# 1. Print odd number from 1 to 10
for (i in 1:10) {
  if (i %% 2 == 0) {
    print(i)
  }
}
i = 1
while (i <= 10) {
  if (i %% 2 == 0) {
    print(i)
  }
  i = i + 1
}

i = 1
repeat {
  if (i > 10) {
    break
  }
  if (i %% 2 == 0) {
    print(i)
  }
  i = i + 1
}

# Create the following patterns using loop structure in R
# 55555
# 4444
# 333
# 22
# 1

# For loop
for (loop in 5:1) {
  print(rep(loop, loop))
}

# While loop
i = 5
while (i > 0) {
  print(rep(i, i))
  i = i - 1
}

# Repeat
i = 6
repeat {
  i = i - 1
  if(i == 0) {
    break
  }
  print(rep(i,i))
}




