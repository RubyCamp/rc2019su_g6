module South_west
  class Director
    def initialize
      @bg_img = Image.load("images/shimane3.png")
      @player_img = Image.load("images/man.png")
	  @iwami_img = Image.load("images/iwami_icon.png")#エラー
	  @player = Sprite.new(0,0,@player_img)
	  @iwami = Sprite.new(245,39,@iwami_img)

	  @font = Font.new(32) #デバッグ用
    end

    def play
      
	  #キーボードの上下左右で移動
	  @player.x  = @player.x+Input.x
	  @player.y  = @player.y+Input.y

	  if @player.x>=748 #画面の右端に来たら
        @player.x =748
      end
      if @player.x <= 0#画面の左端に来たら
        @player.x =0
      end
      if @player.y>=488 #画面の下端に来たら
        @player.y = 488
      end
      if @player.y <= 0 #画面の上端に来たら
       Scene.move_to(:north_west)#マップ移動
      end

	  #@iwamiにぶつかったら+入ったか確認する変数が1なら
	  if @player === @iwami
	    exit#クイズへ
	  end

	  #背景描画
      Window.draw(0, 0, @bg_img)

	  #描画
	  @iwami.draw
	  @player.draw

	  
	  Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)#デバッグ用
    end
  end
end
