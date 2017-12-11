require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_processor'

class CardProcessorTest < Minitest::Test
  
  def test_it_exists
    card_processor = CardProcessor.new(5541808923795240)
    
    assert_instance_of CardProcessor, card_processor
  end
  
  def test_card_digits_returns_array_of_card_number_digits_reversed
    card_processor = CardProcessor.new(5541808923795240)
    
    assert_equal [0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5], card_processor.card_digits
  end
  
  def test_double_every_other_digit_doesnt_double_even_indexed_elements
    card_processor = CardProcessor.new(5541808923795240)
    
    assert_equal 3, card_processor.double_every_other_digit(3, 4)
  end
  
  def test_double_every_other_digit_doesnt_double_0_indexed_elements
    card_processor = CardProcessor.new(5541808923795240)
    
    assert_equal 2, card_processor.double_every_other_digit(2, 0)
  end
  
  def test_double_every_other_digit_doubles_odd_indexed_elements
    card_processor = CardProcessor.new(5541808923795240)
    
    assert_equal 8, card_processor.double_every_other_digit(4, 1)
  end
  
  def test_double_every_other_digit_doubles_large_odd_indexed_elements
    card_processor = CardProcessor.new(5541808923795240)
    
    assert_equal 18, card_processor.double_every_other_digit(9, 3)
  end
  
  def test_processs_card_digits_performs_luhn_algorithm
    card_processor = CardProcessor.new(5541808923795240)
    
    assert_equal [0, 8, 2, 1, 9, 5, 3, 4, 9, 7, 0, 7, 1, 8, 5, 1], card_processor.process_card_digits
  end
  
  def test_processs_card_digits_performs_luhn_algorithm_on_another_card_number
    card_processor = CardProcessor.new(5541801923795240)
    
    assert_equal [0, 8, 2, 1, 9, 5, 3, 4, 9, 2, 0, 7, 1, 8, 5, 1], card_processor.process_card_digits
  end
  
  def test_processs_card_digits_performs_luhn_algorithm_on_an_amex_card_number
    card_processor = CardProcessor.new(342804633855673)
    
    assert_equal [3, 5, 6, 1, 5, 7, 3, 6, 6, 8, 0, 7, 2, 8, 3], card_processor.process_card_digits
  end
  
end