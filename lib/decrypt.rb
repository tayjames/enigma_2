require './lib/key'
require './lib/offset'
require './lib/shift'
require './module/rotate'
require './lib/enigma'

read_file, write_file, key, date = ARGV

secret_message = File.open(ARGV[0], "r")

decrypted_message = File.open(write_file, "w")

decryption = Enigma.new.decrypt(secret_message.read.chomp, key)

decrypted_message.write(decryption[:decryption])

puts "Created '#{ARGV[1]}' with the key #{decryption[:key]} and date #{decryption[:date]}"
