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
  case fortune_num
  when 1
    fortune = "大吉"
  when 2
    fortune = "吉"
  when 3
    fortune = "中吉"
  when 4
    fortune = "小吉"
  when 5
    fortune = "末吉"
  else
    fortune = "凶"
  end
  puts "今日の運勢は#{fortune}です"
end

main