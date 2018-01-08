require "StringAling/version"

module StringAling
    class BaseString 
        attr_accessor :my_punctuation
        
        def initialize
            @my_punctuation = '.'
        end
        
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
        
        def self.welcome
            super
        end
        
        def greeting(punctuation = '!')
            super
        end
    end
end

