require_relative 'opening/director'
require_relative 'north_west/director'
require_relative 'north_east/director'
require_relative 'south_west/director'
require_relative 'Oki/director'
require_relative 'ending/director'
require_relative 'izumo/director'
require_relative 'matsue/director'
require_relative 'miho/director'
require_relative 'yome/yome'
require_relative 'iwami/iwami'
require_relative 'adati/director'
require_relative 'aquas/director'
require_relative 'matsue/director'
require_relative 'miho/director'
require_relative 'adati/director'
require_relative 'aquas/director'
require_relative 'oki_q/director'
require_relative 'bad_end/director'


Scene.add(Opening::Director.new,  :opening)
Scene.add(North_west::Director.new,  :north_west)
Scene.add(Izumo::Director.new,  :izumo)
Scene.add(Matsue::Director.new,  :matsue)
Scene.add(Miho::Director.new,  :miho)
Scene.add(Oki_2::Director.new, :oki_2)

Scene.add(Yome::Director.new,  :yome)
Scene.add(Iwami::Director.new,  :iwami)

Scene.add(Adati::Director.new,  :adati)
Scene.add(Aquas::Director.new,  :aquas)

Scene.add(North_east::Director.new,  :north_east)
Scene.add(South_west::Director.new,  :south_west)
Scene.add(Oki::Director.new, :oki)
Scene.add(Ending::Director.new,  :ending)
Scene.add(Bad_end::Director.new, :bad_end)
