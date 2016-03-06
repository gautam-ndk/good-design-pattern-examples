require_relative 'version_control_pattern'
# vcs can be either git or svn
vcs = 'git'
version_control = VersionControlPattern.create_version_control(vcs)
version_control.clone