
module Subject

  def initialize
    @watchers = []
  end

  def add_watcher(watcher)
    @watchers << watcher
  end

  def delete_watcher(watcher)
    @watchers.delete(watcher)
  end

  def notify_watchers
    @watchers.each do |watcher|
      watcher.update(self)
    end
  end
end
