class Nama

  def print(numbers = 1..100)
    if numbers.respond_to?("each")
      output = []
      numbers.each do |number|
        output << get_result(number)
      end
    else
      output = get_result(numbers)
    end
    output
  end

  private

  def get_result(number)
    raise ArgumentError unless number > 0
    raise ArgumentError, "Somente numeros são aceitos" unless number.is_a? Integer
    if (is_divisible_by(number,5) && is_divisible_by(number,35))
      return "Nama Team"
    elsif (is_divisible_by(number,5))
      return "Nama"
    elsif (is_divisible_by(number,7))
      return "Team"
    else
      return number
    end
  end

  def is_divisible_by(number, divisor)
    number % divisor == 0
  end

end
