def first_anagram?(str_1, str_2)
    angrams_1 = str_1.chars.permutation.to_a
    angrams_1.any? { |arr| arr.join("") == str_2}
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true