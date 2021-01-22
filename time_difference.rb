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


 list = [5, 3, -7]
p largest_contiguous_subsum_1(list)


def largest_contiguous_subsum_2(list)
   current_sum = 0
   largest_sum = 0
    (0..list.length-1).each |i|       # 2
        current_sum = list[0..i].sum    # [2, 3, -6, 7] = 
       largest_sum = current_sum if largest_sum < current_sum  # largest_sum = 5 
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum_2(list)