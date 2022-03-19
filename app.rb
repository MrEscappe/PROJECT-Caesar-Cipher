
def caesar_cipher(phrase, number)
    result_array = []
    text = phrase.chars
    for c in text do
        code = c.ord + number
        if code > 90
            code = (code - 90) + 64
            result_array << code.chr 
        elsif code > 122
            code = (code - 122) + 96
            result_array << code.chr     
        else
            result_array << code.chr   
        end        
    end
    result_array.join("")
end

puts "What do you want to encrypt?"

string = gets.chomp

puts "Cool, now puts the number to cipher"

times = gets.chomp.to_i

p caesar_cipher(string, times)


# OLD METHODS THAT I TRY TO DO THE SAME THING

# LOW = ("a".."z")
# CAPS = ("A".."Z")

# cipher_string = []
# phrase.split("").to_a.each do |c|
#     if LOW.include? c 
#         cipher_string.join("") << LOW[(LOW.index(c) + number) % 26]
#     elsif CAPS.include? c 
#         cipher_string.join("") << CAPS[(CAPS.index(c) + number) % 26]
#     end
# end    
# p cipher_string

# ////////////////////////////////////////////////////////

# numbers = []
# new_numbers = []
# cipher = []
# new_array = phrase.split("").to_a
# new_array.each {|c| numbers << c.ord}
# numbers.each {|n| new_numbers << n + number.to_i}
# new_numbers.each {|n| cipher << n.chr}
# p cipher.join()

# ////////////////////////////////////////////////////////

# new_array = phrase.chars.map {|c| c.ord}
#     cipher = new_array.map {|c| c + number}
#     cipher.map {|c| cipher_string << c.chr}
#     cipher_string