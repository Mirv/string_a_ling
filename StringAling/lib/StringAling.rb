require "StringAling/version"

module StringAling
    class BaseString 
        attr_accessor :my_punctuation
        
        def initialize
            @my_punctuation = '.'
        end
        
        # contrived example of using a class method
        def self.welcome
            "hi hi hello welcome all"
        end
    
        def greeting(punctuation = my_punctuation)
            "hi hi hello#{punctuation}"
        end
    end  
    
    class MoreString < BaseString
        def greet_animals
            "#{self.greeting} cats, dogs & other fine pets"
        end

        # contrived example of using a class method
        def self.welcome
            super
        end
        
        def greeting(punctuation = '!')
            super
        end
        
        def self.greet_aliens
            "#{welcome} the 'lings, what's the rush?"
        end
    end
end

