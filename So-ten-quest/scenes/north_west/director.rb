module North_west
  class Director
    def initialize
      #背景画像読み込み
	  @bg_img = Image.load("images/shimane1.png")
	  #スタート地点のマップ上アイコン読み込み
	  @home_img =  Image.load("icons/home_icon.png")

	  #player画像読み込み
      @player = Sprite.new(682,162,Image.load("images/man.png"))

	  #マップ上のアイコン読み込み
	  @izumo = Sprite.new(473,293,Image.load("icons/izumo_icon.png"))

	  @font = Font.new(32) #デバッグ用
    end

    def play
      
	  #キーボードの上下左右で移動
	  @player.x  = @player.x+Input.x
	  @player.y  = @player.y+Input.y


	  #画面端に来た時の処理
	  if @player.x>748 #画面の右端に来たら
        Scene.move_to(:north_east)#マップ移動
      end
      if @player.x < 0#画面の左端に来たら
        @player.x = 0
      end
      if @player.y>488 #画面の下端に来たら
        Scene.move_to(:south_west)
      end
      if @player.y < 0 #画面の上端に来たら
       @player.y = 0
      end

	  #@izummoにぶつかったら
	  if @player === @izumo
	    exit#クイズへ
	  end

	  #背景描画
      Window.draw(0, 0, @bg_img)

	  #描画
	   Window.draw(682, 220, @home_img)#衝突判定なし

	  @izumo.draw
	  @player.draw

	  
	  Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)#デバッグ用
      
    end
  end
end
