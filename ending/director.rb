module Ending
  class Director
    def initialize
      font = Font.new(66)
      font2 = Font.new(22)
    end

    def play
      Window.draw_font(300,300,"おしまい",font)
      Window.draw_font(600,500,"spaceキーを押して終了",font2)
      break if Input.key_push?(K_SPACE)
    end
  end
end