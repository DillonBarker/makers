# def add(number_1, number_2)
#   number_1 + number_2
# end
#
# def subtract(number_1, number_2)
#   number_1 - number_2
# end
#
# def print_answer(answer)
#   "The Answer is: #{ answer }"
# end


# Separating the above calculator into classes

class Maths # Understanding doing maths
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

end

class Printer # Understands printing
  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end

