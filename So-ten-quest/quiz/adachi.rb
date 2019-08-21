require 'dxruby'

Window.caption = "Ruby Camp 2019"
Window.width = 900
Window.height =650

image = Image.load("adachi.jpg")
choice1 = Font.new(44)
choice2 = Font.new(44)
clear = Font.new(44)
question = Font.new(54)

Window.loop do

  Window.drawScale(0,0,image,2.4,2)
  Window.draw_font(100,450,"A,日本庭園",choice1)
  Window.draw_font(600,450,"B,ガラス工芸",choice2)
  Window.draw_font(150,200,"足立美術館で見られるのは",question,color:[50,0,255])
  Window.draw_font(200,300,"日本画と何か？",question,color:[50,0,255])
  x = Input.mouse_pos_x
  y = Input.mouse_pos_y
  if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
    break
  elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
    break
  end
end

