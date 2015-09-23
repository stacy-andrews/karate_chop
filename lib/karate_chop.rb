require "karate_chop/version"

module KarateChop
  def self.chop(int, array_of_int)
    if array_of_int.empty?
      return -1
    end

    middle_index = array_of_int.length/2
    middle_value = array_of_int[middle_index]

    puts "#{middle_index} - #{middle_value}"

    if middle_value == int
      return middle_index
    end

    if int < middle_value
      new_array = array_of_int.take(middle_index)

      if new_array.length == 1

        if new_array[0] === int
          return middle_index - 1
        else
          return -1
        end
      end

      puts new_array
    end

    if int > middle_value
      new_array = array_of_int.drop(middle_index)

      if new_array.length == 1
        if new_array[0] === int
          return middle_index - 1
        else
          return -1
        end
      end
    end

    check int, array_of_int, 0
  end

  def check(int, array_of_int, index)
    if array_of_int.length == 1 && array_of_int[0] === int
      return index
    end

    -1
  end

  def self.sum(n) 
    return 0 if n == 0
      
    n + sum(n - 1)
  end

  def self.min(array_of_int, length)
    item = array_of_int[0]

    
  end
end
