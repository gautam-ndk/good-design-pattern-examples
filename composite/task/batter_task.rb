require_relative 'task'
require_relative 'liquid_task'
require_relative 'mix_task'
require_relative 'pattern_task'

class BatterTask < PatternTask
	def initialize
		super('Make Batter')
		@sub_tasks = []
		self.<<(LiquidTask.new)
		self.<<(MixTask.new)
	end
end

