require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test
  
  def test_it_exists
    credit_check = CreditCheck.new(5541808923795240)
    
    assert_instance_of CreditCheck, credit_check
  end
  
  def test_valid_returns_true_for_valid_card
    credit_check = CreditCheck.new(5541808923795240)
    
    assert credit_check.valid?
  end
  
  def test_valid_returns_true_for_another_valid_card
    credit_check = CreditCheck.new(4024007136512380)
    
    assert credit_check.valid?
  end
  
  def test_valid_returns_true_for_a_third_valid_card
    credit_check = CreditCheck.new(6011797668867828)
    
    assert credit_check.valid?
  end
  
  def test_valid_returns_true_for_an_amex_valid_card
    credit_check = CreditCheck.new(342804633855673)
    
    assert credit_check.valid?
  end
  
  def test_valid_returns_false_for_invalid_card
    credit_check = CreditCheck.new(5541801923795240)
    
    refute credit_check.valid?
  end
  
  def test_valid_returns_false_for_another_invalid_card
    credit_check = CreditCheck.new(4024007106512380)
    
    refute credit_check.valid?
  end
  
  def test_valid_returns_false_for_a_third_invalid_card
    credit_check = CreditCheck.new(6011797668868728)
    
    refute credit_check.valid?
  end
  
  def test_valid_returns_false_for_an_amex_invalid_card
    credit_check = CreditCheck.new(342801633855673)
    
    refute credit_check.valid?
  end
  
  def test_valid_returns_false_for_another_amex_invalid_card
    credit_check = CreditCheck.new(3428016673)
    
    refute credit_check.valid?
  end
  
end