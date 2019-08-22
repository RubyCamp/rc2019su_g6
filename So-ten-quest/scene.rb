class Scene
  @@scenes = {}

  @@current_scene_name = nil

  @@currency_ruby = 0

  def self.add(scene_obj, scene_name)
    @@scenes[scene_name.to_sym] = scene_obj
  end
  #director間での値の受け渡しの設定
  def self.get(scene_name)
    @@scenes[scene_name.to_sym]
  end

  def self.move_to(scene_name)
    @@current_scene_name = scene_name.to_sym
  end
  def self.play
    @@scenes[@@current_scene_name].play
  end

  def self.currency_ruby_plus_one # クイズに正解したときルビー(お金)を一つ増やす
    @@currency_ruby += 1
  end

  def self.currency_ruby_stay # クイズに不正解だった時のメソッド
    @@currency_ruby # 何もしない
  end

  def self.currency_ruby # とってくる用のメソッド
    @@currency_ruby
  end

  def self.final_move
    if @@currency_ruby == 7 then 
      Scene.move_to(:oki)
    end
  end
end

