require 'csv'
while 1 == 1 do
  puts "1:メモの新規作成,2:ファイルの編集,3:終了"
  mode = gets.to_i
  case mode 
  when 1
    puts "ファイル名を入力して下さい"
    file_name = gets.chomp
    puts "内容を記述して下さい(control + dで終了)"
    input = readlines
    memo = input
    CSV.open("#{file_name}.csv",'w') do |csv|
    csv.puts ["#{memo}"]
    end
  when 2
    puts "ファイル名を入力して下さい"
    file_name = gets.chomp
    puts "内容を記述して下さい(control + dで終了)"
    input = readlines
    memo = input
    CSV.open("#{file_name}.csv",'a') do |csv|
    csv.puts ["#{memo}"]
    end
  when 3 
    break
  end
end