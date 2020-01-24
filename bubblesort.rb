# This is my bubblesort algorhythm
# refactor queue: each_with index

def bubble_sort(array)
    n = 0
    original = array.dup
    array.each_with_index do |item, index|
        break if index == (array.length-1)
        p " --- Round #{index} --- "
        p "We compare #{item} with #{array[(index+1)]}"


        if item > array[(index+1)]
            p "gotcha, #{item} is bigger than #{array[(index+1)]}"
            temp = array[(index+1)]
            p "The temporary variable to save array index +1 is: #{temp} "
            array[(index+1)] = item
            p "The left item moves to the right to position +1, it's: #{array[(index+1)]} "
            array[(index)] = temp
            p "Lastly, let's check if item saved the old temp var: #{item} "
        end
        
        p array
        
    end
    p "STOPSTOPSTOPSTOP"
    p original
    p array
end

unsorted_mess = [4,3,78,2,0,2]
bubble_sort(unsorted_mess)
