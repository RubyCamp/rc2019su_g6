module Iwami
  class Director
    @@iwami_fin = false

    def initialize
      #背景画像読み込み
	@iwami_img = Image.load("images/iwami.jpg")

	  #選択
	  @choice1 = Font.new(44)
      @choice2 = Font.new(44)

	  @clear = Font.new(44)
      @question = Font.new(36)
    end

	def self.iwami_fin
	  @@iwami_fin
	end

    def play
	  #背景描画
      Window.draw(0, 0, @iwami_img)

      Window.draw_font(100,450,"A,10番目",@choice1,color:[0,100,255])
      Window.draw_font(600,450,"B,14番目",@choice2,color:[0,100,255])
      Window.draw_font(150,100,"石見銀山は日本の世界遺産の\n中で何番目に登録された?",@question,color:[0,0,255])
      x = Input.mouse_pos_x
      y = Input.mouse_pos_y

      if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON)) && (Scene.currency_ruby_stay) #正解
	#戻った時の座標を指定       
	Scene.get(:south_west).player.x =250
	Scene.get(:south_west).player.y =113
	Scene.move_to(:south_west)
      elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON)) && (Scene.currency_ruby_plus_one) 
	@@iwami_fin = true
		Scene.move_to(:south_west)
      end
	end
  end
end
