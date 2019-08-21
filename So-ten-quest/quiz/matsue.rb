require 'dxruby'

Window.caption = "Ruby Camp 2019"
Window.width = 900
Window.height =650

image1 = Image.load("matue.jpg")
choice1 = Font.new(44)
choice2 = Font.new(44)
clear = Font.new(44)
question = Font.new(54)

Window.loop do
  Window.drawScale(0,0,image1,1.9,2,centerx=0,centery=0)
  Window.draw_font(100,450,"A,桜",choice1,color:[255,120,0])
  Window.draw_font(600,450,"B,ぼたん",choice2,color:[255,120,0])
  Window.draw_font(150,100,"松江城は何の名所として有名？",question,color:[255,0,0])
  x = Input.mouse_pos_x
  y = Input.mouse_pos_y
  if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
    break
  elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
    break 
  end
end

