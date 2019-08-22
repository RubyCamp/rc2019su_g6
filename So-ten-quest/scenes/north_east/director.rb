module North_east
  class Director
    def initialize
      #�w�i�摜�ǂݍ���
	  @bg_img = Image.load("images/shimane2.png")

	  #player�摜�ǂݍ���
	  @player = Sprite.new(0,0,Image.load("images/man.png"))

	  #�}�b�v��̃A�C�R���ǂݍ���
	  @matsue = Sprite.new(350,287,Image.load("icons/matue_icon.png"))
	  @miho = Sprite.new(680,100,Image.load("icons/miho_icon.png"))
	  @adati = Sprite.new(680,480,Image.load("icons/monariza_icom.png"))
	  @yome = Sprite.new(222,371,Image.load("icons/yome_icom.png"))

	  @font = Font.new(32) #�f�o�b�O�p
    end

	def player
	  @player
	end

	def player=(arg)
	 @player = arg
	end

    def play
	  
	  #�L�[�{�[�h�̏㉺���E�ňړ�
	  @player.x  = @player.x+Input.x
	  @player.y  = @player.y+Input.y


	  #��ʒ[�ɗ������̏���
	  if @player.x>748 #��ʂ̉E�[�ɗ�����
        @player.x = 748
      end
      if @player.x < 0#��ʂ̍��[�ɗ�����
        Scene.move_to(:north_west)#�}�b�v�ړ�
      end
      if @player.y>488 #��ʂ̉��[�ɗ�����
        @player.y = 488
      end
      if @player.y < 0 #��ʂ̏�[�ɗ�����
       @player.y = 0
      end


	  #�Փ˔���
	  #@matsue�ɂԂ�������
	  if @player === @matsue && Matsue::Director.matsue_fin == false
	    Scene.move_to(:matsue)#�N�C�Y��
	  end
	  #@miho�ɂԂ�������
	  if @player === @miho && Miho::Director.miho_fin == false
	    Scene.move_to(:miho)#�N�C�Y��
	  end
	  #@adati�ɂԂ�������
	  if @player === @adati && Adati::Director.adati_fin == false
	    Scene.move_to(:adati)#�N�C�Y��
	  end
	  #@yome�ɂԂ�������
	  if @player === @yome && Yome::Director.yome_fin == false
	    Scene.move_to(:yome)#�N�C�Y��
	  end


	  #�w�i�`��
      Window.draw(0, 0, @bg_img)

	  #�`��
	  @miho.draw
	  @adati.draw
	  @matsue.draw
	  @yome.draw
	  @player.draw

	  #�f�o�b�O�p
	  if Input.key_push?(K_X) then
        Scene.move_to(:oki) #�B��ֈړ�
      end
	  #Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)
	  Window.draw_font(690, 10, "Ruby: #{Scene.currency_ruby}", @font)

	  Scene.final_move


    end
  end
end
