require "test_helper"

class StringAlingTest < Minitest::Test
  def setup 
    @theClass = StringAling::BaseString.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::StringAling::VERSION
  end

  def test_BaseString_loads
    assert @theClass.class.name, "BaseString"
  end
  
  def test_BaseString_variable
    assert_match @theClass.my_punctuation, '.'
  end
  
  def test_BaseString_class_method
    assert StringAling::BaseString.welcome, "hi hi hello welcome all"
  end

  def test_BaseString_instance_method_defaults
    assert_match "hi hi hello#{@theClass.my_punctuation}", @theClass.greeting
  end
  
  def test_MoreString_welcome_super
    assert StringAling::MoreString.welcome, StringAling::BaseString.welcome
  end
  
  def test_MoreString_greet_animals
    @greetings = StringAling::MoreString.new
    assert @theClass.greeting.length <  @greetings.greet_animals.length
  end
  
  def test_MoreString_greeting_overwrite_punc
    @greetings = StringAling::MoreString.new
    assert @greetings.greeting, @theClass.greeting
  end
  
  
  
  
  # def test_MoreString_greet_super
  #   @greetings = StringAling::MoreString.new
  #   assert_match @greetings.greeting, @theClass.
  # end
  
end

    # @more_string = StringAling::MoreString.new
    # assert_match @theClass.my_punctuation, @more_string.my_punctuation

  # def test_string_length_increases
  #   @more_greetings = StringAling::MoreGreetings.new
  #   assert @theClass.greeting.length <  @more_greetings.greet_animals.length
  # end


  # def test_spam_default_empahasis 
  #   assert_match /^Trash everywhere[!.?]$/, @theClass.tons_of_spam(".")
  # end
  
  # def test_spam_overwriting_empahasis 
  #   assert_match /^Trash everywhere[!.?]$/, @theClass.tons_of_spam("!")
  # end
  
  # def test_spam_default_empahasis 
  #   refute_match /[!.?]$/, @theClass.tons_of_spam("")
  # end