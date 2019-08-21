module North_west
  class Director
    def initialize
      @bg_img = Image.load("images/shimane1.png")
      @player_img = Image.load("images/man.png")
      @px =470 #要変更
      @py = 150#要変更
    end

    def play
      @px = @px + Input.x
      @py = @py + Input.y

      if @px>610 #画面の右端に来たら
        Map.move_to(:north_east)
      end

      if @py>331 #画面の下端に来たら
        Map.move_to(:south_west)
      end

      if @px < -100 #画面の左端に来たら
        @px = -100
      end

      if @py < -180 #画面の上端に来たら
       py = -180
      end

      Window.draw(0, 0, @bg_img)
      
      Window.draw_scale(@px, @py, @player_img, 0.2, 0.2) 
    end
  end
end
