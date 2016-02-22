require_relative 'simple_writer'

require_relative 'numbering_writer'
require_relative 'time_stamping_writer'


file_path = '/tmp/final.txt'
writer = TimeStampingWriter.new(NumberingWriter.new(SimpleWriter.new(file_path)))
writer.write_line('Hello out there')
writer.close

puts File.read(file_path)
