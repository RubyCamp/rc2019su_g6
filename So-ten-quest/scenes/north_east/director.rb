module North_east
  class Director
    def initialize
      #背景画像読み込み
	  @bg_img = Image.load("images/shimane2.png")

	  #player画像読み込み
	  @player = Sprite.new(0,0,Image.load("images/man.png"))

	  #マップ上のアイコン読み込み
	  @matsue = Sprite.new(350,287,Image.load("icons/matue_icon.png"))
	  @miho = Sprite.new(680,100,Image.load("icons/miho_icon.png"))
	  @adati = Sprite.new(680,480,Image.load("icons/monariza_icom.png"))
	  @yome = Sprite.new(222,371,Image.load("icons/yome_icom.png"))

	  @font = Font.new(32) #デバッグ用
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
	  if @player.x>748 #画面の右端に来たら
        @player.x = 748
      end
      if @player.x < 0#画面の左端に来たら
        Scene.move_to(:north_west)#マップ移動
      end
      if @player.y>488 #画面の下端に来たら
        @player.y = 488
      end
      if @player.y < 0 #画面の上端に来たら
       @player.y = 0
      end


	  #衝突判定
	  #@matsueにぶつかったら
	  if @player === @matsue && Matsue::Director.matsue_fin == false
	    Scene.move_to(:matsue)#クイズへ
	  end
	  #@mihoにぶつかったら
	  if @player === @miho && Miho::Director.miho_fin == false
	    Scene.move_to(:miho)#クイズへ
	  end
	  #@adatiにぶつかったら
	  if @player === @adati && Adati::Director.adati_fin == false
	    Scene.move_to(:adati)#クイズへ
	  end
	  #@yomeにぶつかったら
	  if @player === @yome && Yome::Director.yome_fin == false
	    Scene.move_to(:yome)#クイズへ
	  end


	  #背景描画
      Window.draw(0, 0, @bg_img)

	  #描画
	  @miho.draw
	  @adati.draw
	  @matsue.draw
	  @yome.draw
	  @player.draw

	  #デバッグ用
	  if Input.key_push?(K_X) then
        Scene.move_to(:oki) #隠岐へ移動
      end
	  Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)
	  Window.draw_font(690, 10, "Ruby: #{Scene.currency_ruby}", @font)

	  Scene.final_move


    end
  end
end
