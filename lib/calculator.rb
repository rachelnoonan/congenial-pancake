# Class: Calculator
# Methods: Add
# Takes two values and adds them together
class Calculator
  def add(input1, input2)
    case
      when input1.nil? || input2.nil?
        raise TypeError, 'nill input could not add please review'
      when input1.is_a?(String) || input2.is_a?(String)
        raise TypeError, "Error #{input1} : #{input2} were not valid inputs could not add please review"
      when input1.is_a?(Boolean) || input2.is_a?(Boolean)
        raise TypeError, "Error #{input1} : #{input2} were not valid inputs could not add please review"
      else
        input1 + input2
    end
  end
end