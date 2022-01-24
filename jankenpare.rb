class Player
  def self.hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    input_hand = gets.chomp
    while true
      if input_hand.include?("0") || input_hand.include?("1") || input_hand.include?("2")
        return input_hand.to_i
      else
        puts "数字を入力してください。"
        puts "0:グー, 1:チョキ, 2:パー"
        input_hand = gets.chomp
      end
    end
  end
end
class Enemy
  def self.hand
    rand(3)
  end
end
class Janken
  def self.pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です。"
    if player_hand == enemy_hand
      puts "あいこ"
    elsif
      (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      puts "あなたの勝ちです"
      false
    else
      puts "あなたの負けです"
      false
    end
  end
end
class GameStart
  def self.jankenpon
    next_game = true
    while next_game
      next_game = Janken.pon(Player.hand, Enemy.hand)
    end
  end
end
GameStart.jankenpon
      