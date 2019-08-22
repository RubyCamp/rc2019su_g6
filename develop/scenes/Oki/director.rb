module Oki
    class Director
       def initialize
          @bg_image = Image.load('images/shimane4.png')
          @player = Image.load('images/man.png')
          #@time_count = 250
       end
       
       def play
            Window.draw(0, 0, @bg_image)
            Window.draw(520, 70, @player)
            
			#デバッグ用
			if Input.key_push?(K_X) then
             Scene.move_to(:ending) #エンディングへ移動
            end
            #@time_count -= 1
 
            #if @time_count <= 100
               #Window.draw_font(400, 270, "最終クイズ", Oki_message, color:[255, 255, 0, 0]) 
               #if @time_count <= 0
                #Window.draw_font(500, 350, "始まります", Super_message, color:[255, 255, 0, 0]) ##本来なら最終クイズに遷移するコードを書く
                #Scene.move_to(:)#デバッグ用
                #swich_to('Oki_quiz.rb')
               #end
            #end 
       end
      end
end