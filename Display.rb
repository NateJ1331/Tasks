class Display

  def Tasks (tasks)
    system ("cls")
    for task in tasks
      puts "Task: #{task.GetName}"
      puts "Due Date: #{task.GetDate}"
      puts "Completed: #{task.GetCompleted}"
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

  def TaskNames (tasks)
    i = 1
    for task in tasks
      puts "#{i}. #{task.GetName}"
      i += 1
    end
  end
end
