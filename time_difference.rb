# Phase I
def my_min_1(list)
    min = 0
    list.each_with_index do |ele1, i1|
        list.each_with_index do |ele2, i2|
            min = ele1 if ele1 < ele2 and i2 > i1 and min > ele1
        end
    end
    min
end

def my_min_2(list)
    min = list.first
    list.each_with_index do |ele, i|
        min = ele if ele < min    
    end
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min_1(list)
p my_min_2(list)

def largest_contiguous_subsum_1(list)
    subs = []     
    (0...list.length).each do |s|
        (s...list.length).each do |e|
            subs << list[s..e]
        end
    end
    sums = []
    subs.each { |arr| sums << arr.sum }
    sums.max
end


 list = [-5, -1, -3]
p largest_contiguous_subsum_1(list)


def largest_contiguous_subsum_2(list)
    all_neg = list.all? { |ele| ele < 0 }
    if all_neg
        return list.max
    else
        current_sum = 0
        largest_sum = 0
        (0..list.length-1).each do |i|  
            if current_sum + list[i] > 0
                current_sum += list[i]
            else
                current_sum = 0
            end
            largest_sum = current_sum if current_sum > largest_sum
        end
    end
    largest_sum
        
end

list1 = [-5, -1, -3] # -1
p largest_contiguous_subsum_2(list1)

list2 = [2, 3, -6, 7, -6, 7] # 8
p largest_contiguous_subsum_2(list2)

# if current sum below zero, cut losses
# each element we see, do we update sum?