require 'dxruby'

Window.caption = "Ruby Camp 2019"
Window.width = 900
Window.height =650

image = Image.load("iwami.jpg")
choice1 = Font.new(44)
choice2 = Font.new(44)
clear = Font.new(44)
question = Font.new(54)

Window.loop do

  Window.draw(0,0,image)
  Window.draw_font(100,450,"A,10番目",choice1)
  Window.draw_font(600,450,"B,14番目",choice2)
  Window.draw_font(150,200,"石見銀山は日本の世界遺産の",question)
  Window.draw_font(150,300,"中で何番目に登録された?",question)
  x = Input.mouse_pos_x
  y = Input.mouse_pos_y
  if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
    break
  elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
    break
  end
end

