require_relative 'git_version_control'
require_relative 'svn_version_control'

class VersionControlPattern
  def self.create_version_control(type)
    case type
    when 'git'
      return GitVersionControl.new
    when 'svn'
      return SvnVersionControl.new
    else
      return #Can return a NullObject here.
    end
  end
end