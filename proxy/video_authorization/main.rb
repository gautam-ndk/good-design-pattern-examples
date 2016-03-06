require_relative 'video'
require_relative 'video_auth'

video   = Video.new "Welcome to Earth", "Talks about the importance of earth"
handle  = VideoAuth.new video, "Authenticated user"
handle.play


handle  = VideoAuth.new video
handle.play #raises exception
