def caesar_cipher(string,shift)
	string.each_char.with_index do |c,i|
		if string[i] != "\s"
			string[i] = (c.ord + shift).chr
		end
	end
	puts string
end

def encode
	puts "Enter the message to encode: "
	message = STDIN.gets.chomp
	puts "Enter the shift encoding: "
	shift = STDIN.gets.chomp
	shift_numb = shift.to_i
	caesar_cipher(message,shift_numb)
end 

encode()