require_relative "Task"
require_relative "Display"
tasks = []
quit = false

while quit == false do
  display = Display.new
  display.Tasks(tasks)
  display.menu
  choice = gets.chomp

  case choice
    when "1"
      puts "Whats the name?"
      name = gets.chomp
      puts "Whats the due date?"
      date = gets.chomp

      task = Task.new
      task.AddTask(name,date)
      tasks.push(task)

    when "2"
      puts "Which Task would you like to complete? "
      display.TaskNames(tasks)
      input = gets.chomp
      tasks[input.to_i - 1].MarkCompleted
    when "3"
      quit = true
    else
      puts "You gave me #{choice} -- I have no idea what to do with that."
  end
end
