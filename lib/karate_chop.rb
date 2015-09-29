require "karate_chop/version"
require 'byebug'

module KarateChop
  def self.chop(int, array_of_int, start_index = 0)
    if array_of_int.empty?
      return -1
    end

    middle_index = array_of_int.length/2
    middle_value = array_of_int[middle_index]

    if middle_value == int
      return middle_index + start_index
    end

    if int < middle_value
      new_array = array_of_int.take(middle_index)

      if new_array.length == 1
        if new_array[0] === int
          return (middle_index - 1) + start_index
        else
          return -1
        end
      end

      return chop(int, new_array, start_index)
    end

    if int > middle_value
      new_array = array_of_int.drop(middle_index)

      if new_array.length == 1
        if new_array[0] === int
          return (middle_index - 1) + start_index
        else
          return -1
        end
      end

      return chop(int, new_array, middle_index)
    end

    check int, array_of_int, start_index
  end

  def check(int, array_of_int, start_index)
    if array_of_int.length == 1 && array_of_int[0] === int
      return index + start_index
    end

    -1
  end

  def self.sum(n) 
    return 0 if n == 0
      
    n + sum(n - 1)
  end

  def self.min(min_value = nil, array_of_int)
    return min_value if array_of_int.length == 0

    new_min = array_of_int[0]

    if min_value.nil? || new_min < min_value
      return min new_min, array_of_int.drop(1)
    end
    
    min min_value, array_of_int.drop(1)
  end

  def self.sum_all(array_of_int)
    return nil if array_of_int.length == 0

    return array_of_int[0] if array_of_int.length == 1

    array_of_int[0] + sum_all(array_of_int.drop(1))
  end

  def self.palindrome?(array_of_chars)
    return true if array_of_chars.length == 1    
    
    could_be = array_of_chars.first == array_of_chars.last

    if !could_be
      return false 
    else
      return true if array_of_chars.length == 2

      array_of_chars.delete_at(0)
      array_of_chars.delete_at(array_of_chars.length-1)

      return palindrome?(array_of_chars)
    end
  end
end
