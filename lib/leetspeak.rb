require('pry')
#!/user/bin/env ruby
# sentence = ''
# def title_case(title)
#   split_sentence = title.split
#   split_sentence.each do |word|
#     word.capitalize!()
#     # binding.pry
#   end
#   split_sentence.join(" ")
# end
#
# def leetspeak(sentence)
#   sentence.tr!('eE', '3')
#   sentence.tr!('oO', '0')
#   sentence.tr!('I', '1')
#   split_sentence = sentence.split
#   new_split_sentence = []
#   split_sentence.each do |word|
#     split_word = word.split("")
#     split_word.length.times do |i|
#       if (split_word[i] == 's') && (i != 0)
#         split_word[i] = 'z'
#       end
#     end
#     split_word = split_word.join("")
#     new_split_sentence.push(split_word)
#   end
#   sentence = new_split_sentence.join(" ")
#   sentence
# end


class String
  def leetspeak2
    split.map{|x| x[0] + x[1..-1].tr('s', 'z')}.join(' ').tr('eEoOI', '33001')
  end
end
p "get us a sentence to translate"
p gets.leetspeak2
