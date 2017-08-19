# Class: Calculator
# Methods: Add
# Takes two values and adds them together
class Calculator
  def add(input1, input2)
    if input1.is_a?(Integer) && input2.is_a?(Integer)
      input1 + input2
    else
      raise ArgumentError, "Expected integers what i received was #{input1} : #{input2}"
    end
  end
end
