require_relative 'composite_task'
require_relative 'create_file'
require_relative 'copy_file'
require_relative 'delete_file'

tasks = CompositeTask.new

tasks.add_task(CreateFile.new('file1.txt', "hello world\n"))
tasks.add_task(CopyFile.new('file1.txt', 'file2.txt'))
tasks.add_task(DeleteFile.new('file1.txt'))

tasks.run
tasks.unrun

# ucomment this if you want to unrun the tasks
puts tasks.description

