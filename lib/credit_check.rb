require './lib/card_processor'

class CreditCheck
  
  def initialize(card_number)
    @card_number = card_number
    @processed_digits = CardProcessor.new(card_number).process_card_digits
  end
  
  def valid?
    if @processed_digits.sum % 10 == 0
      true
    else
      false
    end
  end
  
  def print_validation(validation)
    if validation
      puts "Your card is valid!"
    else
      puts "Your card is invalid!"
    end
  end
  
  def validate
    print_validation(valid?)
  end
  
end


