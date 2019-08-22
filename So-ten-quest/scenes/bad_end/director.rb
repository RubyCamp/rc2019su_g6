module Bad_end
    class Director
      def initialize
        @font = Font.new(66)
        @font2 = Font.new(28)
        @font3 = Font.new(38)
        @font4 = Font.new(22)
      end
  
      def play
        Window.draw_font(100,300,"残念でしたね。", @font)
        Window.draw_font(100,400,"お疲れさまでした", @font2)
        Window.draw_font(380,220,"またチャレンジしてください", @font3)


        Window.draw_font(500,500,"spaceキーを押して終了", @font4)
        if Input.key_push?(K_SPACE)
          exit
        end
      end
    end
  end