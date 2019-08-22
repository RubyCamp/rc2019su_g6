module Ending
  class Director
    def initialize
      @font = Font.new(66)#インスタンス変数でないと下のメソッド外に出たら使用不可？
      @font2 = Font.new(22)
    end

    def play
      Window.draw_font(300,300,"おしまい",@font)
      Window.draw_font(530,500,"spaceキーを押して終了",@font2)
      if Input.key_push?(K_SPACE)
	    exit
	  end
    end
  end
end