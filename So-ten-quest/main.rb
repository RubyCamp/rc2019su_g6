require 'dxruby'

require_relative 'scene'
require_relative 'scenes/load_scenes'

Window.caption = "RubyCamp"
Window.width   = 800
Window.height  = 600

Scene.move_to(:north_west)#一番初めに表示、オープニング用

Window.loop do
  break if Input.keyPush?(K_ESCAPE)

  Scene.play
end
