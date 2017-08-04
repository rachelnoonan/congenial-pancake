require 'pry'
# no main class for loading so require is at this level
class Calculator

  def self.add(input1, input2)
    if input1.is_a?(Integer) && input2.is_a?(Integer)
    input1 + input2
    else
      raise ArgumentError, "Expected integers what i received was #{input1} : #{input2}"
      end
  end

end