require 'dxruby'

require_relative 'scene'
require_relative 'scenes/load_scenes'

Window.caption = "RubyCamp"
Window.width   = 800
Window.height  = 600

Scene.move_to(:opening)#オープニングへ

Window.loop do
  break if Input.keyPush?(K_ESCAPE)#escapeが押されたら終了

  Scene.play
end
