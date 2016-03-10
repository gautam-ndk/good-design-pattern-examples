require 'fileutils'

class CopyFile < Task
	def initialize(source, target)
		super("Copy file: #{source} to #{target}")
		@source = source
		@target = target
	end

	def run
		FileUtils.copy(@source, @target)
	end

	def unrun
    File.delete(@target)
  end
end

