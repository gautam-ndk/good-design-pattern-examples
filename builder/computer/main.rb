require_relative "cpus"
require_relative "drive"
require_relative "motherboard"
require_relative "computer"
require_relative "computer_maker"

handle = ComputerMaker.new
handle.turbo
handle.display(:lcd)
handle.add_cd
handle.add_dvd(true)
handle.add_hard_disk(100000)

# manufacture 10 computers using the handle
computers = []
10.times { computers << handle.computer.clone }
computers.each { |computer| puts computer }

# computer must have at least 250 MB of memory
handle = ComputerMaker.new
handle.memory_size(249)
begin
  handle.computer
rescue Exception => e
  puts e.message
end

# computer must have at most 4 drives
handle = ComputerMaker.new
handle.add_cd
handle.add_dvd
handle.add_hard_disk(1000)
handle.add_cd
handle.add_dvd
begin
  handle.computer
rescue Exception => e
  puts e.message
end

# use magic method to rapidly make a computer
puts "Computer made with magic method handle"
handle = ComputerMaker.new
handle.add_cd_and_dvd_and_harddisk_and_turbo
computer = handle.computer
puts "CPU: #{computer.motherboard.cpu.class}"
computer.drives.each { |drive| puts "Drive: #{drive.type}" }
