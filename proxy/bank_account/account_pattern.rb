require 'forwardable'
require_relative 'account'

class AccountPattern
  extend Forwardable
  def_instance_delegators :@real_object, :balance, :deposit
  def initialize(amount)
    @real_object = Account.new amount
  end

  def withdraw(amount)
    raise "Insufficient balance" if amount > balance
    @real_object.withdraw(amount)
  end
end
