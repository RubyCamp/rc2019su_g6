module Aquas
  class Director
    @@aquas_fin = false

    def initialize
      #背景画像読み込み
	  @bg_img = Image.load("images/aquas.jpg")

	  #選択
	  @choice1 = Font.new(44)
      @choice2 = Font.new(44)

	  @clear = Font.new(44)
      @question = Font.new(36)
    end

	def self.aquas_fin
	  @@aquas_fin
	end

    def play
	  #背景描画
      Window.draw(0, 0, @bg_img)

	  Window.draw_font(100,450,"A,カニ",@choice1,color:[255,0,0])
      Window.draw_font(500,450,"B,シロイルカ",@choice2,color:[255,0,0])
      Window.draw_font(150,100,"アクアスで有名な\nバブルリングができる生き物は？",@question,color:[255,0,0])

      x = Input.mouse_pos_x
      y = Input.mouse_pos_y

      if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON)) && (Scene.currency_ruby_stay) 
        #不正解
		Scene.incorrect_sound.play
		#戻った時の座標を指定
		Scene.get(:south_west).player.x =100
	    Scene.get(:south_west).player.y =200
		Scene.move_to(:south_west)
      elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON)) && (Scene.currency_ruby_plus_one)
         #正解
		@@aquas_fin = true
		Scene.correct_sound.play
		Scene.move_to(:south_west)
      end
	end
  end
end



