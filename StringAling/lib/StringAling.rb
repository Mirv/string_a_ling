require "StringAling/version"

module StringAling
    class Spam
        # Default ending
        def tons_of_spam(punctuation = ".")
           "Trash everywhere#{punctuation}"
        end
    end
    
    class BaseString < Spam
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
