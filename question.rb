class Question
  attr_reader :num1, :num2, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = num1 + num2
  end

  def ask_question
    "What does #{num1} plus #{num2} equal?"
  end

  def check_answer(input)
    input == answer
  end
end