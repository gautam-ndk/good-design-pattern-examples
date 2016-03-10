class CreateFile < Task
	def initialize(path, contents)
		super("Create file: #{path}")
		@path = path
		@contents = contents
	end

	def run
		f = File.open(@path, "w")
		f.write(@contents)
		f.close
	end

	def unrun
	  File.delete(@path)
  end
end

