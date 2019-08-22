module South_west
  class Director
    def initialize
      #�w�i�摜�ǂݍ���
	  @bg_img = Image.load("images/shimane3.png")

	  #player�摜�ǂݍ���
	  @player = Sprite.new(0,0,Image.load("images/man.png"))

	  #�}�b�v��̃A�C�R���ǂݍ���
	  @iwami = Sprite.new(245,39,Image.load("icons/iwami_icon.png"))
	  @aquas = Sprite.new(100,100,Image.load("icons/shark_icon.png"))

	  @font = Font.new(32) #�f�o�b�O�p
    end
	def player
		@player
	end

	def player=(arg)
	@player = arg
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
       Scene.move_to(:north_west)#�}�b�v�ړ�
      end


	  #�Փ˔���
	  #@iwami�ɂԂ�������+���������m�F����ϐ�(��Œǉ�)���C�`�Ȃ�
	  if @player === @iwami && Iwami::Director.iwami_fin == false
	    Scene.move_to(:iwami)#�N�C�Y��
	  end
	  #@aquas�ɂԂ�������
	  if @player === @aquas && Aquas::Director.aquas_fin == false
	    Scene.move_to(:aquas)#�N�C�Y��
	  end


	  #�w�i�`��
      Window.draw(0, 0, @bg_img)

	  #�}�b�v��̂��̂�`��
	  @iwami.draw
	  @aquas.draw
	  @player.draw

	  
	  #Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)
	  #�f�o�b�O�p
	  Window.draw_font(690, 10, "Ruby: #{Scene.currency_ruby}", @font)

	  Scene.final_move

    end
  end
end