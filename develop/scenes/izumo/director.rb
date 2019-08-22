module Izumo
  class Director
    @@izumo_fin = false

    def initialize
      #背景画像読み込み
	  @bg_img = Image.load("images/izumo.jpg")

	  #選択
	  @choice1 = Font.new(44)
      @choice2 = Font.new(44)

	  @clear = Font.new(44)
      @question = Font.new(36)
    end

	def self.izumo_fin
	  @@izumo_fin
	end



    def play
	  #背景描画
      Window.draw(0, 0, @bg_img)

	  Window.draw_font(100,400,"A,10月",@choice1,color:[255,120,0])
      Window.draw_font(600,400,"B,11月",@choice2,color:[255,120,0])
      Window.draw_font(10,200,"全国から神様が出雲大社へ集まる「神無月」とは何月？",@question,color:[255,0,0])

      x = Input.mouse_pos_x
      y = Input.mouse_pos_y

      if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))#正解
        @@izumo_fin = true
		Scene.move_to(:north_west)
      elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
        Scene.get(:north_west).player.x = 550#戻った時のx座標を指定
		Scene.move_to(:north_west)
      end
	end
  end
end