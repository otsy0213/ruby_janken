win = nil  # true>>勝ち　false>>負け  nil>>あいこ

while win == nil  #  あいこの場合ループ
  
  puts "じゃんけん.."
  
  puts "出す手を選んで\n|1.グー| |2.チョキ| |3.パー|"
    myhand = gets.to_i  #手を選ぶ
    cphand = rand(1..3)  #相手の手はランダム
    
    hands = ["グー","チョキ","パー"]  #  出力用
      puts "あなた：" + hands[myhand-1]  #  getsで取得した値から1減らす。(配列は0から始まるため1つ順番がずれるためそれを調整するため)
      puts "相手：" + hands[cphand-1]  #  randで取得した値から1減らす。(上に同じく)
      puts "--------------------------"
      
    if myhand == cphand
      puts "あいこです。もう一度.."
      puts "--------------------------"
      win = nil
    
    elsif myhand == 1 && cphand == 2 || myhand == 2 && cphand == 3 || myhand == 3 && cphand == 1 
      puts "あなた：あっちむいて.."
      puts "ほい！\n|1.上||2.下||3.左||4.右|"
        myhand = gets.to_i
        cpface = rand(1..4)
        
        hands = ["上","下","左","右"]  #出力用
          puts "あなた：" + hands[myhand-1] + "!"
          puts "相手：" + hands[cpface-1]
          puts "--------------------------"
        
        if myhand == cpface
          puts "あなたの勝ち。おめでとう！"
          puts "--------------------------"
          win = true
        
        else
          win = nil
        
        end
        
    else  #自分がじゃんけんに負けた時
      puts "相手：あっちむいて.."
      puts "自分：|1.上||2.下||3.左||4.右|"
        myface = gets.to_i
        cphand = rand(1..4)
        
        faces = ["上","下","左","右"]  #出力用
           puts "あなた：" + faces[myface-1] + "!"
           puts "相手：" + faces[cphand-1]
           puts "--------------------------"
          
          if myface == cphand
            puts "負けました。どんまい！"
            puts "--------------------------"
            win = false
            
          else
            win = nil
            
          end
    end
end