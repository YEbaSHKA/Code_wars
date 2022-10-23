def generate_shape(n)
  if n.between?(1, 50)
    i = 0
    shape = ""
    while i < n
      shape += "+"
      i += 1
    end
    result = shape
    i = 0
    while i < n - 1
      result = result + "\n" + shape
      i += 1
    end
    result
  else
    raise ArgumentError, "Argument will be in range 1 -> 50"
  end
  # best solution Array.new(5,"+"*120).join("\n")
end

def square_digits num
  i = 0
  digits = []
  while num > 0
    digits[i] = num%10
    num /= 10
    i += 1
  end
  digits.map! { |n| n*n }
  digits.reverse!
  num = digits.join.to_i
  # best solution num.digits.map { |d| d*d } .reverse.join.to_i
end

