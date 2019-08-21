require 'dxruby'

Window.width = 900
Window.height = 650
font = Font.new(66)
font2 = Font.new(22)

Window.loop do
  Window.draw_font(300,300,"おしまい",font)
  Window.draw_font(600,500,"spaceキーを押して終了",font2)
  break if Input.key_push?(K_SPACE)
end
