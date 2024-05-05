class Display
  def Tasks (tasks)

    #Clears the Console and displays everything in a task
    system ("cls")
    for task in tasks

      #Makes sure task inst completed before showing if its overdue or not
      if task.GetCompleted == false
        overdue = task.CheckOverdue
      else
        overdue = "Task Completed"

      end
      puts "Task: #{task.GetName}"
      puts "Due Date: #{task.GetDate}"
      puts "Completed: #{task.GetCompleted}"
      puts "Overdue: #{overdue}"
      puts "-----------------------------"

    end

  end

  #Main menu Display
  def menu
    puts "           Menu              "
    puts "-----------------------------"
    puts "1.    Create New Task        "
    puts "2. Mark A Task As Completed  "
    puts "3.  Change the due Date      "
    puts "4.           Quit            "
    puts "-----------------------------"
  end

  #Prints out the task names to console without showing any other information
  def TaskNames (tasks)
    i = 1
    puts "-----------------------------"
    for task in tasks
      puts ""
      puts "#{i}. #{task.GetName}"
      i += 1
      puts ""
    end
    puts "-----------------------------"
  end
end
