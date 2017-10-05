# Given a card number, 
# Double every other number starting from index -2
  # If any doubled number is >= 10
  # split the digits and sum them
# Sum total digits
# Provide output if card is valid or invalid

class CardCalculation
  attr_reader :processed_digits
  
  def initialize(card_number)
    @card_number = card_number
    @processed_digits = []
  end
  
  def card_digits
    @card_number.digits
  end
  
  # def double_digits(digit, i)
  #   i.odd? ? digit *= 2 : digit
  #   # if i.odd?
  #   #   digit *= 2
  #   # else
  #   #   digit
  #   # end 
  # end
  
  def process_card_digits
    card_digits.each_with_index do |digit, i|
      i.odd? ? digit *= 2 : digit
      # digit = double_digits(digit, i)
      @processed_digits << digit.digits.sum
    end
  end
end

class CreditCheck
  
  def initialize(card_number)
    @card_number = card_number
    @card_calculation = CardCalculation.new(card_number)
  end
  
  def validate
    @card_calculation.process_card_digits
    valid?
  end
  
  def valid?
    if @card_calculation.processed_digits.sum % 10 == 0
      puts "Your card is valid!"
    else
      puts "Your card is invalid!"
    end
  end
  
end

CreditCheck.new(5541801923795240).validate


# valid: 5541808923795240, 4024007136512380, 6011797668867828
# invalid: 5541801923795240, 4024007106512380, 6011797668868728


