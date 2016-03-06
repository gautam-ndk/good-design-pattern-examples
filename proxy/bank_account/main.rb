require_relative 'account_pattern'
require_relative 'account'

account_handle = AccountPattern.new(100)

puts account_handle.balance #100

account_handle.withdraw 50
puts account_handle.balance #50

account_handle.withdraw 100 # raise exception
