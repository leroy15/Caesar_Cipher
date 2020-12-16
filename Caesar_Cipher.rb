
def Caesar_Cipher(message,shift)
  
  klein_buchstaben = ("a".."z").to_a 
  groß_buchstaben = ("A".."Z").to_a   
  message = message.chars 
  
  message.each.with_index do |letter, idx|
    if klein_buchstaben.include?(letter) 
      message[idx]= klein_buchstaben[(klein_buchstaben.index(letter)+shift)%26] 
      print message[idx] 
    elsif groß_buchstaben.include?(letter) 
      message[idx]= groß_buchstaben[(groß_buchstaben.index(letter)+shift)%26] 
      print message[idx] 
    else 
      print letter 
    end
  end
end

puts "Which message do you want to encrypt?"
message = gets.chomp
puts "By how many characters should your message be moved?"
shift = gets.chomp.to_i 

Caesar_Cipher(message,shift)