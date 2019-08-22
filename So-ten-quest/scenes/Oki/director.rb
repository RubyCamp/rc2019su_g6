module Oki
    class Director
       def initialize
          @bg_image = Image.load('images/shimane4.png')
          @image = Image.load('images/devil.png')
          @player = Image.load('images/man.png')
          @time_count = 300
          @font = Font.new(58)
          @font_r = Font.new(32)
          
       end
       
       def play
            Window.draw(0, 0, @bg_image)
            Window.draw(520, 70, @player)
            Window.draw(300, 40, @image)

            Window.draw_font(690, 10, "Ruby: #{Scene.currency_ruby}", @font_r)
            
			#デバッグ用
			if Input.key_push?(K_X) then
             Scene.move_to(:ending) #エンディングへ移動
            end
            @time_count -= 1

            if @time_count <= 120
               Window.draw_font(280, 270, "最終クイズ", @font,color:[255, 255, 0, 0]) 
               if @time_count <= 0
                Scene.move_to(:oki_2)
               end
            end 
       end
      end
end