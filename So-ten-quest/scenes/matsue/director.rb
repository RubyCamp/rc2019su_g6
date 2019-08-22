module Matsue
  class Director
    @@matsue_fin = false

    def initialize
      #背景画像読み込み
	  @bg_img = Image.load("images/matue.jpg")

	  #選択
	  @choice1 = Font.new(44)
      @choice2 = Font.new(44)

	  @clear = Font.new(44)
      @question = Font.new(36)
    end

	def self.matsue_fin
	  @@matsue_fin
	end

    def play
	  #背景描画
      Window.draw(0, 0, @bg_img)

	  Window.draw_font(100,450,"A,桜",@choice1,color:[255,120,0])
      Window.draw_font(600,450,"B,ぼたん",@choice2,color:[255,120,0])
      Window.draw_font(150,100,"松江城は何の名所として有名？",@question,color:[255,0,0])

      x = Input.mouse_pos_x
      y = Input.mouse_pos_y

      if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON)) && (Scene.currency_ruby_plus_one) #正解
        @@matsue_fin = true
		Scene.move_to(:north_east)
      elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON)) && (Scene.currency_ruby_stay) 
        #戻った時の座標を指定
		Scene.get(:north_east).player.x =417
	    Scene.get(:north_east).player.y =242
		Scene.move_to(:north_east)
      end
	end
  end
end
