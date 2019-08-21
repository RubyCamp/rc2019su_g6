module North_west
  class Director
    def initialize
      @bg_img = Image.load("images/shimane1.png")
	  @home_img =  Image.load("icons/home_icon.png")
      @player_img = Image.load("images/man.png")
	  @izumo_img = Image.load("icons/izumo_icon.png")
      @player = Sprite.new(682,162,@player_img)
	  @izumo = Sprite.new(473,293,@izumo_img)
	  @font = Font.new(32) #�f�o�b�O�p
    end

    def play
      
	  #�L�[�{�[�h�̏㉺���E�ňړ�
	  @player.x  = @player.x+Input.x
	  @player.y  = @player.y+Input.y

	  if @player.x>748 #��ʂ̉E�[�ɗ�����
        Map.move_to(:north_east)#�}�b�v�ړ�
      end
      if @player.x < 0#��ʂ̍��[�ɗ�����
        @player.x = 0
      end
      if @player.y>488 #��ʂ̉��[�ɗ�����
        Map.move_to(:south_west)
      end
      if @player.y < 0 #��ʂ̏�[�ɗ�����
       @player.y = 0
      end

	  #point2�ɂԂ�������
	  if @player === @izumo
	    exit#�N�C�Y��
	  end

	  #�w�i�`��
      Window.draw(0, 0, @bg_img)

	  #�`��
	   Window.draw(682, 220, @home_img)

	  @izumo.draw
	  @player.draw

	  
	  Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)#�f�o�b�O�p
      
    end
  end
end
