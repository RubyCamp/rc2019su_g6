module South_west
  class Director
    def initialize
      @bg_img = Image.load("images/shimane3.png")
      @player_img = Image.load("images/man.png")
      @px =470#要変更
      @py = 150#要変更
    end

    def play
      @px = @px + Input.x
      @py = @py + Input.y

      if @px>682 #画面の右端に来たら
          @px = 682
      end

      if @py>331 #画面の下端に来たら
        @px = 331
      end

      if @px < -100 #画面の左端に来たら
        @px = -100
      end

      if @py < -180 #画面の上端に来たら
       Map.move_to(:north_west)
      end

      Window.draw(0, 0, @bg_img)
      
      Window.draw_scale(@px, @py, @player_img, 0.2, 0.2) 
    end
  end
end
