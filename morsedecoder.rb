def decodeBits(bits)
  i=1  
  until bits.include?("1"+"0"*(3*i)+"1")
    i+=1
  end
  bits.gsub!(/0{#{7*i}}/, " SPC ")
  bits.gsub!(/0{#{3*i}}/, " ")
  bits.gsub!(/1{#{3*i}}/, "-")
  bits.gsub!(/1{#{i}}/, ".")
  bits.gsub!(/0{#{i}}/, "")
  
  bits
end

def decodeMorse(morseCode)
  morseCode.split(" ").map {|c| c=="SPC" ? " " : MORSE_CODE[c]}.join("")
end

p decodeBits("1100110011001100000011000000111111001100111111001111110000000000000011001111110011111100111111000000110011001111110000001111110011001100000011")