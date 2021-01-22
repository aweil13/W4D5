# O(n!)
def first_anagram?(str_1, str_2)
    angrams_1 = str_1.chars.permutation.to_a
    angrams_1.any? { |arr| arr.join("") == str_2}
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

# O(n)
def second_anagram?(str_1,str_2)
    return false  if str_1.length != str_2.length 
    (0...str_1.length).each do |i|
        if str_2.chars.find_index(str_1[i]).nil?
            return false
        else
           str_2.delete!(str_2[str_2.index(str_1[i])])
        end
    end
    str_2.empty?
       # iterate through string_1 with index
    # find index in string_2(use.find_index) and delete index if found  
    # if str_2.empty? return true

end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true


# O(n log n)
def third_anagram?(str_1, str_2)
    arr_1 = str_1.chars
    arr_2 = str_2.chars

    arr_1.sort == arr_2.sort
end


p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true


# O(n)
def fourth_anagram?(str_1, str_2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str_1.each_char { |char| hash1[char] += 1}
    str_2.each_char { |char| hash2[char] += 1}

    hash1 == hash2

end


p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true