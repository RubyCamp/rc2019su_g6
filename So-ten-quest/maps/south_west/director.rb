module South_west
  class Director
    def initialize
      @bg_img = Image.load("images/shimane3.png")
      @player_img = Image.load("images/man.png")
      @px =470#�v�ύX
      @py = 150#�v�ύX
    end

    def play
      @px = @px + Input.x
      @py = @py + Input.y

      if @px>682 #��ʂ̉E�[�ɗ�����
          @px = 682
      end

      if @py>331 #��ʂ̉��[�ɗ�����
        @px = 331
      end

      if @px < -100 #��ʂ̍��[�ɗ�����
        @px = -100
      end

      if @py < -180 #��ʂ̏�[�ɗ�����
       Map.move_to(:north_west)
      end

      Window.draw(0, 0, @bg_img)
      
      Window.draw_scale(@px, @py, @player_img, 0.2, 0.2) 
    end
  end
end
