module North_west
  class Director
    def initialize
      @bg_img = Image.load("images/shimane1.png")
      @player_img = Image.load("images/man.png")
      @px =470 #�v�ύX
      @py = 150#�v�ύX
    end

    def play
      @px = @px + Input.x
      @py = @py + Input.y

      if @px>610 #��ʂ̉E�[�ɗ�����
        Map.move_to(:north_east)
      end

      if @py>331 #��ʂ̉��[�ɗ�����
        Map.move_to(:south_west)
      end

      if @px < -100 #��ʂ̍��[�ɗ�����
        @px = -100
      end

      if @py < -180 #��ʂ̏�[�ɗ�����
       py = -180
      end

      Window.draw(0, 0, @bg_img)
      
      Window.draw_scale(@px, @py, @player_img, 0.2, 0.2) 
    end
  end
end
