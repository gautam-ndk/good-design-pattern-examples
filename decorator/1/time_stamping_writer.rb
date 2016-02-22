class TimeStampingWriter 
  extend Forwardable

  def_instance_delegators :@real_writer, :write_line, :pos, :rewind, :close

  def initialize(real_writer)
    @real_writer = real_writer
  end

  def write_line(line)
    @real_writer.write_line("#{Time.new}: #{line}")
  end
end
