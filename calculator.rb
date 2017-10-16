class RPNCalculator
  def evaluate(rpn)
    a = rpn.split(' ')
    arr = a.inject([]) do |arr, i|    
      if i =~ /\d+/ 
        arr << i.to_i
      else
        b = arr.pop(2)
        case 
          when i == "+" then arr << b[0] + b[1]  
          when i == '-' then arr << b[0] - b[1]  
          when i == '*' then arr << b[0] * b[1]  
          when i == '/' then arr << b[0] / b[1]  
        end
      end
    end
    p arr.pop
  end
end

calc = RPNCalculator.new
calc.evaluate('5 1 2 + 4 * + 3 -')   
if i=~|\d+|
arr<<i.to_i

