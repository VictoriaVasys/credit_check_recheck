class CardCalculation
  attr_reader :processed_digits
  
  def initialize(card_number)
    @card_number = card_number
    @processed_digits = []
  end
  
  def card_digits
    @card_number.digits
  end
  
  def process_card_digits
    card_digits.each_with_index do |digit, i|
      i.odd? ? digit *= 2 : digit
      @processed_digits << digit.digits.sum
    end
  end
end