require_relative 'batter_task'

main_task = BatterTask.new
puts "The main task will take #{main_task.get_time_required} minutes"