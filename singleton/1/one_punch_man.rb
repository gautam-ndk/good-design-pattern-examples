class OnePunchMan
  @@instance = nil

  def self.instance
    @@instance ||= OnePunchMan.send(:new)
  end

  private_class_method :new
end
