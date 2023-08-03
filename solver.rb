class Solver
  def factorial(num)
    raise ArgumentError, 'No factorial for negative numbers' if num.negative?

    if num.zero? || num == 1
      1
    elsif num > 1
      num * factorial(num - 1)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
