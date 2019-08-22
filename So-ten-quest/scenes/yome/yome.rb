module Yome
  class Director
    @@yome_fin = false

    def initialize
      #背景画像読み込み
	  @yome_img = Image.load("images/f06697dbc1959e2cad0eb7f925e0e695_m.jpg")

	  #選択
	  @choice1 = Font.new(44)
      @choice2 = Font.new(44)

	  @clear = Font.new(44)
      @question = Font.new(36)
    end

	def self.yome_fin
	  @@yome_fin
	end

    def play
	  #背景描画
      Window.draw(0, 0, @yome_img)

      Window.draw_font(100,450,"A,船",@choice1,color:[0,100,255])
      Window.draw_font(600,450,"B,歩き",@choice2,color:[0,100,255])
      Window.draw_font(150,100,"嫁ヶ島へ渡る\nイベントの移動手段は?",@question,color:[0,0,255])
      x = Input.mouse_pos_x
      y = Input.mouse_pos_y

      if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))#正解
	#戻った時の座標を指定       
	Scene.get(:north_east).player.x =224
	Scene.get(:north_east).player.y =219
	Scene.move_to(:north_east)
      elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
	@@yome_fin = true
		Scene.move_to(:north_east)
      end
	end
  end
end
