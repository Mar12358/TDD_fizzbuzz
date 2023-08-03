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
end
