require 'dxruby'

Window.caption = "Ruby Camp 2019"
Window.width = 900
Window.height =650

image = Image.load("izumo.jpg")
choice1 = Font.new(44)
choice2 = Font.new(44)
clear = Font.new(44)
question = Font.new(36)

Window.loop do
  Window.drawScale(0,0,image,0.5,0.6,centerx=0,centery=0)
  Window.draw_font(100,400,"A,10月",choice1)
  Window.draw_font(600,400,"B,11月",choice2)
  Window.draw_font(10,200,"全国から神様が出雲大社へ集まる「神無月」とは何月？",question,color:[255,0,0])

  x = Input.mouse_pos_x
  y = Input.mouse_pos_y

  if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
    break
  elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON))
    break
  end
end
