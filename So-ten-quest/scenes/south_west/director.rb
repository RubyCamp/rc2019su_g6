module South_west
  class Director
    def initialize
      #背景画像読み込み
	  @bg_img = Image.load("images/shimane3.png")

	  #player画像読み込み
	  @player = Sprite.new(0,0,Image.load("images/man.png"))

	  #マップ上のアイコン読み込み
	  @iwami = Sprite.new(245,39,Image.load("icons/iwami_icon.png"))
	  @aquas = Sprite.new(100,100,Image.load("icons/shark_icon.png"))

	  @font = Font.new(32) #デバッグ用
    end
	def player
		@player
	end

	def player=(arg)
	@player = arg
	end

	def player
	  @player
	end

	def player=(arg)
	 @player = arg
	end

    def play
	  #キーボードの上下左右で移動
	  @player.x  = @player.x+Input.x
	  @player.y  = @player.y+Input.y


	  #画面端に来た時の処理
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


	  #衝突判定
	  #@iwamiにぶつかったら+入ったか確認する変数(後で追加)が，～なら
	  if @player === @iwami && Iwami::Director.iwami_fin == false
	    Scene.move_to(:iwami)#クイズへ
	  end
	  #@aquasにぶつかったら
	  if @player === @aquas && Aquas::Director.aquas_fin == false
	    Scene.move_to(:aquas)#クイズへ
	  end


	  #背景描画
      Window.draw(0, 0, @bg_img)

	  #マップ上のものを描画
	  @iwami.draw
	  @aquas.draw
	  @player.draw

	  
	  Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)#デバッグ用
	  Window.draw_font(690, 10, "Ruby: #{Scene.currency_ruby}", @font)

	  Scene.final_move

    end
  end
end