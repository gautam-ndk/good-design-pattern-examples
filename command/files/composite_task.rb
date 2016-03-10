require_relative 'task'

class CompositeTask < Task
	def initialize
		@tasks = []
	end

	def add_task(task)
		@tasks << task
	end

	def run
		@tasks.each{|cmd| cmd.run }
	end

	def unrun
	  @tasks.reverse.each{ |cmd| cmd.unrun }
  end

	def description
		description = ''
		@tasks.each{ |cmd| description += cmd.description + "\n" }
		description
	end
end

