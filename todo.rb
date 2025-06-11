# create the To-Do List array 
todo_list = [ ]

puts "Welcome to Chris' To-Do List app. Made in Ruby." 
puts
puts "What would you like to do?" 

  # loop that generates main menu selections 
  loop do
  puts
  puts "Main Menu: "
  puts "1. Add a task"
  puts "2. View tasks"
  puts "3. Delete tasks"
  puts "4. Exit"
  puts
  print "Enter your choice: "

  main_menu_choice = gets.chomp 
  
  # if 1 is selected, takes input and adds it to the task_title variable, 
  # and then adds it to the todo_list array 
  if main_menu_choice == "1"
    puts "Input task: "

    task_title = gets.chomp

    todo_list << task_title

  #if 2 is selected, prints the to-do list array to console 
  elsif main_menu_choice == "2"
    puts "Here are your pending tasks: "
    puts
    if todo_list.empty?
      puts "You have no pending tasks."

    else
      todo_list.each.with_index(1) do |tasks, index|
    puts "#{index}. #{tasks.capitalize}" 
    end 
    end
    #delete task feature, checks if todo list is empty and prints a message if it is. If it isn't,
    #it lists the tasks in a numbered list starting at 1, with captitalization. 
  elsif main_menu_choice == "3"
    if todo_list.empty?
      puts "No pending tasks available to delete."
    else 
    todo_list.each.with_index(1) do |tasks, index|
    puts "#{index}. #{tasks.capitalize}" 
    end
    puts "Which task would you like to delete?"
      #Goal is to remove if/elsif/else statement, and instead get user input, convert to int
      #and then check the array for the index of the task, deleting the task at that index if it exists.
      
      #get user input for task to delete and assign to variable
      task_number = gets.chomp.to_i

      #
      if task_number.between?(1, todo_list.length) 
        todo_list.delete_at(task_number - 1)
        puts
        puts "Task #{task_number} has been deleted successfully!"
      else
        puts "Invalid selection, please choose a valid task number."
      end
    end
    # logic for asking if another task should be deleted
    # puts "Would you like to delete another task"
    #   if gets.chomp = "Yes" || "Y" || "YES" 
  
    #   elsif gets.chomp = "No" || "N" || "NO"
    
    #   else 
    #     puts "Invalid selection, please use Y or N" 
    #   end

    # if 4 is selected, exits the program 
  elsif main_menu_choice == "4"
    puts
    puts "Goodbye!"
    exit
  elsif main_menu_choice == "devmode" 
    puts
    puts "Hey Chris, dev mode engaged!"
    todo_list << "test1"
    todo_list << "test2"
    todo_list << "test3"
  else 
    puts
    puts "Oops, that was an invalid selection! Please input 1, 2, 3 or 4."
  end
end
