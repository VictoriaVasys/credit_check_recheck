class CardProcessor
  
  def initialize(card_number)
    @card_number = card_number
  end
  
  def card_digits
    @card_number.digits
  end
  
  def double_every_other_digit(digit, index)
    if index.odd?
      digit * 2
    else
      digit
    end
  end
  
  def reduce_digits(doubled_digit)
    doubled_digit.digits.sum
  end
  
  def process_card_digits
    card_digits.map.with_index do |digit, index|
      reduce_digits(double_every_other_digit(digit, index))
    end
  end
  
  # def process_card_digits
  #   card_digits.map.with_index do |digit, index|
  #     require("pry"); binding.pry
  #     if index.odd?
  #       digit *= 2
  #     else
  #       digit
  #     end
  #     digit.digits.sum
  #   end
  # end
  # 
  # def validate
  #   if process_card_digits.sum % 10 == 0
  #     puts "Your card is valid!"
  #   else
  #     puts "Your card is invalid!"
  #   end
  # end
  
  
  
end