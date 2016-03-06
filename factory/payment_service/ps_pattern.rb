require_relative 'manager_ps'
require_relative 'user_ps'

class PsPattern
  def self.for user
    if user.is_a? User
      return UserPs.new
    elsif user.is_a? Manager
      return ManagerPs.new
    end
  end
end