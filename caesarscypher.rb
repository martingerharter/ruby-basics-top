puts "Hello welcome to Caesar's Cypher"
puts "The old chap used a cryptographic method to encode his messages and letters"
puts "How? Shift each letter in the alphabet by a certain number. "
puts "What sentence do you want to encode?"

#cypher = gets.chomp
code = []

def cypher(string, shift=5)
    code = string.split(//)
    code_table =* ("a".."z")
    alphabet =* ("a".."z")

    shift.times do
        code_table.push(code_table.first)
        code_table.shift
    end

    code.each do |x|
        if /[[:upper:]]/.match(x)
            x.downcase!
            flag = true
        end

        if /[a-z]/.match(x)
            x.replace(code_table[alphabet.index(x)])
            x.upcase! if flag == true 
        end
    end
    puts code.join
end

cypher(gets.chomp)