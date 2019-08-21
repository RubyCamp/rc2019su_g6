module North_east
  class Director
    def initialize
      @bg_img = Image.load("images/shimane2.png")
      @player_img = Image.load("images/man.png")
	  @matsue_img = Image.load("icons/matue_icon.png")
	  @miho_img = Image.load("icons/miho_icon.png")
	  @adati_img = Image.load("icons/monariza_icom.png")
	  @player = Sprite.new(0,0,@player_img)
	  @matsue = Sprite.new(350,287,@matsue_img)
	  @miho = Sprite.new(680,100,@miho_img)
	  @adati = Sprite.new(680,480,@adati_img)
	  @font = Font.new(32) #デバッグ用
    end

    def play
	  
	  #キーボードの上下左右で移動
	  @player.x  = @player.x+Input.x
	  @player.y  = @player.y+Input.y


	  if @player.x>748 #画面の右端に来たら
        @player.x = 748
      end
      if @player.x < 0#画面の左端に来たら
        Map.move_to(:north_west)#マップ移動
      end
      if @player.y>488 #画面の下端に来たら
        @player.y = 488
      end
      if @player.y < 0 #画面の上端に来たら
       @player.y = 0
      end

	  #@matsueにぶつかったら
	  if @player === @matsue
	    exit#クイズへ
	  end
	  #@mihoにぶつかったら
	  if @player === @miho
	    exit#クイズへ
	  end
	  #@adatiにぶつかったら
	  if @player === @adati
	    exit#クイズへ
	  end

	  #背景描画
      Window.draw(0, 0, @bg_img)

	  #描画
	  @miho.draw
	  @adati.draw
	  @matsue.draw
	  @player.draw

	  
	  Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)#デバッグ用

    end
  end
end
