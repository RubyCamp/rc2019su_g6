module Opening
    class Director
        def initialize
            @title = Font.new(64)#インスタンス変数でないと下のメソッド外に出たら使用不可？
            @small_message = Font.new(25)
        end

        def play
            #タイトル画面表示
			Window.draw_font(250, 270, "So-ten_Quest", @title)
            Window.draw_font(345, 340, "press SPACE to continue", @small_message, color:[255, 255, 0, 255])

			#キー判定
            if Input.key_push?(K_SPACE) then
                Scene.move_to(:north_west) #マップ(サンレイク)への遷移を行う
            end
        
            if Input.key_push?(K_ESCAPE) then # escキーを押すと終了する
                exit
            end
        end
    end
end
