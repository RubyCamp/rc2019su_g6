require 'dxruby'

require_relative 'scene'
require_relative 'scenes/load_scenes'

Window.caption = "RubyCamp"
Window.width   = 800
Window.height  = 600

Scene.move_to(:north_west)#��ԏ��߂ɕ\���A�I�[�v�j���O�p

Window.loop do
  break if Input.keyPush?(K_ESCAPE)

  Scene.play
end
