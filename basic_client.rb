#ruby basic_client.rb <bot name> <data file>

require_relative "bot.rb"

if(ARGV.empty?)
  ARGV[0] = "Unnamed Bot"
  ARGV[1] = "bot_data"
  #ARGV[2] = "test.txt"
end

bot = Bot.new(:name => ARGV[0], :data_file => ARGV[1])

##
#use this code to do automated .txt tests
#user_lines = File.readlines(ARGV[2], "r")
#puts "#{bot.name} says: " + bot.greeting
#user_lines.each do |line|
#puts "You say: " + line
#puts "#{bot.name} says:" + bot.response_to(line)
#end

puts bot.greeting

while input = $stdin.gets and input.chomp != "end"
  puts ">> " + bot.response_to(input.chomp.strip)
end

puts bot.farewell