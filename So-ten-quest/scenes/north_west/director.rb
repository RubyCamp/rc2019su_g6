module North_west
  class Director
    def initialize
      #�w�i�摜�ǂݍ���
	  @bg_img = Image.load("images/shimane1.png")
	  #�X�^�[�g�n�_�̃}�b�v��A�C�R���ǂݍ���
	  @home_img =  Image.load("icons/home_icon.png")

	  #player�摜�ǂݍ���
      @player = Sprite.new(682,162,Image.load("images/man.png"))

	  #�}�b�v��̃A�C�R���ǂݍ���
	  @izumo = Sprite.new(473,293,Image.load("icons/izumo_icon.png"))

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
        Scene.move_to(:north_east)#�}�b�v�ړ�
      end
      if @player.x < 0#��ʂ̍��[�ɗ�����
        @player.x = 0
      end
      if @player.y>488 #��ʂ̉��[�ɗ�����
        Scene.move_to(:south_west)
      end
      if @player.y < 0 #��ʂ̏�[�ɗ�����
       @player.y = 0
      end

	  #@izummo�ɂԂ�������
	  if @player === @izumo && Izumo::Director.izumo_fin == false
	    Scene.move_to(:izumo)#�N�C�Y��
	  end

	  #�w�i�`��
      Window.draw(0, 0, @bg_img)

	  #�`��
	   Window.draw(682, 220, @home_img)#�Փ˔���Ȃ�

	  @izumo.draw
	  @player.draw

	  Scene.final_move

	  #Window.draw_font(10, 10, "px = #{@player.x} py = #{@player.y}", @font)
	  #�f�o�b�O�p
	  Window.draw_font(690, 10, "Ruby: #{Scene.currency_ruby}", @font)
      
    end
  end
end
