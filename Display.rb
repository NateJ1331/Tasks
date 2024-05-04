class Display

  def Tasks (tasks)

    for task in tasks
      puts "-----------------------------"
      puts "Task: #{task.name}"
      puts "Due Date: #{task.dueDate}"
      puts "Completed: #{task.completed}"
      puts "-----------------------------"
    end
  end

  def menu
    puts "           Menu              "
    puts "-----------------------------"
    puts "1.    Create New Task        "
    puts "2. Mark A Task As Completed  "
    puts "3.         Quit              "
    puts "-----------------------------"
  end
end
