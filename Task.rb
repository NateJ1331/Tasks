class Task
  require 'date'
  @name
  @dueDate
  @completed
  def GetName
    return @name
  end
  def GetDate
    return @dueDate
  end
  def GetCompleted
    return @completed
  end
  def MarkCompleted
    @completed = true
  end
  def AddTask(name,date)
    @name = name
    @dueDate = date
    @completed = false
  end
  def CheckOverdue
    overdue_date = Date.strptime("#{@dueDate}", "%m/%d/%Y")
    return overdue_date < Date.today
  end
end
