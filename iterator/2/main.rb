require_relative 'array_guess_pattern'

i = ArrayGuessPattern.new(['red', 'green', 'blue'])
while i.has_next?
  puts "item: #{i.next_item}"
end

i = ArrayGuessPattern.new('abc')
while i.has_next?
  puts("item: #{i.next_item}")
end
