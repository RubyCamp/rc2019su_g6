require 'dxruby'

require_relative 'map'
require_relative 'maps/load_maps'

Window.caption = "RubyCamp"
Window.width   = 800
Window.height  = 600

Map.move_to(:north_west)#一番初めに表示

Window.loop do
  break if Input.keyPush?(K_ESCAPE)

  Map.play
end
