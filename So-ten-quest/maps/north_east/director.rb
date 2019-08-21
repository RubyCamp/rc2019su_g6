module North_east
  class Director
    def initialize
      @bg_img = Image.load("images/shimane2.png")
      @player_img = Image.load("images/man.png")
	  @matsue_img = Image.load("icons/matue_icon.png")
	  @miho_img = Image.load("icons/miho_icon.png")
	  @adati_img = Image.load("icons/monariza_icom.png")
	  @player = Sprite.new(0,0,@player_img)
	  @matsue = Sprite.new(350,287,@matsue_img)
	  @miho = Sprite.new(680,100,@miho_img)
	  @adati = Sprite.new(680,480,@adati_img)
	  @font = Font.new(32) #�f�o�b�O�p
    end

    def play
	  
	  #�L�[�{�[�h�̏㉺���E�ňړ�
	  @player.x  = @player.x+Input.x
	  @player.y  = @player.y+Input.y


	  if @player.x>748 #��ʂ̉E�[�ɗ�����
        @player.x = 748
      end
      if @player.x < 0#��ʂ̍��[�ɗ�����
        Map.move_to(:north_west)#�}�b�v�ړ�
      end
      if @player.y>488 #��ʂ̉��[�ɗ�����
        @player.y = 488
      end
      if @player.y < 0 #��ʂ̏�[�ɗ�����
       @player.y = 0
      end

	  #@matsue�ɂԂ�������
	  if @player === @matsue
	    exit#�N�C�Y��
	  end
	  #@miho�ɂԂ�������
	  if @player === @miho
	    exit#�N�C�Y��
	  end
	  #@adati�ɂԂ�������
	  if @player === @adati
	    exit#�N�C�Y��
	  end

	  #�w�i�`��
      Window.draw(0, 0, @bg_img)

	  #�`��
	  @miho.draw
	  @adati.draw
	  @matsue.draw
	  @player.draw

	  
	  Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)#�f�o�b�O�p

    end
  end
end
