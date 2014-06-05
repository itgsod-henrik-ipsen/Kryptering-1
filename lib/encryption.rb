def encrypt(input, offset)
    raise ArgumentError, 'String must not be empty' if input == ''
    raise ArgumentError, 'Offset must not be zero' if offset == 0
    alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

    input = input.upcase

    output = ''

    input.each_char do |char|

        i = alphabet.index(char)
        new_i = i
        new_i += offset
        value = alphabet[new_i]
        output += value


    end
    return output

end
p encrypt('fail', 5)




