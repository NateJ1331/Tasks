class Task

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
end
