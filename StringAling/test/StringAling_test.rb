require "test_helper"

class StringAlingTest < Minitest::Test
  extend StringAling
  def setup 
    @theClass = StringAling::BaseString.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::StringAling::VERSION
  end

  def test_class_loads
    assert @theClass.class.name, "BaseString"
  end
  
  def test_class_variable
    assert_match @theClass.my_punctuation, '.'
  end
  
  def test_string_length_increases
    @more_greetings = StringAling::MoreGreetings.new
    assert @theClass.greeting.length <  @more_greetings.greet_animals.length
  end
  
  def test_BaseString_class_method
    assert StringAling::BaseString.welcome, "hi hi hello welcome all"
  end
end


  # def test_spam_default_empahasis 
  #   assert_match /^Trash everywhere[!.?]$/, @theClass.tons_of_spam(".")
  # end
  
  # def test_spam_overwriting_empahasis 
  #   assert_match /^Trash everywhere[!.?]$/, @theClass.tons_of_spam("!")
  # end
  
  # def test_spam_default_empahasis 
  #   refute_match /[!.?]$/, @theClass.tons_of_spam("")
  # end