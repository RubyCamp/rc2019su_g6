require 'dxruby'

Window.caption = "Ruby Camp 2019"
Window.width = 900
Window.height =650

image1 = Image.load("umi.jpg")
image2 = Image.load("ebisusama.png")
choice1 = Font.new(44)
choice2 = Font.new(44)
clear = Font.new(44)
question = Font.new(54)

Window.loop do

  Window.drawScale(0,0,image1,2,3)
  Window.draw(200,220,image2)
  Window.draw_font(100,450,"A,えびす様",choice1)
  Window.draw_font(600,450,"B,大黒様",choice2)
  Window.draw_font(150,200,"「美保神社」のご祭神は?",question,color:[255,0,0])
  x = Input.mouse_pos_x
  y = Input.mouse_pos_y
  if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
    break
  elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
    break
  end
end

