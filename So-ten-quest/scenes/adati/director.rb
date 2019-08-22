module Adati
  class Director
    @@adati_fin = false

    def initialize
      #背景画像読み込み
	  @bg_img = Image.load("images/adachi.jpg")

	  #選択
	  @choice1 = Font.new(44)
      @choice2 = Font.new(44)

	  @clear = Font.new(44)
      @question = Font.new(44)
    end

	def self.adati_fin
	  @@adati_fin
	end

    def play
	  #背景描画
      Window.draw(0, 0, @bg_img)

	  Window.draw_font(100,450,"A,日本庭園",@choice1,color:[255,120,0])
      Window.draw_font(500,450,"B,ガラス工芸",@choice2,color:[255,120,0])
      Window.draw_font(150,200,"足立美術館で見られるのは\n日本画と何か？",@question,color:[255,120,0])

      x = Input.mouse_pos_x
      y = Input.mouse_pos_y

      if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))#正解
        @@adati_fin = true
		Scene.move_to(:north_east)
      elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
        #戻った時の座標を指定
		Scene.get(:north_east).player.x =613
	    Scene.get(:north_east).player.y =455
		Scene.move_to(:north_east)
      end
	end
  end
end

