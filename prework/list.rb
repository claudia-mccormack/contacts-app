class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def name
    return @name
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def number_of_incomplete_tasks
    incomplete = 0
    @tasks.each do |task|
      incomplete = incomplete + 1 unless task.complete
    end
    return incomplete
  end

  # Alternate phrasing of the incomplete tasks loop:
  # sum = 0
  # @task.each do |task|
  # if !task.complete
  # sum += 1

  def delete_complete_tasks
    @tasks.each do |task|
      @tasks.delete(task) if task.complete == true
    end
  end

  def sort_by_priority
    sorted_tasks = @tasks.sort { |task, next_task| next_task.priority <=> task.priority }
    sorted_tasks.each do |task|
      puts task.name
    end
  end

end
