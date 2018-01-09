require "test_helper"

class StringAlingTest < Minitest::Test
  extend StringAling
  
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
    assert_match "hi hi hello!", @greetings.greeting
  end
  
  def test_MoreString_greet_aliens
    # @greetings = StringAlingTest:StringAling::MoreString.new
    assert_match "#{StringAling::MoreString.welcome} the 'lings, what's the rush?", StringAling::MoreString.greet_aliens
  end
end
