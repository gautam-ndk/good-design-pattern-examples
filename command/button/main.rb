require_relative "button"
require_relative "show_message"

button = Button.new(label: "Click me!", action: ShowMessage )
puts button.click