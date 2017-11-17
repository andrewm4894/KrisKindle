# make a list of the names
names <- c(
  'Joe Bloggs',
  'Jane Doe',
  'John Paul',
  'Ringo',
  'Mary Jane',
  'Donny T',
  'Donny T Jr.',
  'Ivannnaaaaka',
  'Bill C',
  'Hillary C',
  'Bernie',
  'Eminem'
)

# create a list for names left in play
names_left <- names

# for each person
for(i in 1:length(names)){
  
  # get the person making the draw
  person <- names[i]
  
  # draw a random name, excluding yourself
  gives_to <- sample(setdiff(names_left,person),1)
  
  # capture the results
  result <- cbind(person,gives_to)
  
  # remove the person drawn from the list of available names
  names_left <- setdiff(names_left,gives_to)
  
  # if first draw then just set results otherwise append
  if(i==1){
    results <- result
  } else {
    results <- rbind(results,result)
  }
  
}

# display results of draw
print(results)