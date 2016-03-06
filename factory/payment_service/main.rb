require_relative 'manager'
require_relative 'user'
require_relative 'ps_pattern'

user    = User.new "John Doe" 
manager = Manager.new "The Boss"


service = PsPattern.for manager
service.pay user, 500

service = PsPattern.for user
service.pay manager, 500 # raises exception