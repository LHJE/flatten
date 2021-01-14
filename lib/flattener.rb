class Flattener

  def self.ruby_flatten(array)
    new_array = []
    array.each do |element|
      if element.class == Array
        if element[0].class == Array
          new_array << ruby_flatten(element)
        else
          new_array << element[0]
        end
        # require "pry"; binding.pry
      else
        new_array << element
      end
    end
    new_array
  end

end
