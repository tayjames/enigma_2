require './lib/key'
require './lib/offset'
require './lib/shift'
require './module/rotate'
require './lib/enigma'

handle = File.open(ARGV[0], "r")

incoming_message = handle.read

secret_message = Enigma.new.encrypt(incoming_message, key = nil, date = nil)

writer = File.open(ARGV[1], "w")

writer.write(secret_message[:encryption])

writer.close

p "Created '#{ARGV[1]}' with the key #{secret_message[:key]} and date #{secret_message[:date]}"
