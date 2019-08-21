module Oki
    class oki < map
       def initialize
          @bg_image = Image.load('images/shimane4/png')
          @player = Image.load('images/man.png')
          @time_count = 250
       end
       
       def play
            Window.draw(0, 0, @bg_image)
            Window.drawScale(520, 70, @player, 0.15, 0.15)
 
            @time_count -= 1
 
            if @time_count <= 100
               Window.draw_font(400, 270, "最終クイズ", Oki_message, color:[255, 255, 0, 0]) 
               if @time_count <= 0
                Window.draw_font(500, 350, "始まります", Super_message, color:[255, 255, 0, 0]) ##本来なら最終クイズに遷移するコードを書く
                #Scene.move_to(:Oki_quiz)
                #swich_to('Oki_quiz.rb')
               end
            end 
       end