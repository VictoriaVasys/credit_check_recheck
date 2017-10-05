require './card_calculation'

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


