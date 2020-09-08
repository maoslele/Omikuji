require 'date'

def main
  puts "********************"
  today = Date.today
  puts "今日は#{today.year}年#{today.month}月#{today.day}日です"
  print "運勢を占いますか？(Y/N) > "
  input
  puts "********************"
end

def input
  ans = gets.chomp
  ans = ans.upcase
  if ans == "Y"
    calc_fortune
  elsif  ans == "N"
    puts "占いを終了します"
  else
    puts "YもしくはNを選択してして下さい"
    input
  end
end

def calc_fortune
  random = Random.new
  fortune_num = random.rand(1..6)
  stars = []
  case fortune_num
  when 6
    fortune = "大吉"
    stars << "★ " * fortune_num
  when 5
    fortune = "吉"
    stars << "★ " * fortune_num
  when 4
    fortune = "中吉"
    stars << "★ " * fortune_num
  when 3
    fortune = "小吉"
    stars << "★ " * fortune_num
  when 2
    fortune = "末吉"
    stars << "★ " * fortune_num
  else
    fortune = "凶"
    stars << "★ " * fortune_num
  end
  puts "今日の運勢は#{fortune}です"
  puts stars
  show_luckystuff
end

def show_luckystuff
  lucky_item = ["折りたたみ傘", "犬", "ポップコーン", "カメラ", "メガネ", "ジンジャーエール", "消防車"]
  random = Random.new
  lucky_item_num = random.rand(0..6)
  lucky_num = random.rand(1..100)
  puts <<~TEXT
  ラッキーアイテム：#{lucky_item[lucky_item_num]}
  ラッキーナンバー：#{lucky_num}
  TEXT
end

main