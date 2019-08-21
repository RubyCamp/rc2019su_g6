class Map
  @@maps = {}

  @@current_map_name = nil

  def self.add(map_obj, map_name)
    @@maps[map_name.to_sym] = map_obj
  end


  def self.move_to(map_name)
    @@current_map_name = map_name.to_sym
  end


  def self.play
    @@maps[@@current_map_name].play
  end
end