module South_west
  class Director
    def initialize
      @bg_img = Image.load("images/shimane3.png")
      @player_img = Image.load("images/man.png")
	  @player = Sprite.new(0,0,@player_img)
	  @point6 = Sprite.new(245,39,@player_img)

	  @font = Font.new(32) #�f�o�b�O�p
    end

    def play
      
	  #�L�[�{�[�h�̏㉺���E�ňړ�
	  @player.x  = @player.x+Input.x
	  @player.y  = @player.y+Input.y

	  if @player.x>=748 #��ʂ̉E�[�ɗ�����
        @player.x =748
      end
      if @player.x <= 0#��ʂ̍��[�ɗ�����
        @player.x =0
      end
      if @player.y>=488 #��ʂ̉��[�ɗ�����
        @player.y = 488
      end
      if @player.y <= 0 #��ʂ̏�[�ɗ�����
       Map.move_to(:north_west)#�}�b�v�ړ�
      end

	  #point2�ɂԂ�������
	  if @player === @point6
	    exit#�N�C�Y��
	  end

	  #�w�i�`��
      Window.draw(0, 0, @bg_img)

	  #�`��
	  @point6.draw
	  @player.draw

	  
	  Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)#�f�o�b�O�p
    end
  end
end
