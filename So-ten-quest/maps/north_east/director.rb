module North_east
  class Director
    def initialize
      @bg_img = Image.load("images/shimane2.png")
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
      if @px < -120
         Map.move_to(:north_west)#��ʂ̍��[�ɗ�����
      end
      if @py>331 #��ʂ̉��[�ɗ�����
        @px = 331
      end
      if @py < -180 #��ʂ̏�[�ɗ�����
       py = -180
      end
      Window.draw(0, 0, @bg_img)
      
      Window.draw_scale(@px, @py, @player_img, 0.2, 0.2) 
    end
  end
end
