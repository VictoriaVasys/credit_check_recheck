# Given a card number, 
# Double every other number starting from index -2
  # If any doubled number is >= 10
  # split the digits and sum them
# Sum total digits
# Provide output if card is valid or invalid

class CardProcess
  
  def initialize(card_number)
    @card_number = card_number
    @processed_digits = []
  end
  
  def card_digits
    @card_number.digits
  end
  
  def double_digits(digit, i)
    i.odd? ? digit *= 2 : digit
    # if i.odd?
    #   digit *= 2
    # end 
  end
  
  def process_card_digits
    card_digits.each_with_index do |digit, i|
      double_digits(digit, i)
      @processed_digits << digit.digits.sum
    end
  end
end

class CreditCheck
  
  def initialize(card_number)
    @card_number = card_number
  end
  
  def validate
    CardProcess.new(4024007106512380).process_card_digits
    valid?
  end
  
  def valid?
    if @processed_digits.sum % 10 == 0
      puts "Your card is valid!"
    else
      puts "Your card is invalid!"
    end
  end
  
end

CreditCheck.new(4024007106512380).validate


# valid: 5541808923795240, 4024007136512380, 6011797668867828
# invalid: 5541801923795240, 4024007106512380, 6011797668868728

