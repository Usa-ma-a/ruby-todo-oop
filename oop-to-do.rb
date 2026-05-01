require 'json'
class Task 
  attr_accessor :title, :completed

  def initialize(title)
    @title = title
    @completed = false
  end

  def mark_done
    @completed = true
  end

  def to_s
    status = @completed ? "[✔]" : "[ ]"
    "#{status} #{@title}"
  end
end

class ToDoList
  def initialize
    @tasks = []
    load_from_file
  end

  def add_task(title)
    @tasks << Task.new(title)
    puts "Task added."
    save_to_file
  end
  
  def view_tasks
    if @tasks.empty?
      puts "No tasks yet."
    else
      puts "\n Your Tasks:"
      @tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
    end
  end

  def mark_task_done(index)
    if valid_index?(index)
      @tasks[index].mark_done
      puts "Task marked as done."
      save_to_file
    else
      puts "Invalid task number."
    end
  end

  def delete_task(index)
    if valid_index?(index)
      @tasks.delete_at(index)
      puts "Task deleted."
      save_to_file
    else
      puts "Invalid task number."
    end
  end

  def save_to_file
    File.write("tasks.json", JSON.pretty_generate(@tasks.map { |t| {
      title: t.title,
      completed: t.completed
    }}))
  end

  def load_from_file
    if File.exist?("tasks.json")
      data = JSON.parse(File.read("tasks.json"))
      @tasks = data.map do |task|
        t = Task.new(task["title"])
        t.completed = task["completed"]
        t
      end
    else
      @tasks = []
    end
  end

  private
  def valid_index?(index)
    index >= 0 && index < @tasks.length
  end
end
# CLI Interface
todo = ToDoList.new

loop do 
  puts "\n--- TO-DO LIST MENU ---"
  puts "1. Add Task"
  puts "2. View Tasks"
  puts "3. Mark Task as Done"
  puts "4. Delete Task"
  puts "5. Exit"
  print "Choose an option: "
  choice = gets.chomp.to_i

  case choice
  when 1
    print " Enter task: "
    title = gets.chomp
    todo.add_task(title)

  when 2 
    todo.view_tasks

  when 3
    todo.view_tasks
    print "Enter task number to mark as done: "
    index = gets.chomp.to_i - 1
    todo.mark_task_done(index)

  when 4
    todo.view_tasks
    print "Enter task number to delete: "
    index = gets.chomp.to_i - 1
    todo.delete_task(index)

  when 5
    puts "Bye 👋"
    break
  else
    puts "Invalid option. Please try again. "
  end


end