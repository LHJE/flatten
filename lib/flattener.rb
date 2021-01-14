class Flattener

  def self.ruby_flatten(array)
    new_array = []
    new_element = []
    array.each do |element|
      if element.class == Array
        until new_element[0] != Array
          new_element = ruby_flatten(element)
        end
        new_array << new_element[0]
        require "pry"; binding.pry
      else
        new_array << element
      end
    end
    new_array
  end

end
