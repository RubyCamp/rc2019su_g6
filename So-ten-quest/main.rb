require 'dxruby'

require_relative 'map'
require_relative 'maps/load_maps'

Window.caption = "RubyCamp"
Window.width   = 800
Window.height  = 600

Map.move_to(:north_west)#ˆê”Ô‰‚ß‚É•\¦

Window.loop do
  break if Input.keyPush?(K_ESCAPE)

  Map.play
end
