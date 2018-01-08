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
    
        def greeting
            "hi hi hello"
        end
        
        # Overwrite & by default this case adds emphasis
        def tons_of_spam(emphasis = "!")
            super
        end
    end  
    
    class MoreGreetings < BaseString
        def greet_animals
            "#{greeting} cats, dogs & other fine pets"
        end
    end
end


    # class Spam
    #     # Default ending
    #     def tons_of_spam(punctuation = ".")
    #       "Trash everywhere#{punctuation}"
    #     end
    # end