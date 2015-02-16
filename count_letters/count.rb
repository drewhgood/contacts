def count_letters(string)

 @output = {}
 @output.default = 0

  string.downcase.split.each do |word|
   word.each_char do |character|
    @output[character] += 1
   end
  end
p @output.sort_by{ |k, v| v }.reverse
end

count_letters('LiGhtHoUse iN tHe hoUse...')