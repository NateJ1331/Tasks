class Task
  #Allows me to use the Date class in ruby
  require 'date'

  #Local Class Variables
  @name
  @dueDate
  @completed

  #Get and Set functions so the variables can stay locally accsesed
  def GetName
    return @name
  end

  def GetDate
    return @dueDate
  end

  def SetDate(date)
    @dueDate = date
  end

  def GetCompleted
    return @completed
  end

  # Since Completed is already set to false by default
  #This one just marks it to true if it needs to be changed
  def MarkCompleted
    @completed = true
  end

  #Addes the information for the task and sets default completion to false
  def AddTask(name,date)
    @name = name
    @dueDate = date
    @completed = false
  end

  #Checks Task date with current Date to see if its overdue or not
  def CheckOverdue
    overdue_date = Date.strptime("#{@dueDate}", "%m/%d/%Y")
    return overdue_date < Date.today
  end

end
