module Oki_2
    class Director
  
      def initialize
        #背景画像読み込み
        @bg_img = Image.load("images/oki.jpg")
  
        #選択
        @choice1 = Font.new(55)
        @choice2 = Font.new(55)
  
        @clear = Font.new(44)
        @question = Font.new(36)
      end
  
     
  
      def play
        #背景描画
        Window.draw(0, 0, @bg_img)
  
        Window.draw_font(100,400,"A,ウマ",@choice1,color:[255, 255, 255])
        Window.draw_font(560,400,"B,やぎ",@choice2,color:[255, 255, 255])
        Window.draw_font(10,200,"隠岐の名所「摩天崖」で放し飼いされている動物は？",@question,color:[255,0,0])
  
        x = Input.mouse_pos_x
        y = Input.mouse_pos_y
  
        if ((x<240 && x>100)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON)) && (Scene.currency_ruby_plus_one) #正解
          Scene.correct_sound.play
          Scene.move_to(:ending)
        elsif ((x<740 && x>600)&&(y<540 && y>400)) && (Input.mouse_down?(M_LBUTTON)) && (Scene.currency_ruby_stay)
          Scene.incorrect_sound.play
          Scene.move_to(:bad_end) 
          
        end
      end
  end
end