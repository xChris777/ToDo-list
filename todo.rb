
# create the To-Do List array 
todo_list = [ ]

# welcome message 
puts "Welcome to Chris' To-Do List. Made in Ruby." 

puts "What would you like to do?" 

  # loop that generates main menu selections 
  loop do

  puts "Main Menu: "
  puts "1. Add a task"
  puts "2. View tasks"
  puts "3. Exit"

  print "Enter your choice: "

  choice = gets.chomp 
  
  #if 1 is selected, takes input and adds it to the taskTitle variable, and then adds it to the todo_list array 
  if choice == "1"
    puts "Input task: "
    taskTitle = gets.chomp
    todo_list << taskTitle

  # if 2 is selected, prints the to-do list array to console 
  elsif choice == "2"
    puts "Here are your pending tasks"
    puts todo_list
    # upcoming feature: puts "would you like to delete a task?" 
    
  # if 3 is selected, exits the program 
  elsif choice == "3"
    puts "Goodbye!"
    exit

  else puts "Oops, that was an invalid choice! Please input 1, 2 or 3."
  end
end
