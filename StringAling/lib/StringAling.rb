require "StringAling/version"

module StringAling
    class Spam
        # Default ending
        def tons_of_spam(punctuation = ".")
           return "Trash everywhere#{punctuation}"
        end
    end
    
    class BaseString < Spam
        def self.welcome
            return "hi hi hello welcome all"
        end
    
        def greeting
            return "hi hi hello"
        end
        
        # Overwrite & by default this case adds emphasis
        def tons_of_spam(emphasis = "!")
            super
        end
    end  
end
