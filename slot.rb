def slot_game
    coin = 100
    point = 0
    coin_select = [10, 30, 50, "やめとく"]
    coin_select_result = 0
    # num1 = rand(0..9)
    # num2 = rand(0..9)
    # num3 = rand(0..9)
    # num4 = rand(0..9)
    # num5 = rand(0..9)
    # num6 = rand(0..9)
    # num7 = rand(0..9)
    # num8 = rand(0..9)
    # num9 = rand(0..9)

    # puts "残りコイン#{coin}"
    # puts "ポイント#{point}"
    # puts "何コイン入れますか？"
    # puts "0(10コイン) 1(30コイン) 2(50コイン) 3(やめとく)"
    # puts "------------------------"

    # coin_select_result = gets.to_i
    # puts "エンターを3回おしましょう！"
    # if coin - coin_select[coin_select_result] > 0
    #     next_slot = true
    # else
    #     next_slot = false
    # end

    next_slot = true

    while next_slot


        puts "残りコイン#{coin}"
        puts "ポイント#{point}"
        puts "何コイン入れますか？"
        coin_select[3] = "やめとく"
        puts "0(10コイン) 1(30コイン) 2(50コイン) 3(やめとく)"
        coin_select[3] = 0
        puts "-------------------------"

        coin_select_result = gets.to_i
        coin -= coin_select[coin_select_result]

        if coin_select_result == 3
            puts "終了します。またね！"
            break
        end

        if coin >= 0
            puts "スロットスタート！"
            next_slot = true
        # elsif coin == 0
        #     puts "コインが足りないけど、ラストボーナス！スロットスタート！"
        #     next_slot = true
        else
            puts "コインが足りませんスロットを終了します。またね！"
            next_slot = false
            slot_game = false
            break
        end


            puts "エンターを3回おしましょう！"

            num1 = rand(0..5)
            num2 = rand(0..5)
            num3 = rand(0..5)
            num4 = rand(0..5)
            num5 = rand(0..5)
            num6 = rand(0..5)
            num7 = rand(0..5)
            num8 = rand(0..5)
            num9 = rand(0..5)


            enter1 = gets
            puts "-------------------------"
            puts "|#{num1}|||"
            puts "|#{num2}|||"
            puts "|#{num3}|||"

            enter1 = gets
            puts "-------------------------"
            puts "|#{num1}|#{num4}||"
            puts "|#{num2}|#{num5}||"
            puts "|#{num3}|#{num6}||"

            enter1 = gets
            puts "-------------------------"
            puts "|#{num1}|#{num4}|#{num7}|"
            puts "|#{num2}|#{num5}|#{num8}|"
            puts "|#{num3}|#{num6}|#{num9}|"


            if num1 == num4 && num4 == num7

                puts "上の段に#{num1}が揃いました！"
                puts "#{coin_select[coin_select_result] * 10}ポイント獲得！"
                puts "#{coin_select[coin_select_result] * 2}コイン獲得！"
                point += coin_select[coin_select_result] * 10
                coin += coin_select[coin_select_result] * 2

            end

            if num2 == num5 && num5 == num8

                puts "真ん中に#{num2}が揃いました！"
                puts "#{coin_select[coin_select_result] * 10}ポイント獲得！"
                puts "#{coin_select[coin_select_result] * 2}コイン獲得！"
                point += coin_select[coin_select_result] * 10
                coin += coin_select[coin_select_result] * 2
                
            end

            if num3 == num6 && num6 == num9

                puts "上の段に#{num3}が揃いました！"
                puts "#{coin_select[coin_select_result] * 10}ポイント獲得！"
                puts "#{coin_select[coin_select_result] * 2}コイン獲得！"
                point += coin_select[coin_select_result] * 10
                coin += coin_select[coin_select_result] * 2
                
            end


    end



end

slot_game