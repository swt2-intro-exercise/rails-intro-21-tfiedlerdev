class Author < ApplicationRecord
#    def initialize(first_name, last_name, homepage)
#        @first_name = first_name
#        @last_name = last_name
#        @homepage = homepage
#    end

    def name() 
        return self.first_name + " " +self.last_name
    end 
end
