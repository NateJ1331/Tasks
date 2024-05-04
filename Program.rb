require_relative "Task"
require_relative "Display"

display = Display.new
task = Task.new

tasks = []
tasks.push(task)
display.Tasks tasks
display.menu

choice = gets.chomp

case choice
  when "1"
    puts "lets cook"
  when "2"
    puts "bruh"
  when "3"
    puts "Yeet"
  else
    puts "You gave me #{choice} -- I have no idea what to do with that."
end
