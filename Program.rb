#Gives Program.rb Accsess to the other files and classes
require_relative "Task"
require_relative "Display"

#Initilize basic variables
tasks = []
quit = false

#Starts Program Loop
while quit == false do

  #Displays Menu and Current Tasks
  display = Display.new
  display.Tasks(tasks)
  display.menu
  choice = gets.chomp #Gets User input

  #Menu Options
  case choice
    when "1"
      puts "Whats the name of the Task?"
      name = gets.chomp
      puts "Whats the due date? (MM/DD/YYYY)"
      date = gets.chomp

      #Makes sure date is in the correct format before trying to use it
      begin
        due_date = Date.strptime(date,"%m/%d/%Y")
        #Creates a new task each time the user promts this option
        task = Task.new
        task.AddTask(name,date)
        tasks.push(task)
      rescue ArgumentError
        puts "Invalid date format. Please enter date in MM/DD/YYYY format."
      #Pauses so the error can be seen
      sleep (1)
      end

    when "2"

      if tasks.empty?()
        puts "There are no tasks"
        sleep (1)
      else

        puts "Which Task would you like to complete? "
        display.TaskNames(tasks)
        input = gets.chomp

        #Turns the input into an into so it can be used as an index
        tasks[input.to_i - 1].MarkCompleted
      end

    when "3"
      if tasks.empty?()

        puts "There are no tasks"
        sleep (1)
      else
        #Allows the user to change the date of the task in case its taking longer than expected
        puts "Which Task would you like to change? "
        display.TaskNames(tasks)
        choice = gets.chomp
        puts "When would you like you change the date to? (MM/DD/YYYY)"
        newDate = gets.chomp

        #See previous note about correct date format (line 26)
        begin
          due_date = Date.strptime(newDate,"%m/%d/%Y")
          tasks[choice.to_i - 1].SetDate(newDate)
        rescue ArgumentError
          puts "Invalid date format. Please enter date in MM/DD/YYYY format."
        sleep (1)
        end
      end

    when "4"
      #closes loop
      quit = true
    else
      #Error handleing in case they dont give an option on the main menu
      puts "You gave me #{choice} -- I have no idea what to do with that."
  end
end
