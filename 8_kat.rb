def twice_as_old(dad, son)
  dad_temp = dad
  son_temp = son
  result = 0
  while son_temp >= 0
    return result, "Dad is #{dad} and Son is #{son}" if dad_temp == son_temp * 2
    result += 1
    dad_temp -= 1
    son_temp -= 1
  end
  result = 0
  dad_temp = dad
  son_temp = son
  while true
    return result, "Dad is #{dad} and Son is #{son}" if dad_temp == son_temp * 2
    result += 1
    dad_temp += 1
    son_temp += 1
  end
  # best solution (dad - son * 2).abs
end

def century(year)
  result = year%100
  if result == 0
    year/100
  else
    year/100 + 1
  end
  # best solution ( year / 100.0 ).ceil
end

def maps(x)
  for i in 0..x.size - 1
    x[i] = x[i] * 2
  end
  x
  # best solution x.map { |index| index * 2 }
end

def make_negative(num)
    -num.abs
end

def square_area(arc)
  ((2 * arc / 3.1415926535897932384626433832795)**2).round(2)
end

def basic_op(operator, value1, value2)
  if operator == '+'
    value1 + value2
  elsif operator == '-'
    value1 - value2
  elsif operator == '*'
    value1 * value2
  else operator == '/'
    value1 / value2
  end
  # best solution value1.send(operator, value2)
end

def better_than_average(arr, points)
  if arr.inject { |sum, n| sum += n } / arr.size > points
    false
  else
    true
  end
  # best solution arr.inject(:+) / arr.length < points
end

def even_or_odd(number)
  if number.even?
    "Even"
  else
    "Odd"
  end
end

def positive_sum(arr)
  sum = 0
  i = 0
  while i < arr.size
    if arr[i] > 0
      sum += arr[i]
    end
    i += 1
  end
  sum
  # best solution arr.select(&:positive?).sum
end

def solution(str)
  str.reverse!
end