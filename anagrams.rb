require "byebug"
def first_anagram?(str1, str2)
  return false if str1.length != str2.length
  anagram_arr = str1.split("").permutation(str1.length).to_a
                .map { |sub_array| sub_array.join("") }
  anagram_arr.include?(str2)
end



def second_anagram?(str1,str2)
  return false if str1.length != str2.length
  index = 0

  copy = str1.dup

  until str1.empty? || str2.empty? || index == copy.length
    letter = copy[index]
    if str2.include?(letter)
      str1.delete! letter
      str2.delete! letter
    end
    index += 1
  end
  str1.empty? && str2.empty?
end
#

def third_anagram?(str1,str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1,str2)
  anagrans = Hash.new(0)
  str1.each_char do | letter |
    anagrans[letter] += 1
  end
  str2.each_char do |letter2|
    anagrans[letter2] -= 1
  end
  anagrans.all? { |k, v| v == 0 }
end
p fourth_anagram?("gizmo", "sally")
p fourth_anagram?("elvis", "lives")
